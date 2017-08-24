/*
**  Author  : Saeed Hassanpour 
**  Company : Parto Pardazesh Fartak(IRANAPEX)- http://iranapex.ir
**  Date    : 2017/06
**  Version : 1.0
*/
procedure modal_render_ig (
    p_item                IN apex_plugin.t_item,
    p_plugin              IN apex_plugin.t_plugin,
    p_param               IN apex_plugin.t_item_render_param,
    p_result              IN OUT nocopy apex_plugin.t_item_render_result)   
AS
    
    p_modal_lov_cascade     p_item.attribute_10%type:= p_item.attribute_10;


    l_modal_not_enterable          CONSTANT VARCHAR2(30) := 'NOT_ENTERABLE';
    l_modal_enterable_unrestricted CONSTANT VARCHAR2(30) := 'ENTERABLE_UNRESTRICTED';
    l_modal_enterable_restricted   CONSTANT VARCHAR2(30) := 'ENTERABLE_RESTRICTED';
    l_modal_enterable              VARCHAR2(30)  := COALESCE(p_item.attribute_11, l_modal_not_enterable);
    l_modal_lAjaxIdentifier        VARCHAR2(500) := apex_plugin.get_ajax_identifier;

    l_page_item_name VARCHAR2(100);
    l_html VARCHAR2(32000);
    l_values$ VARCHAR2(1000);  
    l_init_modal_lov VARCHAR2(32000);
   
    l_readonly  VARCHAR2(500);
    l_modal_url VARCHAR2(4000);
    l_modal_lov_url VARCHAR2(4000);
    
    v_item_attrib VARCHAR2(9000);
    
    l_columns_name  VARCHAR2(100);
    l_ig_region    VARCHAR2(100);
    
    l_item_id      constant varchar2(255)  := apex_escape.html_attribute(p_item.id);
    
    
    l_str      Varchar2(4000);
    l_temp     Varchar2(4000);
    i          PLS_INTEGER;
    l_values   Varchar2(4000);

BEGIN
 
    -- Load the JavaScript library   
    apex_javascript.add_library 
    ( p_name      => 'modallovig.min'
    , p_directory => p_plugin.file_prefix
    );
    -- Load the CSS
    apex_css.add_file (
      p_name => 'modallovig'
    , p_directory => p_plugin.file_prefix);
  
    /********* Retreiving data which uesd in cascade**********/
     l_page_item_name := apex_plugin.get_input_name_for_page_item (p_is_multi_value => FALSE);
    --get name of current IG region
    select  REGION_NAME
    into    l_ig_region
    from    APEX_APPL_PAGE_IG_COLUMNS
    where   APPLICATION_ID = :APP_ID
    and     PAGE_ID = :APP_PAGE_ID
    and     COLUMN_ID = to_number(l_page_item_name);
    --get id of cascade items
    if  (p_modal_lov_cascade is not null) then
        BEGIN
            i:=1;
            l_str    := p_modal_lov_cascade;
            l_values :='';
            l_temp   :='';

            Loop
                l_temp := regexp_substr(l_str,'[^,]+', 1,i);
                Exit When l_temp Is Null;
                select to_char(COLUMN_ID)
                into   l_columns_name
                from  APEX_APPL_PAGE_IG_COLUMNS
                where APPLICATION_ID = :APP_ID
                and   PAGE_ID = :APP_PAGE_ID
                and   REGION_NAME = l_ig_region
                and   NAME = l_temp;   
                
                l_values := l_values ||','||''||l_columns_name||'';
                i := i + 1;
                l_temp := Null;
            End Loop;
            
            l_columns_name := ltrim(l_values,',');
        Exception When Others Then
           l_columns_name := '';

        END;
    end if;
    
    --initial values
    l_init_modal_lov := '{'||
                     apex_javascript.add_attribute('igName',l_ig_region)||
                     apex_javascript.add_attribute('itemID',to_char(l_page_item_name))||
                     apex_javascript.add_attribute('itemName',p_item.session_state_name)||
                     apex_javascript.add_attribute('cascadeCols', l_columns_name, false, false)||
                     '}';
    
    apex_javascript.add_onload_code (
                                     p_code => 'openMLovIG._init_event_modallov('''||l_init_modal_lov||''',"'||l_modal_lAjaxIdentifier||'");'
                                    );        
    /******************************************************/
                           
    if l_modal_enterable = l_modal_not_enterable THEN
        l_readonly := ' readonly="readonly" ';
    else
        l_readonly := '';
    end if;
     
    v_item_attrib := p_item.element_attributes;
    htp.p(
           '<input type="text" 
                      id="'||p_item.name||'"                      
                      name="'||l_page_item_name||'" 
                      data-id ="'||p_item.session_state_name||'"
                      class="popup_lov apex-item-text apex-item-popup-lov js-ignoreChange ig-modal-lov modal-display-value" 
                      size="'||p_item.element_width||'" 
                      maxlength="'||p_item.element_max_length||'" '|| 
                      v_item_attrib||' '||l_readonly||' >'
        );
        
    --Open button
    htp.p('<button class="a-Button a-Button--popupLOV  ig-lov-open"  type="button" >
           <span class="icon-dialog-lov fa fa-caret-square-o-up"><span class="visuallyhidden">Modal Lov of Values: Deptno</span>');
    htp.p('</button>');
    --Clear button
    htp.p('<button class="a-Button a-Button--popupLOV ig-lov-clear" id="'||p_item.name||'_'||p_item.session_state_name||'" type="button" title="Clear" >
       <span class="a-Icon icon-remove"></span>');
    htp.p('<span class="visuallyhidden ig-iaxmodal-lov" aria-hidden="true">'||l_modal_lAjaxIdentifier||'</span></button>');         
        
end modal_render_ig;

