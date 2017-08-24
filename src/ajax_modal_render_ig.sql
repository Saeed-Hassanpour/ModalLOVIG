--Ajax Procedure
procedure ajax_modal_render_ig (
    p_item   in            apex_plugin.t_item,
    p_plugin in            apex_plugin.t_plugin,
    p_param  in            apex_plugin.t_item_ajax_param,
    p_result in out nocopy apex_plugin.t_item_ajax_result)
AS
      
    p_modal_lov_type      p_item.attribute_01%type:= p_item.attribute_01; 
    p_modal_page_link     p_item.attribute_02%type:= p_item.attribute_02; 
    p_modal_lov_url       p_item.attribute_03%type:= p_item.attribute_03; 
    p_modal_lov_chekcsum  p_item.attribute_04%type:= p_item.attribute_04;
    p_modal_lov_items     p_item.attribute_05%type:= apex_escape.html_attribute(p_item.attribute_05);
    p_modal_lov_values    p_item.attribute_06%type:= p_item.attribute_06;
    p_modal_lov_request   p_item.attribute_07%type:= p_item.attribute_07;
    p_modal_lov_htexp     p_item.attribute_08%type:=sys.htf.escape_sc(p_item.attribute_08);
    p_modal_column_map    p_item.attribute_09%type:= sys.htf.escape_sc(p_item.attribute_09);
    p_modal_lov_cascade   p_item.attribute_10%type:= p_item.attribute_10;
     
    
    
    l_modal_param        apex_application.g_x01%type := apex_application.g_x01;
    l_regionID           apex_application.g_x02%type := apex_application.g_x02;

    l_url                VARCHAR2(32000);
    l_modal_lov_url      VARCHAR2(32000);
    l_values$            VARCHAR2(1000);  
    l_modal_url          VARCHAR2(4000);
    l_modal_lov_values   VARCHAR2(4000);
    l_modal_columns_map  VARCHAR2(4000);
    l_return_item        VARCHAR2(32000);  
    l_return_script      VARCHAR2(32000);  
    l_return_names       VARCHAR2(2000);  
    

    /******* Inner Functions*********************/
    function prepare_dialog_url (p_url in varchar2 ) return varchar2
    is
    begin
        return regexp_substr(p_url, 'f\?p=[^'']*');
    end prepare_dialog_url;
    --
    function prepare_values (p_values in varchar2, p_type char ) return varchar2
    is
        l_str      Varchar2(32000);
        l_temp     Varchar2(30000);
        i          PLS_INTEGER;
        l_values   Varchar2(30000);
        l_html2     Varchar2(30000);

        /*
        p_type = 'U' used in url
        p_type = 'E' used in html expression
        p_type = 'J' & 'R' used in javascript returning
        */

    begin
        i:=1;
        l_str    := p_values;
        l_values :='';
        l_temp   :='';

        Loop
            l_temp := regexp_substr(l_str,'[^,]+', 1,i);
            Exit When l_temp Is Null;
            if p_type = 'U' then
                if instr(l_temp,':') > 0 then
                    l_values := l_values ||','||'$v("'||replace(l_temp,':')||'")';
                else
                    l_values := l_values ||','||''||l_temp||'';--json
                end if;
            elsif p_type = 'E' then    
                l_values := l_values ||'<input class="return-'||lower(l_temp)||'" style="display:none;" value="#'||upper(l_temp)||'#">'||chr(10)||chr(13);
            elsif p_type = 'J' then    
                l_values := l_values ||'var returnVal'||l_temp||' = displayTd.find(''.return-'||l_temp||''').val();'||chr(10);
                l_return_names := l_return_names||','|| l_temp;
            elsif p_type = 'R' then
                l_values := l_values ||'$s('''||upper(l_temp)||''', returnVal'||regexp_substr(l_return_names,'[^,]+', 1,i)||');'||chr(10);
            end if;

            i := i + 1;
            l_temp := Null;
        End Loop;
        l_values := ltrim(l_values,',');
        l_return_names:= ltrim(l_return_names,',');

        return l_values;
    exception when others then
       return '[]';
    end;
    /**********************************************/

begin
   
    --Prepare url with parameters
    if  l_modal_param = 'PREPARE_URL' THEN
        if p_modal_lov_items IS NOT NULL then
            for i in 0..regexp_count(p_modal_lov_items,',') loop
                l_values$ := l_values$||','||'%24'||i||'%24';
            end loop;
            l_values$ := ltrim(l_values$,',');
        end if;    

        ---
        if p_modal_lov_type = 'CUR_APP_PAGE' THEN
            l_modal_lov_url := 'f?p=' 
                     || :APP_ID 
                     || ':' || p_modal_page_link || ':' 
                     || :APP_SESSION || ':' 
                     || p_modal_lov_request || ':' 
                     || :DEBUG || ':RP:'
                     || p_modal_lov_items || ':' || l_values$;

        else
            l_modal_lov_url := p_modal_lov_url;
        end if;
        l_modal_lov_values := prepare_values(p_values => p_modal_lov_values
                                            ,p_type => 'U');
        
    elsif (l_modal_param = 'GET_COLS_MAP') THEN
        --set columns mapping
        l_modal_lov_values  := null;
        l_modal_lov_url     := null;
    else
        l_modal_lov_url := apex_util.prepare_url(p_url                => l_modal_param,
                                                 p_checksum_type      => p_modal_lov_chekcsum,
                                                 p_triggering_element => 'apex.jQuery(''#'||l_regionID||''')'
                                                );
        l_return_item := prepare_values(p_values => p_modal_lov_htexp
                                       ,p_type => 'E');
        

        l_return_script :=q'{
        //get value of selected items
        var displayTd = $(this.triggeringElement).closest('tr').find('td[headers=' + columnStaticId + ']');}'||chr(10)||chr(13);
        l_return_script := l_return_script || 
                             prepare_values(p_values => lower(trim(p_modal_lov_htexp))
                                           ,p_type => 'J')||chr(10)||chr(13);
        l_return_script := l_return_script || 
                             prepare_values(p_values => regexp_substr(trim(p_modal_column_map),'[^:]+', 1)
                                           ,p_type => 'R')||chr(10)||chr(13);

        --
        apex_util.set_session_state('GL_HTML_EXP_DIALOG',l_return_item);
        apex_util.set_session_state('GL_ROW_SCRIPT_DIALOG',l_return_script);
        
                                        
    
    end if;
    
    apex_json.open_object;
    apex_json.write('success', true);
    apex_json.write('openmodal', trim(l_modal_lov_url));
    apex_json.write('modallovvalues', trim(l_modal_lov_values));
    apex_json.write('modalcolsmap', trim(p_modal_column_map));
    apex_json.write('modalhtmlexp', l_return_item);
    apex_json.write('modalscriptdig', l_return_script);
    
    
    
    
    apex_json.close_object;
exception when others then
    apex_json.open_object;
    apex_json.write('success', false);
    apex_json.write('openmodal', sqlerrm);
    apex_json.close_object;

end ajax_modal_render_ig; 
  