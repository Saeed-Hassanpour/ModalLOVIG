prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.4.00.08'
,p_default_workspace_id=>1681363194291772
,p_default_application_id=>154
,p_default_owner=>'TEST'
);
end;
/
prompt --application/shared_components/plugins/item_type/ir_saeedhassanpour_modallovig
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(37946510214183792)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'IR.SAEEDHASSANPOUR.MODALLOVIG'
,p_display_name=>'Modal LOV IG'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPL_PAGE_IG_COLUMNS'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'**  Author  : Saeed Hassanpour ',
'**  Company : Parto Pardazesh Fartak(IRANAPEX)- http://iranapex.ir',
'**  Date    : 2017/06',
'**  Version : 1.0',
'*/',
'procedure modal_render_ig (',
'    p_item                IN apex_plugin.t_item,',
'    p_plugin              IN apex_plugin.t_plugin,',
'    p_param               IN apex_plugin.t_item_render_param,',
'    p_result              IN OUT nocopy apex_plugin.t_item_render_result)   ',
'AS',
'    ',
'    p_modal_lov_cascade     p_item.attribute_10%type:= p_item.attribute_10;',
'',
'',
'    l_modal_not_enterable          CONSTANT VARCHAR2(30) := ''NOT_ENTERABLE'';',
'    l_modal_enterable_unrestricted CONSTANT VARCHAR2(30) := ''ENTERABLE_UNRESTRICTED'';',
'    l_modal_enterable_restricted   CONSTANT VARCHAR2(30) := ''ENTERABLE_RESTRICTED'';',
'    l_modal_enterable              VARCHAR2(30)  := COALESCE(p_item.attribute_11, l_modal_not_enterable);',
'    l_modal_lAjaxIdentifier        VARCHAR2(500) := apex_plugin.get_ajax_identifier;',
'',
'    l_page_item_name VARCHAR2(100);',
'    l_html VARCHAR2(32000);',
'    l_values$ VARCHAR2(1000);  ',
'    l_init_modal_lov VARCHAR2(32000);',
'   ',
'    l_readonly  VARCHAR2(500);',
'    l_modal_url VARCHAR2(4000);',
'    l_modal_lov_url VARCHAR2(4000);',
'    ',
'    v_item_attrib VARCHAR2(9000);',
'    ',
'    l_columns_name  VARCHAR2(100);',
'    l_ig_region    VARCHAR2(100);',
'    ',
'    l_item_id      constant varchar2(255)  := apex_escape.html_attribute(p_item.id);',
'    ',
'    ',
'    l_str      Varchar2(4000);',
'    l_temp     Varchar2(4000);',
'    i          PLS_INTEGER;',
'    l_values   Varchar2(4000);',
'',
'BEGIN',
' ',
'    -- Load the JavaScript library   ',
'    apex_javascript.add_library ',
'    ( p_name      => ''modallovig.min''',
'    , p_directory => p_plugin.file_prefix',
'    );',
'    -- Load the CSS',
'    apex_css.add_file (',
'      p_name => ''modallovig''',
'    , p_directory => p_plugin.file_prefix);',
'  ',
'    /********* Retreiving data which uesd in cascade**********/',
'     l_page_item_name := apex_plugin.get_input_name_for_page_item (p_is_multi_value => FALSE);',
'    --get name of current IG region',
'    select  REGION_NAME',
'    into    l_ig_region',
'    from    APEX_APPL_PAGE_IG_COLUMNS',
'    where   APPLICATION_ID = :APP_ID',
'    and     PAGE_ID = :APP_PAGE_ID',
'    and     COLUMN_ID = to_number(l_page_item_name);',
'    --get id of cascade items',
'    if  (p_modal_lov_cascade is not null) then',
'        BEGIN',
'            i:=1;',
'            l_str    := p_modal_lov_cascade;',
'            l_values :='''';',
'            l_temp   :='''';',
'',
'            Loop',
'                l_temp := regexp_substr(l_str,''[^,]+'', 1,i);',
'                Exit When l_temp Is Null;',
'                select to_char(COLUMN_ID)',
'                into   l_columns_name',
'                from  APEX_APPL_PAGE_IG_COLUMNS',
'                where APPLICATION_ID = :APP_ID',
'                and   PAGE_ID = :APP_PAGE_ID',
'                and   REGION_NAME = l_ig_region',
'                and   NAME = l_temp;   ',
'                ',
'                l_values := l_values ||'',''||''''||l_columns_name||'''';',
'                i := i + 1;',
'                l_temp := Null;',
'            End Loop;',
'            ',
'            l_columns_name := ltrim(l_values,'','');',
'        Exception When Others Then',
'           l_columns_name := '''';',
'',
'        END;',
'    end if;',
'    ',
'    --initial values',
'    l_init_modal_lov := ''{''||',
'                     apex_javascript.add_attribute(''igName'',l_ig_region)||',
'                     apex_javascript.add_attribute(''itemID'',to_char(l_page_item_name))||',
'                     apex_javascript.add_attribute(''itemName'',p_item.session_state_name)||',
'                     apex_javascript.add_attribute(''cascadeCols'', l_columns_name, false, false)||',
'                     ''}'';',
'    ',
'    apex_javascript.add_onload_code (',
'                                     p_code => ''openMLovIG._init_event_modallov(''''''||l_init_modal_lov||'''''',"''||l_modal_lAjaxIdentifier||''");''',
'                                    );        ',
'    /******************************************************/',
'                           ',
'    if l_modal_enterable = l_modal_not_enterable THEN',
'        l_readonly := '' readonly="readonly" '';',
'    else',
'        l_readonly := '''';',
'    end if;',
'     ',
'    v_item_attrib := p_item.element_attributes;',
'    htp.p(',
'           ''<input type="text" ',
'                      id="''||p_item.name||''"                      ',
'                      name="''||l_page_item_name||''" ',
'                      data-id ="''||p_item.session_state_name||''"',
'                      class="popup_lov apex-item-text js-ignoreChange modal-display-value" ',
'                      size="''||p_item.element_width||''" ',
'                      maxlength="''||p_item.element_max_length||''" ''|| ',
'                      v_item_attrib||'' ''||l_readonly||'' >''',
'        );',
'        ',
'        --5.1+  : class="popup_lov apex-item-text apex-item-popup-lov js-ignoreChange ig-modal-lov modal-display-value" ',
'        --18+   : class="popup_lov apex-item-text js-ignoreChange modal-display-value"',
'        ',
'    --Open button',
'    htp.p(''<button class="a-Button a-Button--popupLOV  ig-lov-open"  type="button" >',
'           <span class="icon-dialog-lov fa fa-caret-square-o-up"><span class="visuallyhidden">Modal Lov of Values: Deptno</span>'');',
'    htp.p(''</button>'');',
'    --Clear button',
'    htp.p(''<button class="a-Button a-Button--popupLOV ig-lov-clear" id="''||p_item.name||''_''||p_item.session_state_name||''" type="button" title="Clear" >',
'       <span class="a-Icon icon-remove"></span>'');',
'    htp.p(''<span class="visuallyhidden ig-iaxmodal-lov" aria-hidden="true">''||l_modal_lAjaxIdentifier||''</span></button>'');         ',
'        ',
'end modal_render_ig;',
'',
'--Ajax Procedure',
'procedure ajax_modal_render_ig (',
'    p_item   in            apex_plugin.t_item,',
'    p_plugin in            apex_plugin.t_plugin,',
'    p_param  in            apex_plugin.t_item_ajax_param,',
'    p_result in out nocopy apex_plugin.t_item_ajax_result)',
'AS',
'      ',
'    p_modal_lov_type      p_item.attribute_01%type:= p_item.attribute_01; ',
'    p_modal_page_link     p_item.attribute_02%type:= p_item.attribute_02; ',
'    p_modal_lov_url       p_item.attribute_03%type:= p_item.attribute_03; ',
'    p_modal_lov_chekcsum  p_item.attribute_04%type:= p_item.attribute_04;',
'    p_modal_lov_items     p_item.attribute_05%type:= apex_escape.html_attribute(p_item.attribute_05);',
'    p_modal_lov_values    p_item.attribute_06%type:= p_item.attribute_06;',
'    p_modal_lov_request   p_item.attribute_07%type:= p_item.attribute_07;',
'    p_modal_lov_htexp     p_item.attribute_08%type:=sys.htf.escape_sc(p_item.attribute_08);',
'    p_modal_column_map    p_item.attribute_09%type:= sys.htf.escape_sc(p_item.attribute_09);',
'    p_modal_lov_cascade   p_item.attribute_10%type:= p_item.attribute_10;',
'     ',
'    ',
'    ',
'    l_modal_param        apex_application.g_x01%type := apex_application.g_x01;',
'    l_regionID           apex_application.g_x02%type := apex_application.g_x02;',
'',
'    l_url                VARCHAR2(32000);',
'    l_modal_lov_url      VARCHAR2(32000);',
'    l_values$            VARCHAR2(1000);  ',
'    l_modal_url          VARCHAR2(4000);',
'    l_modal_lov_values   VARCHAR2(4000);',
'    l_modal_columns_map  VARCHAR2(4000);',
'    l_return_item        VARCHAR2(32000);  ',
'    l_return_script      VARCHAR2(32000);  ',
'    l_return_names       VARCHAR2(2000);  ',
'    ',
'',
'    /******* Inner Functions*********************/',
'    function prepare_dialog_url (p_url in varchar2 ) return varchar2',
'    is',
'    begin',
'        return regexp_substr(p_url, ''f\?p=[^'''']*'');',
'    end prepare_dialog_url;',
'    --',
'    function prepare_values (p_values in varchar2, p_type char ) return varchar2',
'    is',
'        l_str      Varchar2(32000);',
'        l_temp     Varchar2(30000);',
'        i          PLS_INTEGER;',
'        l_values   Varchar2(30000);',
'        l_html2     Varchar2(30000);',
'',
'        /*',
'        p_type = ''U'' used in url',
'        p_type = ''E'' used in html expression',
'        p_type = ''J'' & ''R'' used in javascript returning',
'        */',
'',
'    begin',
'        i:=1;',
'        l_str    := p_values;',
'        l_values :='''';',
'        l_temp   :='''';',
'',
'        Loop',
'            l_temp := regexp_substr(l_str,''[^,]+'', 1,i);',
'            Exit When l_temp Is Null;',
'            if p_type = ''U'' then',
'                if instr(l_temp,'':'') > 0 then',
'                    l_values := l_values ||'',''||''$v("''||replace(l_temp,'':'')||''")'';',
'                else',
'                    l_values := l_values ||'',''||''''||l_temp||'''';--json',
'                end if;',
'            elsif p_type = ''E'' then    ',
'                l_values := l_values ||''<input class="return-''||lower(l_temp)||''" style="display:none;" value="#''||upper(l_temp)||''#">''||chr(10)||chr(13);',
'            elsif p_type = ''J'' then    ',
'                l_values := l_values ||''var returnVal''||l_temp||'' = displayTd.find(''''.return-''||l_temp||'''''').val();''||chr(10);',
'                l_return_names := l_return_names||'',''|| l_temp;',
'            elsif p_type = ''R'' then',
'                l_values := l_values ||''$s(''''''||upper(l_temp)||'''''', returnVal''||regexp_substr(l_return_names,''[^,]+'', 1,i)||'');''||chr(10);',
'            end if;',
'',
'            i := i + 1;',
'            l_temp := Null;',
'        End Loop;',
'        l_values := ltrim(l_values,'','');',
'        l_return_names:= ltrim(l_return_names,'','');',
'',
'        return l_values;',
'    exception when others then',
'       return ''[]'';',
'    end;',
'    /**********************************************/',
'',
'begin',
'   ',
'    --Prepare url with parameters',
'    if  l_modal_param = ''PREPARE_URL'' THEN',
'        if p_modal_lov_items IS NOT NULL then',
'            for i in 0..regexp_count(p_modal_lov_items,'','') loop',
'                l_values$ := l_values$||'',''||''%24''||i||''%24'';',
'            end loop;',
'            l_values$ := ltrim(l_values$,'','');',
'        end if;    ',
'',
'        ---',
'        if p_modal_lov_type = ''CUR_APP_PAGE'' THEN',
'            l_modal_lov_url := ''f?p='' ',
'                     || :APP_ID ',
'                     || '':'' || p_modal_page_link || '':'' ',
'                     || :APP_SESSION || '':'' ',
'                     || p_modal_lov_request || '':'' ',
'                     || :DEBUG || '':RP:''',
'                     || p_modal_lov_items || '':'' || l_values$;',
'',
'        else',
'            l_modal_lov_url := p_modal_lov_url;',
'        end if;',
'        l_modal_lov_values := prepare_values(p_values => p_modal_lov_values',
'                                            ,p_type => ''U'');',
'        ',
'    elsif (l_modal_param = ''GET_COLS_MAP'') THEN',
'        --set columns mapping',
'        l_modal_lov_values  := null;',
'        l_modal_lov_url     := null;',
'    else',
'        l_modal_lov_url := apex_util.prepare_url(p_url                => l_modal_param,',
'                                                 p_checksum_type      => p_modal_lov_chekcsum,',
'                                                 p_triggering_element => ''apex.jQuery(''''#''||l_regionID||'''''')''',
'                                                );',
'        l_return_item := prepare_values(p_values => p_modal_lov_htexp',
'                                       ,p_type => ''E'');',
'        ',
'',
'        l_return_script :=q''{',
'        //get value of selected items',
'        var displayTd = $(this.triggeringElement).closest(''tr'').find(''td[headers='' + columnStaticId + '']'');}''||chr(10)||chr(13);',
'        l_return_script := l_return_script || ',
'                             prepare_values(p_values => lower(trim(p_modal_lov_htexp))',
'                                           ,p_type => ''J'')||chr(10)||chr(13);',
'        l_return_script := l_return_script || ',
'                             prepare_values(p_values => regexp_substr(trim(p_modal_column_map),''[^:]+'', 1)',
'                                           ,p_type => ''R'')||chr(10)||chr(13);',
'',
'        --',
'        apex_util.set_session_state(''GL_HTML_EXP_DIALOG'',l_return_item);',
'        apex_util.set_session_state(''GL_ROW_SCRIPT_DIALOG'',l_return_script);',
'        ',
'                                        ',
'    ',
'    end if;',
'    ',
'    apex_json.open_object;',
'    apex_json.write(''success'', true);',
'    apex_json.write(''openmodal'', trim(l_modal_lov_url));',
'    apex_json.write(''modallovvalues'', trim(l_modal_lov_values));',
'    apex_json.write(''modalcolsmap'', trim(p_modal_column_map));',
'    apex_json.write(''modalhtmlexp'', l_return_item);',
'    apex_json.write(''modalscriptdig'', l_return_script);',
'    ',
'    ',
'    ',
'    ',
'    apex_json.close_object;',
'exception when others then',
'    apex_json.open_object;',
'    apex_json.write(''success'', false);',
'    apex_json.write(''openmodal'', sqlerrm);',
'    apex_json.close_object;',
'',
'end ajax_modal_render_ig; ',
'  '))
,p_api_version=>2
,p_render_function=>'modal_render_ig'
,p_ajax_function=>'ajax_modal_render_ig'
,p_standard_attributes=>'VISIBLE:FORM_ELEMENT:SESSION_STATE:READONLY:QUICKPICK:SOURCE:ELEMENT:WIDTH:HEIGHT:PLACEHOLDER:ENCRYPT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>568
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40331172740768196)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Modal Url Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'CUR_APP_PAGE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>It can be two choices:</p>',
'<ul>',
'<li> 1)Page in this application </li>',
'<li> 2)URL </li>',
'</ul>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40331481229773243)
,p_plugin_attribute_id=>wwv_flow_api.id(40331172740768196)
,p_display_sequence=>10
,p_display_value=>'Page in this application'
,p_return_value=>'CUR_APP_PAGE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40331849282774470)
,p_plugin_attribute_id=>wwv_flow_api.id(40331172740768196)
,p_display_sequence=>20
,p_display_value=>'Url'
,p_return_value=>'URL'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40332266179786635)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Modal Page Link'
,p_attribute_type=>'PAGE NUMBER'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40331172740768196)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUR_APP_PAGE'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Click the "Modal Page Link" to invoke a modal dialog. You can enter a custom target to be called when the Link Column is clicked.<p>',
'',
'<p>Page in this application :<p>',
'<p>Page - enter the page number or page alias to navigate to. You can also select the page number from the select list.<p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40332551956794726)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Modal Url'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40331172740768196)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'URL'
,p_help_text=>'<p>Enter the URL</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40332856096799733)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Url Checksum'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'UNRESTRICTED'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Select what type of session state protection is implemented for Modal page.</p>',
'',
'<p>Available options include:</p>',
'',
'<ul>',
'<li>Unrestricted</li>',
'    <ul><li>The page may be requested using a URL, with or without session state arguments, and without having to have a checksum.</li></ul>',
'<li>Session</li>',
'    <ul><li>Arguments Must Have Checksum.If Request, Clear Cache, or Name/Value Pair arguments appear in the URL, a checksum must also be provided.',
'    The checksum type must be compatible with the most stringent Session State Protection attribute of all the items passed as arguments.</li></ul>',
'<li>User</li>',
'    <ul><li>Arguments Must Have Checksum.</li></ul>',
'<li>Application</li>',
'    <ul><li>Arguments Must Have Checksum.</li></ul>',
'</ul>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40333214674801369)
,p_plugin_attribute_id=>wwv_flow_api.id(40332856096799733)
,p_display_sequence=>10
,p_display_value=>'Unrestricted'
,p_return_value=>'UNRESTRICTED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40333547188802900)
,p_plugin_attribute_id=>wwv_flow_api.id(40332856096799733)
,p_display_sequence=>20
,p_display_value=>'Session'
,p_return_value=>'SESSION'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40334015914805964)
,p_plugin_attribute_id=>wwv_flow_api.id(40332856096799733)
,p_display_sequence=>30
,p_display_value=>'User'
,p_return_value=>'PRIVATE_BOOKMARK'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40334350079807951)
,p_plugin_attribute_id=>wwv_flow_api.id(40332856096799733)
,p_display_sequence=>40
,p_display_value=>'Application'
,p_return_value=>'PUBLIC_BOOKMARK'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40334825131824416)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Set Item Names'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>'<p>P10_RETURN_ENAME,P10_RETURN_JOB,P10_RETURN_MGR</p>'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Name - enter or select page items from Modal dialog page to be set into session state.</p>',
'<p>Enter a comma-delimited list of items from this page</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40335074102829572)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Set Item Values'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_text_case=>'UPPER'
,p_examples=>'<p>saeed,:P9_EMPNO,#MGR#</p>'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Value - enter or select an Interactive Grid column (#MGR#), enter a page item (:P9_EMPNO), or enter a static value (saeed).<p>',
'<p>Enter a comma-delimited list of items or values from this page</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40335437647832979)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Request'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'<p>Enter the request to be used.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40335738528838346)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Modal Html Expression Column(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_text_case=>'UPPER'
,p_examples=>'<p>ENAME,JOB,MGR</p>'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter [COLUMNS] of interactive report to be shown in Modal Dialog page.</p>',
'<p>Enter a comma-delimited list of columns from Modal Dialog page</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40336021965854992)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Column Mapping(s) '
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_text_case=>'UPPER'
,p_examples=>'<p>P10_RETURN_ENAME,P10_RETURN_JOB,P10_RETURN_MGR:ENAME,JOB,MGR</p>'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Include two parts :',
'<ul>',
'<li>Item Name - enter or select [PAGE ITEMS] from Modal dialog page.</li>',
'<li>Column Name- enter [COLUMNS] of Interactive Grid to be shown in this page.</li>',
'</ul>',
'',
'<p>Enter a comma-delimited list of first parts then add [:] and last enter a comma-delimited list of second parts also the priority of entering at second part is important</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40336330478859413)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Cascading LOV Parent Column(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>'<p>HIREDATE,EMPNO</p>'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enter columns of Interactive Grid in this page that trigger the refresh of this list of values. For multiple columns, separate each column name with a comma. You can type in the name of available columns. the list of columns in Interactive Grid is'
||' refreshed whenever the value of any of the specified columns are changed on this page.</p>',
'<p>Enter a comma-delimited list of columns of Interactive Grid in this page</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40336592551906547)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Enterable'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'NOT_ENTERABLE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this setting to make the item "enterable". If enterable, users will be able to type in the actual textbox.</p>',
'',
'<p>If running as "Enterable - Not Restricted to LOV", any value entered into the textbox will be submitted into session state</p>',
'',
'<p>If running as "Enterable - Restricted to LOV", any value entered into the textbox will be validated against the LOV. If one match is found then the display and return values will be set accordingly. If no match is found or multiple matches are fou'
||'nd the modal dialog will open so that the user can make a selection.However, this part has not been implemented yet</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40336890293908106)
,p_plugin_attribute_id=>wwv_flow_api.id(40336592551906547)
,p_display_sequence=>10
,p_display_value=>'Not Enterable'
,p_return_value=>'NOT_ENTERABLE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40337307602909461)
,p_plugin_attribute_id=>wwv_flow_api.id(40336592551906547)
,p_display_sequence=>20
,p_display_value=>'Enterable - Restrictred to LOV'
,p_return_value=>'ENTERABLE_RESTRICTED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(40337655679911795)
,p_plugin_attribute_id=>wwv_flow_api.id(40336592551906547)
,p_display_sequence=>30
,p_display_value=>'Enterable - Not Restrictred to LOV'
,p_return_value=>'ENTERABLE_UNRESTRICTED'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(40338240539926220)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Use Value Validation'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(40336592551906547)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'ENTERABLE_UNRESTRICTED'
,p_help_text=>'This property has not been implemented yet.'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A2A2A2020417574686F7220203A2053616565642048617373616E706F7572200D0A2A2A2020436F6D70616E79203A20506172746F2050617264617A6573682046617274616B284952414E41504558292D20687474703A2F2F6972616E61706578';
wwv_flow_api.g_varchar2_table(2) := '2E69720D0A2A2A202044617465202020203A20323031372F30360D0A2A2A202056657273696F6E203A20312E300D0A2A2F0D0A0D0A2866756E6374696F6E2829207B0D0A090D0A09766172206D6F64656C2C207265636F7264242C2076616C75652C2069';
wwv_flow_api.g_varchar2_table(3) := '64526567696F6E242C206967242C2076696577242C0D0A09202020207468242C206D6F64616C4F626A242C20616A61784964656E746966696572242C20636C656172436865636B2C2072657475726E436865636B242C200D0A0920202020636F6C756D6E';
wwv_flow_api.g_varchar2_table(4) := '736D6170242C200D0A0920202020636F756E7452756E24203D20303B0D0A09202020200D0A09766172206F70656E4D4C6F764947203D207B0D0A09206D616B654469616C6F6755726C3A2066756E6374696F6E2875726C2C206172677329207B0D0A2020';
wwv_flow_api.g_varchar2_table(5) := '2020202020202020202076617220692C5F74656D700D0A200920202020746824203D20746869733B0D0A2020202020202020202020202F2F207265706C61636520756E69636F646520657363617065730D0A092020202075726C203D2075726C2E726570';
wwv_flow_api.g_varchar2_table(6) := '6C616365282F5C5C75285C645C645C645C64292F672C2066756E6374696F6E286D2C6429207B0D0A09202020202020202020202072657475726E20537472696E672E66726F6D43686172436F6465287061727365496E7428642C20313629293B0D0A0920';
wwv_flow_api.g_varchar2_table(7) := '2020207D293B0D0A0D0A202020202020202020202020696620286172677329207B0D0A09202020202020202020202020766172205F74656D70203D206E657720417272617928293B0D0A092020202020202020202020205F74656D70203D20617267732E';
wwv_flow_api.g_varchar2_table(8) := '73706C697428222C22293B0D0A0920202020202020202020202061726773203D205F74656D70207C7C205B5D3B0D0A092020202020202020202020200D0A09202020202020202020202020666F7220282069203D20303B2069203C20617267732E6C656E';
wwv_flow_api.g_varchar2_table(9) := '6774683B20692B2B29207B0D0A09202020202020202020202020202020202F2F494720636F6C756D6E730D0A092020202020202020202020202020202069662028656E636F6465555249436F6D706F6E656E7428617267735B695D292E696E6465784F66';
wwv_flow_api.g_varchar2_table(10) := '2822253233222C302920213D202D3129207B0D0A0920202020202020202020202020202020202020202020202075726C203D2075726C2E7265706C616365282225323422202B2069202B2022253234222C207468242E676574496756616C756528656E63';
wwv_flow_api.g_varchar2_table(11) := '6F6465555249436F6D706F6E656E7428617267735B695D292E7265706C616365282F2532332F672C2022222929293B0D0A092020202020202020202020202020202020202020202020207D0D0A0909092F2F247628276974656D5F6E616D6527290D0A09';
wwv_flow_api.g_varchar2_table(12) := '0909656C73652069662028656E636F6465555249436F6D706F6E656E7428617267735B695D292E696E6465784F66282225323476222C3029203E202D312920202020202020202020202020090D0A09092020202020202020202020202020202075726C20';
wwv_flow_api.g_varchar2_table(13) := '3D2075726C2E7265706C616365282225323422202B2069202B2022253234222C206576616C28617267735B695D29293B0D0A09202020202020202020202020202020202F2F76616C7565730D0A0920202020202020202020202020202020656C73652020';
wwv_flow_api.g_varchar2_table(14) := '2020202020202020202020202020090D0A09092020202020202020202020202020202075726C203D2075726C2E7265706C616365282225323422202B2069202B2022253234222C20656E636F6465555249436F6D706F6E656E7428617267735B695D2929';
wwv_flow_api.g_varchar2_table(15) := '3B0D0A090D0A092020202020202020202020207D0D0A202020202020202020202020207D200D0A20202020202020202020202072657475726E2075726C3B0D0A2020202020202020202020200D0A20202020202020207D2C0D0A20202020096765744967';
wwv_flow_api.g_varchar2_table(16) := '56616C75653A2066756E6374696F6E28636F6C6E616D6529207B090D0A0909696620282076696577242E696E7465726E616C4964656E746966696572203D3D3D202267726964222029207B200D0A0909202020206D6F64656C2020203D2076696577242E';
wwv_flow_api.g_varchar2_table(17) := '6D6F64656C3B20200D0A0909202020207265636F726424203D2076696577242E67657453656C65637465645265636F72647328293B200D0A0909202020200D0A0909202020207265636F7264242E666F72456163682866756E6374696F6E286F626A6563';
wwv_flow_api.g_varchar2_table(18) := '742C696E64657829207B20200D0A09092020202020202076616C7565203D206D6F64656C2E67657456616C7565287265636F7264245B696E6465785D2C636F6C6E616D65293B0D0A09092020202020202069662028747970656F662076616C7565203D3D';
wwv_flow_api.g_varchar2_table(19) := '3D20276F626A65637427290D0A09092020202020202020202020207B0D0A090920202020202020202020202076616C7565203D2076616C75652E763B0D0A090920202020202020207D20202020202020200D0A0909202020202020200D0A090920202020';
wwv_flow_api.g_varchar2_table(20) := '7D293B0D0A09097D0D0A090972657475726E2076616C75653B0D0A097D2C0D0A09736574496756616C75653A2066756E6374696F6E2870446174612C207052657475726E29207B090D0A090D0A092020202069662028636F6C756D6E736D61702429207B';
wwv_flow_api.g_varchar2_table(21) := '0D0A092020202020202020202020200D0A09092020202076617220726573756C74242C09202020200D0A0909202020206974656D734D617070696E67203D20636F6C756D6E736D6170243B2F2F6D6F64616C4F626A242E636F6C756D6E4D61702C0D0A09';
wwv_flow_api.g_varchar2_table(22) := '2020202020202020202020206974656D52657475726E73203D206974656D734D617070696E672E73756273747228302C206974656D734D617070696E672E696E6465784F6628223A2229292C0D0A092020202020202020202020206974656D734D617020';
wwv_flow_api.g_varchar2_table(23) := '2020203D206974656D734D617070696E672E737562737472286974656D734D617070696E672E696E6465784F6628223A22292B31293B0D0A0920202020202020202020202072657475726E436865636B24203D207052657475726E3B0D0A092020202020';
wwv_flow_api.g_varchar2_table(24) := '202020202020200D0A20202020202020202020202020202020202020206F70656E6C6F7624203D20747275653B0D0A092020202020202020202020200D0A09202020202020202020202020746824203D20746869733B0D0A092020202020202020202020';
wwv_flow_api.g_varchar2_table(25) := '200D0A092020202020202020202020207661722074656D70203D206E657720417272617928293B0D0A0920202020202020202020202074656D70203D206974656D52657475726E732E73706C697428222C22293B0D0A0920202020202020202020202069';
wwv_flow_api.g_varchar2_table(26) := '74656D52657475726E73203D2074656D70207C7C205B5D3B0D0A092020202020202020202020200D0A0920202020202020202020202074656D70203D206974656D734D61702E73706C697428222C22293B0D0A092020202020202020202020206974656D';
wwv_flow_api.g_varchar2_table(27) := '734D6170202020203D2074656D70207C7C205B5D3B200D0A090D0A092020202020202020202020202F2F6C6F6767696E670D0A2020202020202020202020202020202020202020617065782E64656275672E6C6F6728274D6F64616C204C6F7620494720';
wwv_flow_api.g_varchar2_table(28) := '5B6974656D52657475726E735D3A20272B206974656D52657475726E73293B0D0A2020202020202020202020202020202020202020617065782E64656275672E6C6F6728274D6F64616C204C6F76204947205B6974656D734D61705D3A20272B20697465';
wwv_flow_api.g_varchar2_table(29) := '6D734D6170293B0D0A20202020202020202020202020202020202020200D0A0909202020207265636F7264242E666F72456163682866756E6374696F6E286F626A6563742C696E64657829207B20200D0A09092020202020202020666F7220282069203D';
wwv_flow_api.g_varchar2_table(30) := '20303B2069203C206974656D52657475726E732E6C656E6774683B20692B2B29207B0D0A092020202020202020202020202020202020202020202F2F5365742076616C7565730D0A09202020202020202020202020202020202020202069662028726574';
wwv_flow_api.g_varchar2_table(31) := '75726E436865636B24203D3D207472756529207B090D0A09092020202020202020202020202020202020202020726573756C7424203D206576616C282770446174612E272B656E636F6465555249436F6D706F6E656E74286974656D52657475726E735B';
wwv_flow_api.g_varchar2_table(32) := '695D29293B0D0A0909202020202020202020202020202020202020202F2F6C6F6767696E670D0A202020202020202020202020202020202020202020202020202020202020202020202020617065782E64656275672E6C6F6728274D6F64616C204C6F76';
wwv_flow_api.g_varchar2_table(33) := '204947205B272B20656E636F6465555249436F6D706F6E656E74286974656D734D61705B695D292B275D3A20272B20726573756C7424293B0D0A092020202020202020092020202020202020202020206D6F64656C2E73657456616C7565287265636F72';
wwv_flow_api.g_varchar2_table(34) := '64245B696E6465785D2C656E636F6465555249436F6D706F6E656E74286974656D734D61705B695D292C726573756C7424293B0D0A092020202020202020092020202020202020207D20200D0A092020202020092020202020202020202020202F2F636C';
wwv_flow_api.g_varchar2_table(35) := '65617220636F6C756D6E73206D617070696E670D0A0920202020202020200920202020656C736520207B2020200D0A09092020202020202020202020202020202020202020696620287468242E676574436C656172436865636B2829203D3D2074727565';
wwv_flow_api.g_varchar2_table(36) := '202626207052657475726E20213D20656E636F6465555249436F6D706F6E656E74286974656D734D61705B695D2929207B0D0A09092020202020202020202020202020202020202020096D6F64656C2E73657456616C7565287265636F7264245B696E64';
wwv_flow_api.g_varchar2_table(37) := '65785D2C656E636F6465555249436F6D706F6E656E74286974656D734D61705B695D292C2727293B0D0A090920202020202020202020202020202020202020207D090D0A0920202020202020202020202020202020202020207D0D0A0909202020202020';
wwv_flow_api.g_varchar2_table(38) := '2020202020200D0A09202020202020202020202020202020207D0D0A090920202020202020200D0A0909202020207D293B0D0A09202020207D0D0A09202020207468242E736574636C656172436865636B2866616C7365293B0D0A092020202072657475';
wwv_flow_api.g_varchar2_table(39) := '726E436865636B24203D2066616C73653B0D0A09202020200D0A097D2C0D0A09636C6561724974656D4967203A202066756E6374696F6E202870446174612C20704368616E676529207B0D0A0909746824203D20746869733B0D0A0D0A09097468242E73';
wwv_flow_api.g_varchar2_table(40) := '6574636C656172436865636B2874727565293B200D0A09096966202870446174612026262021704368616E676529207B0D0A0909097265636F7264242E666F72456163682866756E6374696F6E286F626A6563742C696E64657829207B20200D0A090909';
wwv_flow_api.g_varchar2_table(41) := '096D6F64656C2E73657456616C7565287265636F7264245B696E6465785D2C70446174612C2727293B0D0A0909097D293B0D0A09097D0D0A09092F2F636C65617220636F6C756D6E73206D617070696E670D0A090969662028636F6C756D6E736D617024';
wwv_flow_api.g_varchar2_table(42) := '29207B0D0A0D0A0909097468242E736574496756616C7565286E756C6C2C207044617461293B0D0A09097D0D0A202020202020202020202020202020207468242E736574636C656172436865636B2866616C7365293B200D0A09090D0A097D2C0D0A0973';
wwv_flow_api.g_varchar2_table(43) := '6574636C656172436865636B203A2066756E6374696F6E28704461746129207B0D0A0909636C656172436865636B203D2070446174613B0D0A097D2C0D0A09676574436C656172436865636B203A2066756E6374696F6E2829207B0D0A09097265747572';
wwv_flow_api.g_varchar2_table(44) := '6E20636C656172436865636B3B0D0A097D2C0D0A09736574416A61784964656E746966696572203A2066756E6374696F6E286576656E742C7479706529207B0D0A202020202020202020202020202020202F2F6F70656E206469616C6F670D0A20202020';
wwv_flow_api.g_varchar2_table(45) := '2020202020202020202020206966202874797065203D3D20276F70656E2729207B0D0A0920202020202020202020202020202020616A61784964656E74696669657224203D206576656E742E7461726765742E6E657874456C656D656E745369626C696E';
wwv_flow_api.g_varchar2_table(46) := '672E6669727374456C656D656E744368696C642E6E657874456C656D656E745369626C696E672E696E6E6572546578743B0D0A202020202020202020202020202020207D0D0A202020202020202020202020202020202F2F6368616E676520636F6C756D';
wwv_flow_api.g_varchar2_table(47) := '6E730D0A20202020202020202020202020202020656C7365206966202874797065203D3D20276368616E676527297B0D0A2020202020202020202020202020202009616A61784964656E74696669657224203D206576656E742E7461726765742E6E6578';
wwv_flow_api.g_varchar2_table(48) := '74456C656D656E745369626C696E672E6E657874456C656D656E745369626C696E672E6669727374456C656D656E744368696C642E6E657874456C656D656E745369626C696E672E696E6E6572546578743B0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(49) := '7D0D0A202020202020202020202020202020202F2F636C65617220636F6C756D6E730D0A20202020202020202020202020202020656C7365207B0D0A2020202020202020202020202020202009616A61784964656E74696669657224203D206576656E74';
wwv_flow_api.g_varchar2_table(50) := '2E7461726765742E696E6E6572546578743B0D0A20202020202020202020202020202020090D0A202020202020202020202020202020207D0D0A202020202020202020202020202020200D0A20202020202020202020202020202020616A61784964656E';
wwv_flow_api.g_varchar2_table(51) := '74696669657224203D20616A61784964656E746966696572242E7265706C616365282F5B22275D2F672C202222293B0D0A097D2C0D0A09736574526567696F6E4947203A2066756E6374696F6E286576656E74297B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(52) := '2020202F2F73657420616E6420726567696F6E6964202020202020202020202020202020200D0A20202020202020202020202020202020766172205F726567696F6E203D20617065782E726567696F6E2E66696E64436C6F73657374286576656E742E74';
wwv_flow_api.g_varchar2_table(53) := '6172676574293B0D0A2020202020202020202020202020202069662028205F726567696F6E2029207B0D0A0D0A09092020202020202020206964526567696F6E24203D205F726567696F6E2E656C656D656E745B2230225D2E617474726962757465735B';
wwv_flow_api.g_varchar2_table(54) := '315D2E6E6F646556616C75653B200D0A20202020202020202020202009202020202020202020696724203D20617065782E726567696F6E286964526567696F6E24292E77696467657428293B0D0A09092020202020202020207669657724203D20696724';
wwv_flow_api.g_varchar2_table(55) := '2E696E7465726163746976654772696428226765745669657773222C206967242E696E74657261637469766547726964282267657443757272656E745669657749642229293B200D0A09092020202020202020200D0A09092020202020202020206D6F64';
wwv_flow_api.g_varchar2_table(56) := '656C202020202020203D2076696577242E6D6F64656C3B20200D0A202020202020202020202020202020202020202020202020207265636F72642420202020203D2076696577242E67657453656C65637465645265636F72647328293B200D0A20202020';
wwv_flow_api.g_varchar2_table(57) := '2020202020202020202020202020202020202020202F2F6C6F6767696E670D0A20202020202020202020202020202020202020202020202020617065782E64656275672E6C6F6728274D6F64616C204C6F76204947205B43757272656E74207265636F72';
wwv_flow_api.g_varchar2_table(58) := '645D3A20272B207265636F726424293B0D0A0909207D2020202020200D0A090909090D0A097D2C0D0A09616A617843616C6C203A2066756E6374696F6E286576656E742C20616374696F6E2C20737461746529207B0D0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(59) := '2020207468242E736574416A61784964656E746966696572286576656E742C616374696F6E293B0D0A202020202020202020202020202020202F2F67657420262073657420726567696F6E2069640D0A20202020202020202020097468242E7365745265';
wwv_flow_api.g_varchar2_table(60) := '67696F6E4947286576656E74293B0D0A202020202020202020202020202020200D0A20202020202020202020202020202020617065782E7365727665722E706C7567696E202820616A61784964656E74696669657224202C200D0A090920202020202020';
wwv_flow_api.g_varchar2_table(61) := '2020202020202020202020202020202020202020207B7830313A274745545F434F4C535F4D4150277D2C200D0A09092020202020202020202020202020202020202020202020202020202020202020202020207B20737563636573733A2066756E637469';
wwv_flow_api.g_varchar2_table(62) := '6F6E282070446174612029207B0D0A090909090909096966202870446174612E73756363657373297B0D0A090909090909092020202009636F6C756D6E736D617024203D2070446174612E6D6F64616C636F6C736D61703B0D0A09090909090909202020';
wwv_flow_api.g_varchar2_table(63) := '202020202069662028616374696F6E203D3D2027636C6561722729207B0D0A09090909090909202020202020202020202020202020205F636F6C4E616D65203D206576656E742E7461726765742E69643B0D0A0909090909090920202020202020202020';
wwv_flow_api.g_varchar2_table(64) := '2020202020205F636F6C4E616D65203D205F636F6C4E616D652E737562737472285F636F6C4E616D652E696E6465784F6628225F22292B31293B0D0A0909090909090920202020202020207D200D0A090909090909092020202020202020656C7365207B';
wwv_flow_api.g_varchar2_table(65) := '0D0A09090909090909202020202020202020202020202020205F636F6C4E616D65203D206576656E742E7461726765742E646174617365742E69643B0D0A0D0A0909090909090920202020202020207D0D0A0909090909090920202020202020202F2F63';
wwv_flow_api.g_varchar2_table(66) := '6C6561722049472076616C7565730D0A0909090909090920202020202020207468242E636C6561724974656D4967285F636F6C4E616D652C207374617465293B0D0A09090909090909207D0D0A0909202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(67) := '202020202020202020202020202020207D2C0D0A09090909202020202020202020202020202020202020202020202020202F2F204572726F72204D6573736167650D0A09090909202020202020202020202020202020202020202020202020206572726F';
wwv_flow_api.g_varchar2_table(68) := '723A2066756E6374696F6E287868722C20704D65737361676529207B0D0A0909090920202020202020202020202020202020202020202020202020092F2F6C6F6767696E670D0A0909090920202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(69) := '09617065782E64656275672E747261636528274D6F64616C204C6F76204947202D20616A617843616C6C5B4745545F434F4C535F4D4150203D3E4572726F725D3A2027202C20704D657373616765293B0D0A090909092020202020202020202020202020';
wwv_flow_api.g_varchar2_table(70) := '20202020202020202020207D200D0A09092020202020202020202020202020202020202020202020202020202020202020207D293B0D0A20202020202020207D2C0D0A095F696E69745F6576656E745F6D6F64616C6C6F76203A2066756E6374696F6E28';
wwv_flow_api.g_varchar2_table(71) := '70446174612C2070416A6178496429207B0D0A0909746824203D20746869733B0D0A090972657475726E436865636B24203D2066616C73653B0D0A09097468242E736574636C656172436865636B2866616C7365293B0D0A0909636F756E7452756E2420';
wwv_flow_api.g_varchar2_table(72) := '3D20636F756E7452756E24202B20313B0D0A0909766172205F616A617869647320203D22223B0D0A202020202020202020202020202020200D0A202020202020202020202020202020202F2F6C6F6767696E670D0A20202020202020202009617065782E';
wwv_flow_api.g_varchar2_table(73) := '64656275672E6C6F6728274D6F64616C204C6F76204947205B4D6F64616C4974656D3D3E27202B20636F756E7452756E24202B20275D3A20272B207044617461293B0D0A202020202020092020202020202020766172206A736F6E4461746124203D204A';
wwv_flow_api.g_varchar2_table(74) := '534F4E2E7061727365287044617461293B0D0A2020202020200920202020202020200D0A0909696620286A736F6E44617461242E63617363616465436F6C7329207B0D0A09202020202020202020202020766172205F616A61786964732C205F74656D70';
wwv_flow_api.g_varchar2_table(75) := '203D206E657720417272617928293B0D0A092020202020202020202020205F74656D70203D206A736F6E44617461242E63617363616465436F6C732E73706C697428222C22293B0D0A092020202020202020202020205F74656D70203D205F74656D7020';
wwv_flow_api.g_varchar2_table(76) := '7C7C205B5D3B0D0A092020202020202020202020200D0A09202020202020202020202020666F7220282069203D20303B2069203C205F74656D702E6C656E6774683B20692B2B29207B0D0A2020202020202020202020202020202020202020095F616A61';
wwv_flow_api.g_varchar2_table(77) := '78696473203D202428222343222B5F74656D705B695D292E617474722827646174612D616A6178696427293B0D0A2020202020202020202020202020202020202020095F616A6178696473203D205F616A6178696473202B20272C27202B2070416A6178';
wwv_flow_api.g_varchar2_table(78) := '49643B0D0A2020202020202020202020202020202020202020202020205F616A6178696473203D205F616A61786964732E7265706C616365282F5E756E646566696E65642C3F2F2C202222293B0D0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(79) := '2020200D0A2020202020202020202020202020202020202020092428222343222B5F74656D705B695D292E617474722827646174612D616A61786964272C205F616A6178696473293B0D0A20202020202020202020202020202020202020202020202024';
wwv_flow_api.g_varchar2_table(80) := '28222343222B5F74656D705B695D292E62696E6428226368616E6765222C2066756E6374696F6E286576656E7429207B0D0A202020202020202009202020202020202020202020202020200D0A09092020202020202020202020202020092F2F66696E64';
wwv_flow_api.g_varchar2_table(81) := '20696E20636C6F736520656C656D656E74207769746820696E6E6572206961780D0A0909202020202020202020202020202009706172656E74203D2024286576656E742E746172676574293B0D0A2020202020202009090920202020202020200D0A2020';
wwv_flow_api.g_varchar2_table(82) := '2020202020090909202020202020202063757272656E7469674944203D2024286576656E742E746172676574292E706172656E747328276469762E612D494727292E617474722827696427293B0D0A2020202020202009090920202020202020205F7370';
wwv_flow_api.g_varchar2_table(83) := '616E436C656172203D2024286576656E742E746172676574292E636C6F73657374282764697623272B63757272656E7469674944292E66696E642827627574746F6E2E69672D6C6F762D636C65617227293B0D0A0D0A2020202020202009090920202020';
wwv_flow_api.g_varchar2_table(84) := '2020202024285F7370616E436C656172292E656163682866756E6374696F6E2820696E6465782029207B0D0A090909090920205F616A6178696473203D2024282723272B6576656E742E7461726765742E6964292E646174612822616A6178696422293B';
wwv_flow_api.g_varchar2_table(85) := '0D0A09090909092020766172205F74656D70203D206E657720417272617928293B0D0A09090909202020202020202020205F74656D70203D205F616A61786964732E73706C697428222C22293B0D0A09090909202020202020202020205F74656D70203D';
wwv_flow_api.g_varchar2_table(86) := '205F74656D70207C7C205B5D3B0D0A0909090920202020202020202020666F7220282069203D20303B2069203C205F74656D702E6C656E6774683B20692B2B29207B0D0A090909092020202020202020202009696620285F74656D705B695D203D3D2024';
wwv_flow_api.g_varchar2_table(87) := '285F7370616E436C656172295B696E6465785D2E696E6E65725465787429207B0D0A0909090909092020095F627574746F6E436C656172203D202428277370616E3A636F6E7461696E73282227202B2024285F7370616E436C656172295B696E6465785D';
wwv_flow_api.g_varchar2_table(88) := '2E696E6E657254657874202B2027222927292E636C6F736573742827627574746F6E2E69672D6C6F762D636C65617227293B0D0A090909090909202009696620285F627574746F6E436C65617229207B0D0A09090909090909095F627574746F6E436C65';
wwv_flow_api.g_varchar2_table(89) := '61722E747269676765722822636C69636B22293B0D0A090909090909097D20090D0A09090909092020097D0D0A090909090920202020202020200D0A09090909202020202020202020207D0D0A09090909202020202020202020200D0A090909097D293B';
wwv_flow_api.g_varchar2_table(90) := '0D0A0D0A090920202020202020202020207D293B0D0A20202020202020202020202020202020202020202020202020200D0A092020202020202020097D2020200D0A0920202020202020207D200D0A09090D0A09092F2F72756E20746869732073637269';
wwv_flow_api.g_varchar2_table(91) := '7074206F6E6C79206F6E63650D0A090969662028636F756E7452756E24203D3D203129207B0D0A0909092428222E69672D6C6F762D636C65617222292E62696E642822636C69636B222C2066756E6374696F6E286576656E74297B0D0A09092020202020';
wwv_flow_api.g_varchar2_table(92) := '202020202020202020202F2F70726576656E74206120646F75626C652D636C69636B0D0A09092020202020202020202020202020202428272E69672D6C6F762D636C65617227292E70726F70282264697361626C6564222C2074727565293B0D0A202020';
wwv_flow_api.g_varchar2_table(93) := '2020200909092020202020202073657454696D656F75742866756E6374696F6E28297B2428272E69672D6C6F762D636C65617227292E70726F70282264697361626C6564222C2066616C7365293B7D2C20353030293B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(94) := '202020202020202020202020202020202020207468242E616A617843616C6C286576656E742C2027636C656172272C2066616C7365293B0D0A09092020202020202020202020202020200D0A09092020202020202020207D293B0D0A090D0A0909202020';
wwv_flow_api.g_varchar2_table(95) := '20202020202428222E69672D6D6F64616C2D6C6F7622292E62696E6428226368616E6765222C2066756E6374696F6E286576656E7429207B0D0A090D0A092020202020202020202020202020202020202020202020206966202872657475726E43686563';
wwv_flow_api.g_varchar2_table(96) := '6B2420213D2074727565202626207468242E676574436C656172436865636B282920213D20747275652029207B0D0A09092020202020202020202020202020202020202020202020202F2F67657420262073657420726567696F6E2069640D0A09090909';
wwv_flow_api.g_varchar2_table(97) := '09207468242E736574526567696F6E4947286576656E74293B0D0A0909090909207468242E616A617843616C6C286576656E742C20276368616E6765272C2074727565293B0D0A09090909090D0A09092020202020202020097D0D0A0909202020202020';
wwv_flow_api.g_varchar2_table(98) := '20207D293B0D0A090920202020202020200D0A0909092428272E69672D6C6F762D6F70656E27292E64626C636C69636B2866756E6374696F6E2865297B200D0A2020090909092020652E73746F7050726F7061676174696F6E28293B0D0A090909092020';
wwv_flow_api.g_varchar2_table(99) := '652E70726576656E7444656661756C7428293B0D0A09090909202072657475726E2066616C73653B0D0A0909097D290D0A0909090D0A0909092428222E69672D6C6F762D6F70656E22292E62696E642822636C69636B222C2066756E6374696F6E286576';
wwv_flow_api.g_varchar2_table(100) := '656E74297B0D0A09092020202020202020202020202428272E69672D6C6F762D6F70656E27292E70726F70282264697361626C6564222C2074727565293B0D0A2020200909092020202073657454696D656F75742866756E6374696F6E28297B2428272E';
wwv_flow_api.g_varchar2_table(101) := '69672D6C6F762D6F70656E27292E70726F70282264697361626C6564222C2066616C7365293B7D2C20353030293B0D0A09092020202020202020202020200D0A090920202020202020202020202020202020766172205F6D6F64616C75726C2C205F6D6F';
wwv_flow_api.g_varchar2_table(102) := '64616C6C6F7676616C7565733B0D0A092020202020202020202020202020202020202020202020207468242E736574416A61784964656E746966696572286576656E742C276F70656E27293B0D0A0909202020202020202020202020202020202F2F6765';
wwv_flow_api.g_varchar2_table(103) := '7420262073657420726567696F6E2069640D0A0909202020202020202020202020202020207468242E736574526567696F6E4947286576656E74293B0D0A092020202020202020200920202020202020200D0A0920202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(104) := '20202020617065782E7365727665722E706C7567696E202820616A61784964656E74696669657224202C200D0A09202020202020202020202020202020202020202020202020202020207B7830313A27505245504152455F55524C270D0A092020202020';
wwv_flow_api.g_varchar2_table(105) := '20202020202020202020202020202020202020202020207D2C200D0A092020202020202020202020202020202020202020202020202020202020202020202020207B20737563636573733A2066756E6374696F6E282070446174612029207B0D0A090920';
wwv_flow_api.g_varchar2_table(106) := '202020202020202020202020202020202020202020202020202020202020206966202870446174612E73756363657373297B0D0A0909202020202020202020202020202020202020202020202020202020202020202020202020636F6C756D6E736D6170';
wwv_flow_api.g_varchar2_table(107) := '24203D2070446174612E6D6F64616C636F6C736D61703B0D0A09092020202020202020202020202020202020202020202020202020202020202020202020205F6D6F64616C75726C203D2070446174612E6F70656E6D6F64616C3B0D0A09092020202020';
wwv_flow_api.g_varchar2_table(108) := '202020202020202020202020202020202020202020202020202020202020205F6D6F64616C6C6F7676616C756573203D2070446174612E6D6F64616C6C6F7676616C7565733B0D0A09092020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(109) := '202020202020202020200D0A09092020202020202020202020202020202020202020202020202020202020202020202020202F2F6C6F6767696E670D0A092020202020202020200920202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(110) := '617065782E64656275672E6C6F6728274D6F64616C204C6F76204947205B505245504152455F55524C2D636F6C756D6E736D61705D3A2027202B20636F6C756D6E736D617024293B0D0A0920202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(111) := '202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020200D0A090909092020202020202020202020202020202020202020766172206D6F64616C75726C4947203D207468';
wwv_flow_api.g_varchar2_table(112) := '242E6D616B654469616C6F6755726C285F6D6F64616C75726C2C5F6D6F64616C6C6F7676616C756573293B0D0A0909090909202020202020202020202020617065782E7365727665722E706C7567696E202820616A61784964656E74696669657224202C';
wwv_flow_api.g_varchar2_table(113) := '200D0A09090909202020202020202020202020202020202020202020202020202020207B7830313A6D6F64616C75726C49470D0A09090909202020202020202020202020202020202020202020202020202020202C7830323A6964526567696F6E247D2C';
wwv_flow_api.g_varchar2_table(114) := '200D0A090909092020202020202020202020202020202020202020202020202020202020202020202020207B20737563636573733A2066756E6374696F6E282070446174612029207B0D0A09090909202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(115) := '20202020202020202020206966202870446174612E73756363657373297B0D0A090909092020202020202020202020202020202020202020202020202020202020202020202020202F2F6C6F6767696E670D0A0920202020202020202009202020202020';
wwv_flow_api.g_varchar2_table(116) := '2020202020202020202020202020202020202020202020202020202020202020202020202020617065782E64656275672E6C6F6728274D6F64616C204C6F76204947205B505245504152455F55524C2D6F70656E6D6F64616C5D3A2027202B2070446174';
wwv_flow_api.g_varchar2_table(117) := '612E6F70656E6D6F64616C293B0D0A09202020202020202020092020202020202020202020202020202020202020202020202020202020202020202020202020202020202020617065782E64656275672E6C6F6728274D6F64616C204C6F76204947205B';
wwv_flow_api.g_varchar2_table(118) := '4469616C6F675F68746D6C5F6578705D3A20272B2070446174612E6D6F64616C68746D6C657870293B0D0A090909090909090920202020617065782E64656275672E6C6F6728274D6F64616C204C6F76204947205B4469616C6F675F526F7720436C6963';
wwv_flow_api.g_varchar2_table(119) := '6B65645D3A20272B2070446174612E6D6F64616C736372697074646967293B0D0A0909090909090909202020200D0A090909092020202020202020202020202020202020202020202020202020202020202020202020206576616C2870446174612E6F70';
wwv_flow_api.g_varchar2_table(120) := '656E6D6F64616C293B0D0A0D0A0909090920202020202020202020202020202020202020202020202020202020202020207D0D0A09090909202020202020202020202020202020202020202020202020202020202020200D0A0909090920202020202020';
wwv_flow_api.g_varchar2_table(121) := '202020202020202020202020202020202020202020202020200D0A090909092020202020202020202020202020202020202020202020202020202020202020207D2C0D0A0909090909202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(122) := '20202F2F204572726F72204D6573736167650D0A0909090909092020202020202020202020202020202020202020206572726F723A2066756E6374696F6E287868722C20704D65737361676529207B0D0A09090920202020202020200909202020202020';
wwv_flow_api.g_varchar2_table(123) := '202020202020202020202009617065782E64656275672E747261636528274D6F64616C204C6F76204947202D20617065782E7365727665722E706C7567696E3A6F70656E20636C69636B28696E6E657229203D3E204572726F723A272C20704D65737361';
wwv_flow_api.g_varchar2_table(124) := '6765293B0D0A09090920202020202020202020202020202020202020202020202020090920202020207D20200D0A090909092020202020202020202020202020202020202020202020202020202020202020207D293B0D0A090920202020202020202020';
wwv_flow_api.g_varchar2_table(125) := '20202020202020202020202020202020202020202020202020200D0A090920202020202020202020202020202020202020202020202020202020202020207D0D0A092020202020202020202020202020202020202020202020202020202020202020207D';
wwv_flow_api.g_varchar2_table(126) := '2C0D0A2020202020202020202020202020202020202020202020202009202020202020202020092F2F204572726F72204D6573736167650D0A090909202020202020202020202020202020202020202020202020206572726F723A2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(127) := '287868722C20704D65737361676529207B0D0A0909092020202020202020202020202020202020202020202020202009617065782E64656275672E747261636528274D6F64616C204C6F76204947202D20617065782E7365727665722E706C7567696E3A';
wwv_flow_api.g_varchar2_table(128) := '6F70656E20636C69636B203D3E204572726F723A272C20704D657373616765293B0D0A090909202020202020202020202020202020202020202020202020207D20200D0A0920202020202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(129) := '20207D293B0D0A09092020202020202020202020200D0A09092020202020202020207D293B092020202020202020200D0A09097D0D0A097D0D0A090D0A2020207D200D0A2020202077696E646F772E6F70656E4D4C6F764947203D206F70656E4D4C6F76';
wwv_flow_api.g_varchar2_table(130) := '49473B0D0A7D2928617065782E6A5175657279293B0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38043303028224255)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_file_name=>'modallovig.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E62746E2D6469616C6F672D6C6F76207B20636F6C6F723A20236666663B206261636B67726F756E642D636F6C6F723A20236530653065303B7D202E69636F6E2D6469616C6F672D6C6F76207B646973706C61793A20696E6C696E652D626C6F636B3B20';
wwv_flow_api.g_varchar2_table(2) := '20766572746963616C2D616C69676E3A20746F703B2077696474683A20313670783B206865696768743A20313670783B206C696E652D6865696768743A20313670783B20666F6E742D73697A653A20312E3772656D3B7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40288218653320338)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_file_name=>'modallovig.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A0D0A2A2A2020417574686F7220203A2053616565642048617373616E706F7572200D0A2A2A2020436F6D70616E79203A20506172746F2050617264617A6573682046617274616B284952414E41504558292D20687474703A2F2F6972616E61706578';
wwv_flow_api.g_varchar2_table(2) := '2E69720D0A2A2A202044617465202020203A20323031372F30360D0A2A2A202056657273696F6E203A20312E300D0A2A2F0D0A2166756E6374696F6E28297B766172206D6F64656C2C7265636F7264242C76616C75652C6964526567696F6E242C696724';
wwv_flow_api.g_varchar2_table(3) := '2C76696577242C7468242C6D6F64616C4F626A242C616A61784964656E746966696572242C636C656172436865636B2C72657475726E436865636B242C636F6C756D6E736D6170242C636F756E7452756E243D302C6F70656E4D4C6F7649473D7B6D616B';
wwv_flow_api.g_varchar2_table(4) := '654469616C6F6755726C3A66756E6374696F6E2875726C2C61726773297B76617220692C5F74656D703B6966287468243D746869732C75726C3D75726C2E7265706C616365282F5C5C75285C645C645C645C64292F672C66756E6374696F6E28652C6129';
wwv_flow_api.g_varchar2_table(5) := '7B72657475726E20537472696E672E66726F6D43686172436F6465287061727365496E7428612C313629297D292C61726773297B766172205F74656D703D6E65772041727261793B666F72285F74656D703D617267732E73706C697428222C22292C6172';
wwv_flow_api.g_varchar2_table(6) := '67733D5F74656D707C7C5B5D2C693D303B693C617267732E6C656E6774683B692B2B2975726C3D2D31213D656E636F6465555249436F6D706F6E656E7428617267735B695D292E696E6465784F662822253233222C30293F75726C2E7265706C61636528';
wwv_flow_api.g_varchar2_table(7) := '22253234222B692B22253234222C7468242E676574496756616C756528656E636F6465555249436F6D706F6E656E7428617267735B695D292E7265706C616365282F2532332F672C22222929293A656E636F6465555249436F6D706F6E656E7428617267';
wwv_flow_api.g_varchar2_table(8) := '735B695D292E696E6465784F66282225323476222C30293E2D313F75726C2E7265706C6163652822253234222B692B22253234222C6576616C28617267735B695D29293A75726C2E7265706C6163652822253234222B692B22253234222C656E636F6465';
wwv_flow_api.g_varchar2_table(9) := '555249436F6D706F6E656E7428617267735B695D29297D72657475726E2075726C7D2C676574496756616C75653A66756E6374696F6E2865297B72657475726E2267726964223D3D3D76696577242E696E7465726E616C4964656E746966696572262628';
wwv_flow_api.g_varchar2_table(10) := '6D6F64656C3D76696577242E6D6F64656C2C287265636F7264243D76696577242E67657453656C65637465645265636F7264732829292E666F72456163682866756E6374696F6E28612C74297B226F626A656374223D3D747970656F662876616C75653D';
wwv_flow_api.g_varchar2_table(11) := '6D6F64656C2E67657456616C7565287265636F7264245B745D2C65292926262876616C75653D76616C75652E76297D29292C76616C75657D2C736574496756616C75653A66756E6374696F6E2870446174612C7052657475726E297B696628636F6C756D';
wwv_flow_api.g_varchar2_table(12) := '6E736D617024297B76617220726573756C74242C6974656D734D617070696E673D636F6C756D6E736D6170243B6974656D52657475726E733D6974656D734D617070696E672E73756273747228302C6974656D734D617070696E672E696E6465784F6628';
wwv_flow_api.g_varchar2_table(13) := '223A2229292C6974656D734D61703D6974656D734D617070696E672E737562737472286974656D734D617070696E672E696E6465784F6628223A22292B31292C72657475726E436865636B243D7052657475726E2C6F70656E6C6F76243D21302C746824';
wwv_flow_api.g_varchar2_table(14) := '3D746869733B7661722074656D703D6E65772041727261793B74656D703D6974656D52657475726E732E73706C697428222C22292C6974656D52657475726E733D74656D707C7C5B5D2C74656D703D6974656D734D61702E73706C697428222C22292C69';
wwv_flow_api.g_varchar2_table(15) := '74656D734D61703D74656D707C7C5B5D2C617065782E64656275672E6C6F6728224D6F64616C204C6F76204947205B6974656D52657475726E735D3A20222B6974656D52657475726E73292C617065782E64656275672E6C6F6728224D6F64616C204C6F';
wwv_flow_api.g_varchar2_table(16) := '76204947205B6974656D734D61705D3A20222B6974656D734D6170292C7265636F7264242E666F72456163682866756E6374696F6E286F626A6563742C696E646578297B666F7228693D303B693C6974656D52657475726E732E6C656E6774683B692B2B';
wwv_flow_api.g_varchar2_table(17) := '29313D3D72657475726E436865636B243F28726573756C74243D6576616C282270446174612E222B656E636F6465555249436F6D706F6E656E74286974656D52657475726E735B695D29292C617065782E64656275672E6C6F6728224D6F64616C204C6F';
wwv_flow_api.g_varchar2_table(18) := '76204947205B222B656E636F6465555249436F6D706F6E656E74286974656D734D61705B695D292B225D3A20222B726573756C7424292C6D6F64656C2E73657456616C7565287265636F7264245B696E6465785D2C656E636F6465555249436F6D706F6E';
wwv_flow_api.g_varchar2_table(19) := '656E74286974656D734D61705B695D292C726573756C742429293A313D3D7468242E676574436C656172436865636B282926267052657475726E213D656E636F6465555249436F6D706F6E656E74286974656D734D61705B695D2926266D6F64656C2E73';
wwv_flow_api.g_varchar2_table(20) := '657456616C7565287265636F7264245B696E6465785D2C656E636F6465555249436F6D706F6E656E74286974656D734D61705B695D292C2222297D297D7468242E736574636C656172436865636B282131292C72657475726E436865636B243D21317D2C';
wwv_flow_api.g_varchar2_table(21) := '636C6561724974656D49673A66756E6374696F6E28652C61297B287468243D74686973292E736574636C656172436865636B282130292C652626216126267265636F7264242E666F72456163682866756E6374696F6E28612C74297B6D6F64656C2E7365';
wwv_flow_api.g_varchar2_table(22) := '7456616C7565287265636F7264245B745D2C652C2222297D292C636F6C756D6E736D61702426267468242E736574496756616C7565286E756C6C2C65292C7468242E736574636C656172436865636B282131297D2C736574636C656172436865636B3A66';
wwv_flow_api.g_varchar2_table(23) := '756E6374696F6E2865297B636C656172436865636B3D657D2C676574436C656172436865636B3A66756E6374696F6E28297B72657475726E20636C656172436865636B7D2C736574416A61784964656E7469666965723A66756E6374696F6E28652C6129';
wwv_flow_api.g_varchar2_table(24) := '7B616A61784964656E746966696572243D226F70656E223D3D613F652E7461726765742E6E657874456C656D656E745369626C696E672E6669727374456C656D656E744368696C642E6E657874456C656D656E745369626C696E672E696E6E6572546578';
wwv_flow_api.g_varchar2_table(25) := '743A226368616E6765223D3D613F652E7461726765742E6E657874456C656D656E745369626C696E672E6E657874456C656D656E745369626C696E672E6669727374456C656D656E744368696C642E6E657874456C656D656E745369626C696E672E696E';
wwv_flow_api.g_varchar2_table(26) := '6E6572546578743A652E7461726765742E696E6E6572546578742C616A61784964656E746966696572243D616A61784964656E746966696572242E7265706C616365282F5B22275D2F672C2222297D2C736574526567696F6E49473A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(27) := '2865297B76617220613D617065782E726567696F6E2E66696E64436C6F7365737428652E746172676574293B612626286964526567696F6E243D612E656C656D656E745B305D2E617474726962757465735B315D2E6E6F646556616C75652C6967243D61';
wwv_flow_api.g_varchar2_table(28) := '7065782E726567696F6E286964526567696F6E24292E77696467657428292C76696577243D6967242E696E7465726163746976654772696428226765745669657773222C6967242E696E74657261637469766547726964282267657443757272656E7456';
wwv_flow_api.g_varchar2_table(29) := '69657749642229292C6D6F64656C3D76696577242E6D6F64656C2C7265636F7264243D76696577242E67657453656C65637465645265636F72647328292C617065782E64656275672E6C6F6728224D6F64616C204C6F76204947205B43757272656E7420';
wwv_flow_api.g_varchar2_table(30) := '7265636F72645D3A20222B7265636F72642429297D2C616A617843616C6C3A66756E6374696F6E28652C612C74297B7468242E736574416A61784964656E74696669657228652C61292C7468242E736574526567696F6E49472865292C617065782E7365';
wwv_flow_api.g_varchar2_table(31) := '727665722E706C7567696E28616A61784964656E746966696572242C7B7830313A224745545F434F4C535F4D4150227D2C7B737563636573733A66756E6374696F6E286E297B6E2E73756363657373262628636F6C756D6E736D6170243D6E2E6D6F6461';
wwv_flow_api.g_varchar2_table(32) := '6C636F6C736D61702C22636C656172223D3D613F285F636F6C4E616D653D652E7461726765742E69642C5F636F6C4E616D653D5F636F6C4E616D652E737562737472285F636F6C4E616D652E696E6465784F6628225F22292B3129293A5F636F6C4E616D';
wwv_flow_api.g_varchar2_table(33) := '653D652E7461726765742E646174617365742E69642C7468242E636C6561724974656D4967285F636F6C4E616D652C7429297D2C6572726F723A66756E6374696F6E28652C61297B617065782E64656275672E747261636528224D6F64616C204C6F7620';
wwv_flow_api.g_varchar2_table(34) := '4947202D20616A617843616C6C5B4745545F434F4C535F4D4150203D3E4572726F725D3A20222C61297D7D297D2C5F696E69745F6576656E745F6D6F64616C6C6F763A66756E6374696F6E2870446174612C70416A61784964297B7468243D746869732C';
wwv_flow_api.g_varchar2_table(35) := '72657475726E436865636B243D21312C7468242E736574636C656172436865636B282131292C636F756E7452756E242B3D313B766172205F616A61786964733D22223B617065782E64656275672E6C6F6728224D6F64616C204C6F76204947205B4D6F64';
wwv_flow_api.g_varchar2_table(36) := '616C4974656D3D3E222B636F756E7452756E242B225D3A20222B7044617461293B766172206A736F6E44617461243D4A534F4E2E7061727365287044617461293B6966286A736F6E44617461242E63617363616465436F6C73297B766172205F616A6178';
wwv_flow_api.g_varchar2_table(37) := '6964732C5F74656D703D6E65772041727261793B666F72285F74656D703D6A736F6E44617461242E63617363616465436F6C732E73706C697428222C22292C5F74656D703D5F74656D707C7C5B5D2C693D303B693C5F74656D702E6C656E6774683B692B';
wwv_flow_api.g_varchar2_table(38) := '2B295F616A61786964733D2428222343222B5F74656D705B695D292E617474722822646174612D616A6178696422292C5F616A61786964733D5F616A61786964732B222C222B70416A617849642C5F616A61786964733D5F616A61786964732E7265706C';
wwv_flow_api.g_varchar2_table(39) := '616365282F5E756E646566696E65642C3F2F2C2222292C2428222343222B5F74656D705B695D292E617474722822646174612D616A61786964222C5F616A6178696473292C2428222343222B5F74656D705B695D292E62696E6428226368616E6765222C';
wwv_flow_api.g_varchar2_table(40) := '66756E6374696F6E2865297B706172656E743D2428652E746172676574292C63757272656E74696749443D2428652E746172676574292E706172656E747328226469762E612D494722292E617474722822696422292C5F7370616E436C6561723D242865';
wwv_flow_api.g_varchar2_table(41) := '2E746172676574292E636C6F73657374282264697623222B63757272656E7469674944292E66696E642822627574746F6E2E69672D6C6F762D636C65617222292C24285F7370616E436C656172292E656163682866756E6374696F6E2861297B5F616A61';
wwv_flow_api.g_varchar2_table(42) := '786964733D24282223222B652E7461726765742E6964292E646174612822616A6178696422293B76617220743D6E65772041727261793B666F7228743D28743D5F616A61786964732E73706C697428222C2229297C7C5B5D2C693D303B693C742E6C656E';
wwv_flow_api.g_varchar2_table(43) := '6774683B692B2B29745B695D3D3D24285F7370616E436C656172295B615D2E696E6E6572546578742626285F627574746F6E436C6561723D2428277370616E3A636F6E7461696E732822272B24285F7370616E436C656172295B615D2E696E6E65725465';
wwv_flow_api.g_varchar2_table(44) := '78742B27222927292E636C6F736573742822627574746F6E2E69672D6C6F762D636C65617222292C5F627574746F6E436C65617226265F627574746F6E436C6561722E747269676765722822636C69636B2229297D297D297D313D3D636F756E7452756E';
wwv_flow_api.g_varchar2_table(45) := '242626282428222E69672D6C6F762D636C65617222292E62696E642822636C69636B222C66756E6374696F6E2865297B2428222E69672D6C6F762D636C65617222292E70726F70282264697361626C6564222C2130292C73657454696D656F7574286675';
wwv_flow_api.g_varchar2_table(46) := '6E6374696F6E28297B2428222E69672D6C6F762D636C65617222292E70726F70282264697361626C6564222C2131297D2C353030292C7468242E616A617843616C6C28652C22636C656172222C2131297D292C2428222E69672D6D6F64616C2D6C6F7622';
wwv_flow_api.g_varchar2_table(47) := '292E62696E6428226368616E6765222C66756E6374696F6E2865297B31213D72657475726E436865636B24262631213D7468242E676574436C656172436865636B28292626287468242E736574526567696F6E49472865292C7468242E616A617843616C';
wwv_flow_api.g_varchar2_table(48) := '6C28652C226368616E6765222C213029297D292C2428222E69672D6C6F762D6F70656E22292E64626C636C69636B2866756E6374696F6E2865297B72657475726E20652E73746F7050726F7061676174696F6E28292C652E70726576656E744465666175';
wwv_flow_api.g_varchar2_table(49) := '6C7428292C21317D292C2428222E69672D6C6F762D6F70656E22292E62696E642822636C69636B222C66756E6374696F6E286576656E74297B2428222E69672D6C6F762D6F70656E22292E70726F70282264697361626C6564222C2130292C7365745469';
wwv_flow_api.g_varchar2_table(50) := '6D656F75742866756E6374696F6E28297B2428222E69672D6C6F762D6F70656E22292E70726F70282264697361626C6564222C2131297D2C353030293B766172205F6D6F64616C75726C2C5F6D6F64616C6C6F7676616C7565733B7468242E736574416A';
wwv_flow_api.g_varchar2_table(51) := '61784964656E746966696572286576656E742C226F70656E22292C7468242E736574526567696F6E4947286576656E74292C617065782E7365727665722E706C7567696E28616A61784964656E746966696572242C7B7830313A22505245504152455F55';
wwv_flow_api.g_varchar2_table(52) := '524C227D2C7B737563636573733A66756E6374696F6E287044617461297B69662870446174612E73756363657373297B636F6C756D6E736D6170243D70446174612E6D6F64616C636F6C736D61702C5F6D6F64616C75726C3D70446174612E6F70656E6D';
wwv_flow_api.g_varchar2_table(53) := '6F64616C2C5F6D6F64616C6C6F7676616C7565733D70446174612E6D6F64616C6C6F7676616C7565732C617065782E64656275672E6C6F6728224D6F64616C204C6F76204947205B505245504152455F55524C2D636F6C756D6E736D61705D3A20222B63';
wwv_flow_api.g_varchar2_table(54) := '6F6C756D6E736D617024293B766172206D6F64616C75726C49473D7468242E6D616B654469616C6F6755726C285F6D6F64616C75726C2C5F6D6F64616C6C6F7676616C756573293B617065782E7365727665722E706C7567696E28616A61784964656E74';
wwv_flow_api.g_varchar2_table(55) := '6966696572242C7B7830313A6D6F64616C75726C49472C7830323A6964526567696F6E247D2C7B737563636573733A66756E6374696F6E287044617461297B70446174612E73756363657373262628617065782E64656275672E6C6F6728224D6F64616C';
wwv_flow_api.g_varchar2_table(56) := '204C6F76204947205B505245504152455F55524C2D6F70656E6D6F64616C5D3A20222B70446174612E6F70656E6D6F64616C292C617065782E64656275672E6C6F6728224D6F64616C204C6F76204947205B4469616C6F675F68746D6C5F6578705D3A20';
wwv_flow_api.g_varchar2_table(57) := '222B70446174612E6D6F64616C68746D6C657870292C617065782E64656275672E6C6F6728224D6F64616C204C6F76204947205B4469616C6F675F526F7720436C69636B65645D3A20222B70446174612E6D6F64616C736372697074646967292C657661';
wwv_flow_api.g_varchar2_table(58) := '6C2870446174612E6F70656E6D6F64616C29297D2C6572726F723A66756E6374696F6E28652C61297B617065782E64656275672E747261636528224D6F64616C204C6F76204947202D20617065782E7365727665722E706C7567696E3A6F70656E20636C';
wwv_flow_api.g_varchar2_table(59) := '69636B28696E6E657229203D3E204572726F723A222C61297D7D297D7D2C6572726F723A66756E6374696F6E28652C61297B617065782E64656275672E747261636528224D6F64616C204C6F76204947202D20617065782E7365727665722E706C756769';
wwv_flow_api.g_varchar2_table(60) := '6E3A6F70656E20636C69636B203D3E204572726F723A222C61297D7D297D29297D7D3B77696E646F772E6F70656E4D4C6F7649473D6F70656E4D4C6F7649477D28617065782E6A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(40714328942035596)
,p_plugin_id=>wwv_flow_api.id(37946510214183792)
,p_file_name=>'modallovig.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
