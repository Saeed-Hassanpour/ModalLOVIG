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
,p_release=>'5.1.2.00.09'
,p_default_workspace_id=>1681363194291772
,p_default_application_id=>154
,p_default_owner=>'TEST'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 154 - MODAL LOV IG- Plugin
--
-- Application Export:
--   Application:     154
--   Name:            MODAL LOV IG- Plugin
--   Date and Time:   10:55 Thursday August 24, 2017
--   Exported By:     ADMIN
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.2.00.09
--   Instance ID:     108830766130513
--

-- Application Statistics:
--   Pages:                      3
--     Items:                    8
--     Processes:                5
--     Regions:                  3
--     Buttons:                  1
--     Dynamic Actions:          2
--   Shared Components:
--     Logic:
--       Items:                  2
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included
--     Install scripts:          1

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,154)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TEST')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'MODAL LOV IG- Plugin')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'MODALLOVIG')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'A3DA9EFE34BB63C10BCE3377F2D307C5A3F839CF1025D80D5FAA7C2B4546993A'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(23284033462912399)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:MODAL LOV IG- Plugin'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20170824105410'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23231645153912058)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(23283795091912351)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(23283941818912392)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(23231054614912056)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(23231126430912058)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(23231272267912058)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(23231348282912058)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(23231438195912058)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(23231500104912058)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(23324838289634548)
,p_name=>'GL_HTML_EXP_DIALOG'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(23325001071636029)
,p_name=>'GL_ROW_SCRIPT_DIALOG'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(23285101460912449)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23231724377912084)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23231864471912099)
,p_page_template_id=>wwv_flow_api.id(23231724377912084)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23231984127912102)
,p_page_template_id=>wwv_flow_api.id(23231724377912084)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23232059139912102)
,p_page_template_id=>wwv_flow_api.id(23231724377912084)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23232114229912102)
,p_page_template_id=>wwv_flow_api.id(23231724377912084)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23232291022912102)
,p_page_template_id=>wwv_flow_api.id(23231724377912084)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23232395952912102)
,p_page_template_id=>wwv_flow_api.id(23231724377912084)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23232485659912102)
,p_page_template_id=>wwv_flow_api.id(23231724377912084)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23232573279912102)
,p_page_template_id=>wwv_flow_api.id(23231724377912084)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23232623237912109)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23232766811912110)
,p_page_template_id=>wwv_flow_api.id(23232623237912109)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23232817392912110)
,p_page_template_id=>wwv_flow_api.id(23232623237912109)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23232944640912110)
,p_page_template_id=>wwv_flow_api.id(23232623237912109)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23233081073912110)
,p_page_template_id=>wwv_flow_api.id(23232623237912109)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23233113730912110)
,p_page_template_id=>wwv_flow_api.id(23232623237912109)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23233219310912110)
,p_page_template_id=>wwv_flow_api.id(23232623237912109)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23233341460912110)
,p_page_template_id=>wwv_flow_api.id(23232623237912109)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23233482880912110)
,p_page_template_id=>wwv_flow_api.id(23232623237912109)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23233599455912111)
,p_page_template_id=>wwv_flow_api.id(23232623237912109)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23233660396912111)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23233728620912111)
,p_page_template_id=>wwv_flow_api.id(23233660396912111)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23233891936912111)
,p_page_template_id=>wwv_flow_api.id(23233660396912111)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23233997136912111)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23234090783912112)
,p_page_template_id=>wwv_flow_api.id(23233997136912111)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23234145156912112)
,p_page_template_id=>wwv_flow_api.id(23233997136912111)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23234289008912112)
,p_page_template_id=>wwv_flow_api.id(23233997136912111)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23234333656912113)
,p_page_template_id=>wwv_flow_api.id(23233997136912111)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23234445943912113)
,p_page_template_id=>wwv_flow_api.id(23233997136912111)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23234590265912113)
,p_page_template_id=>wwv_flow_api.id(23233997136912111)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23234613666912113)
,p_page_template_id=>wwv_flow_api.id(23233997136912111)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23234778001912113)
,p_page_template_id=>wwv_flow_api.id(23233997136912111)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23234843495912113)
,p_page_template_id=>wwv_flow_api.id(23233997136912111)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23234985011912113)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23235011076912113)
,p_page_template_id=>wwv_flow_api.id(23234985011912113)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23235130917912113)
,p_page_template_id=>wwv_flow_api.id(23234985011912113)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23235267881912113)
,p_page_template_id=>wwv_flow_api.id(23234985011912113)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23235375298912114)
,p_page_template_id=>wwv_flow_api.id(23234985011912113)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23235449572912114)
,p_page_template_id=>wwv_flow_api.id(23234985011912113)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23235503668912114)
,p_page_template_id=>wwv_flow_api.id(23234985011912113)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23235669796912114)
,p_page_template_id=>wwv_flow_api.id(23234985011912113)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23235763389912115)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23235856601912115)
,p_page_template_id=>wwv_flow_api.id(23235763389912115)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23235955984912115)
,p_page_template_id=>wwv_flow_api.id(23235763389912115)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23236078607912115)
,p_page_template_id=>wwv_flow_api.id(23235763389912115)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23236254333912125)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23236372464912126)
,p_page_template_id=>wwv_flow_api.id(23236254333912125)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23236487911912126)
,p_page_template_id=>wwv_flow_api.id(23236254333912125)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23236569276912126)
,p_page_template_id=>wwv_flow_api.id(23236254333912125)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23236657756912126)
,p_page_template_id=>wwv_flow_api.id(23236254333912125)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23236746838912126)
,p_page_template_id=>wwv_flow_api.id(23236254333912125)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23236801404912126)
,p_page_template_id=>wwv_flow_api.id(23236254333912125)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23236909273912126)
,p_page_template_id=>wwv_flow_api.id(23236254333912125)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23237086959912126)
,p_page_template_id=>wwv_flow_api.id(23236254333912125)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23237133941912128)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              <div class="t-Footer-srMode">#SCREEN_READER_TOGGLE#</div>',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23237279522912129)
,p_page_template_id=>wwv_flow_api.id(23237133941912128)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23237315388912129)
,p_page_template_id=>wwv_flow_api.id(23237133941912128)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23237419150912129)
,p_page_template_id=>wwv_flow_api.id(23237133941912128)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23237574314912131)
,p_page_template_id=>wwv_flow_api.id(23237133941912128)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23237677251912131)
,p_page_template_id=>wwv_flow_api.id(23237133941912128)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23237756474912131)
,p_page_template_id=>wwv_flow_api.id(23237133941912128)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23237892883912131)
,p_page_template_id=>wwv_flow_api.id(23237133941912128)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(23237911803912131)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23238053357912131)
,p_page_template_id=>wwv_flow_api.id(23237911803912131)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23238196615912131)
,p_page_template_id=>wwv_flow_api.id(23237911803912131)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(23238257060912131)
,p_page_template_id=>wwv_flow_api.id(23237911803912131)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(23272939304912248)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(23273036598912255)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(23273181115912255)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23238478730912133)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23238544922912141)
,p_plug_template_id=>wwv_flow_api.id(23238478730912133)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23240241093912156)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23240305240912159)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23240451167912162)
,p_plug_template_id=>wwv_flow_api.id(23240305240912159)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23240558564912162)
,p_plug_template_id=>wwv_flow_api.id(23240305240912159)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23240644677912162)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23240746222912162)
,p_plug_template_id=>wwv_flow_api.id(23240644677912162)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23240849719912162)
,p_plug_template_id=>wwv_flow_api.id(23240644677912162)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23241534441912168)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23241678026912168)
,p_plug_template_id=>wwv_flow_api.id(23241534441912168)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23241705878912168)
,p_plug_template_id=>wwv_flow_api.id(23241534441912168)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23244955284912170)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23245076069912170)
,p_plug_template_id=>wwv_flow_api.id(23244955284912170)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23245175395912170)
,p_plug_template_id=>wwv_flow_api.id(23244955284912170)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23247165344912171)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23248051445912177)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23248106523912177)
,p_plug_template_id=>wwv_flow_api.id(23248051445912177)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23248760819912177)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23248844353912177)
,p_plug_template_id=>wwv_flow_api.id(23248760819912177)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23249754550912178)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23250009900912178)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23250179161912178)
,p_plug_template_id=>wwv_flow_api.id(23250009900912178)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23250242644912178)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23250345683912178)
,p_plug_template_id=>wwv_flow_api.id(23250242644912178)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23250410535912178)
,p_plug_template_id=>wwv_flow_api.id(23250242644912178)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23253475580912182)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23253546765912183)
,p_plug_template_id=>wwv_flow_api.id(23253475580912182)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23253685218912183)
,p_plug_template_id=>wwv_flow_api.id(23253475580912182)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23254644463912183)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(23255038534912183)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(23255151912912183)
,p_plug_template_id=>wwv_flow_api.id(23255038534912183)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23263686604912208)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23265310254912226)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23267713937912233)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23268546184912233)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES# u-color #A06#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23269719675912234)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23270268128912235)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23270389303912235)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23270401776912236)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23270550615912236)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23271375853912238)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(23271847819912238)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23255622209912187)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23255702661912192)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23257421980912195)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23259767639912197)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23260154045912197)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23260234390912198)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(23260234390912198)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23261589471912202)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23261722650912202)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(23262715519912203)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23272488347912240)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23272567702912246)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23272604297912246)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23272749189912247)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(23272834440912247)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(23273528974912256)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(23273708934912279)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(23273620124912259)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(23274311912912304)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(23237133941912128)
,p_default_dialog_template=>wwv_flow_api.id(23235763389912115)
,p_error_template=>wwv_flow_api.id(23233660396912111)
,p_printer_friendly_template=>wwv_flow_api.id(23237133941912128)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(23233660396912111)
,p_default_button_template=>wwv_flow_api.id(23273036598912255)
,p_default_region_template=>wwv_flow_api.id(23250242644912178)
,p_default_chart_template=>wwv_flow_api.id(23250242644912178)
,p_default_form_template=>wwv_flow_api.id(23250242644912178)
,p_default_reportr_template=>wwv_flow_api.id(23250242644912178)
,p_default_tabform_template=>wwv_flow_api.id(23250242644912178)
,p_default_wizard_template=>wwv_flow_api.id(23250242644912178)
,p_default_menur_template=>wwv_flow_api.id(23254644463912183)
,p_default_listr_template=>wwv_flow_api.id(23250242644912178)
,p_default_irr_template=>wwv_flow_api.id(23249754550912178)
,p_default_report_template=>wwv_flow_api.id(23260234390912198)
,p_default_label_template=>wwv_flow_api.id(23272567702912246)
,p_default_menu_template=>wwv_flow_api.id(23273528974912256)
,p_default_calendar_template=>wwv_flow_api.id(23273620124912259)
,p_default_list_template=>wwv_flow_api.id(23267713937912233)
,p_default_nav_list_template=>wwv_flow_api.id(23271375853912238)
,p_default_top_nav_list_temp=>wwv_flow_api.id(23271375853912238)
,p_default_side_nav_list_temp=>wwv_flow_api.id(23270401776912236)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(23240644677912162)
,p_default_dialogr_template=>wwv_flow_api.id(23240241093912156)
,p_default_option_label=>wwv_flow_api.id(23272567702912246)
,p_default_required_label=>wwv_flow_api.id(23272749189912247)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(23270389303912235)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.1/')
,p_files_version=>62
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#HAMMERJS_URL#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(23273832663912293)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(23273945967912294)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(23274037854912294)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(23274116108912294)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(23274236038912294)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23238764730912151)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23238928156912154)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23239232144912155)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23239490862912155)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23240986580912163)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23241106761912164)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23241895781912168)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23242207996912169)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23242827584912169)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23243425365912169)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23243682699912169)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23244557295912170)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23246121617912170)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23247318602912171)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23247736334912177)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23248221390912177)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23249162759912178)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23253720602912183)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23253980109912183)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23254361725912183)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23255289402912183)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23255866230912193)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23256066167912193)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23257662390912195)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23258342892912196)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23258534234912196)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23258985804912196)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23259809321912197)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23260335917912199)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23260666140912199)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23260886639912199)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23261828669912202)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23263711171912220)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23264545361912225)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23265527249912226)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23266212702912227)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23266579674912227)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23266860059912227)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23268258473912233)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23269115656912234)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23271939845912238)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23273275857912255)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23274434670912338)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23274647826912338)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23275490263912339)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23275651892912339)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23276457567912339)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23276639155912339)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23277479625912340)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23277610182912340)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23278416892912341)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23278644692912341)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23278802719912343)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23279001289912343)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23279219684912344)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23279427734912344)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23279640217912344)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23280319092912344)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23281052290912345)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23281589138912345)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23281717026912345)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23281963185912345)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23282107282912345)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23282438115912346)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23282796115912346)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23282915305912346)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23283187865912346)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(23283383811912346)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Radio Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display for radio group items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23236160331912116)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(23235763389912115)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23238368377912131)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(23237911803912131)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23238649458912146)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23238849314912153)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(23238764730912151)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23239047692912154)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(23238928156912154)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23239133874912154)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(23238928156912154)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23239342658912155)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(23239232144912155)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23239575834912155)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(23239490862912155)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23239636873912155)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(23238764730912151)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23239733141912155)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(23239232144912155)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23239899775912155)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(23238764730912151)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23239989969912155)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(23239232144912155)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23240021229912155)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(23238764730912151)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23240193665912156)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23238478730912133)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(23239490862912155)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23241007204912163)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23240644677912162)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23241245397912164)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(23240644677912162)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(23241106761912164)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23241350735912167)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(23240644677912162)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23241475581912168)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(23240644677912162)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(23241106761912164)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23241920781912168)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(23241895781912168)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23242037316912169)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(23241895781912168)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23242182421912169)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(23241895781912168)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23242315837912169)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23242449193912169)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23242543468912169)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23242627338912169)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(23241895781912168)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23242700191912169)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23242964130912169)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23243075392912169)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23243157354912169)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23243236383912169)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23243305731912169)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23243507311912169)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(23243425365912169)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23243717733912169)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(23243682699912169)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23243841987912169)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(23243425365912169)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23243921563912169)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23244082621912170)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23244183652912170)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23244274579912170)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(23243682699912169)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23244362934912170)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23244457826912170)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23244607802912170)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(23244557295912170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23244745442912170)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(23244557295912170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23244832203912170)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23241534441912168)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23245222589912170)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23245384319912170)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23245413630912170)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23245589967912170)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23245654901912170)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23245797732912170)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23245834575912170)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23245901682912170)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23246058528912170)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23246243162912170)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(23246121617912170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23246394080912170)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(23246121617912170)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23246463807912170)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(23243682699912169)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23246571832912170)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23246681624912170)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23246763584912171)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23246829156912171)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23246985359912171)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(23243682699912169)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23247023828912171)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23244955284912170)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23247200960912171)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23247165344912171)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23247498752912171)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23247165344912171)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(23247318602912171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23247529327912176)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23247165344912171)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(23247318602912171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23247619244912176)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23247165344912171)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(23247318602912171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23247863720912177)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23247165344912171)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(23247736334912177)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23247909069912177)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23247165344912171)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(23247736334912177)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23248359721912177)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23248051445912177)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(23248221390912177)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23248452829912177)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23248051445912177)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23248503641912177)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23248051445912177)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23248647121912177)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23248051445912177)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23248911088912178)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23248760819912177)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23249025663912178)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23248760819912177)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23249253690912178)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23248760819912177)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(23249162759912178)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23249363200912178)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23248760819912177)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(23249162759912178)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23249432599912178)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23248760819912177)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23249532711912178)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23248760819912177)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23249632791912178)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23248760819912177)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(23249162759912178)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23249844539912178)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23249754550912178)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23249973782912178)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23249754550912178)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23250579183912178)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23250611370912178)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23250729665912178)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23250839255912178)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(23242207996912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23250902170912179)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251069920912179)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251123485912179)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251257092912179)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251339103912179)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251445751912179)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251525158912179)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251656604912179)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251782882912179)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251825020912179)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23251948566912179)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252032665912179)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252137353912179)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252231277912179)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252307712912179)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(23242827584912169)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252452221912179)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(23243425365912169)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252565158912179)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(23243682699912169)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252639526912180)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(23243425365912169)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252719131912181)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252827520912181)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23252936540912181)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23253071722912181)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(23243682699912169)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23253178009912181)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23253270187912182)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23253321046912182)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(23250242644912178)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(23240986580912163)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23253888767912183)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23253475580912182)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(23253720602912183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23254074574912183)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23253475580912182)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(23253980109912183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23254154573912183)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23253475580912182)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23254219835912183)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23253475580912182)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(23253980109912183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23254405416912183)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23253475580912182)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(23254361725912183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23254508734912183)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23253475580912182)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(23254361725912183)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23254756651912183)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23254644463912183)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(23247318602912171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23254877114912183)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23254644463912183)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23254937936912183)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(23254644463912183)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(23247318602912171)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23255338607912183)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(23255038534912183)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(23255289402912183)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23255486445912184)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23255038534912183)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(23255289402912183)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23255502469912184)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(23255038534912183)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23255953572912193)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(23255866230912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23256135959912194)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23256224592912194)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(23255866230912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23256320423912194)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23256419139912194)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(23255866230912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23256514127912194)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23256664135912194)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23256735950912194)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(23255866230912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23256807082912194)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(23255866230912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23256969621912194)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23257025365912194)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23257133523912194)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23257266128912194)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23257305079912194)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23255702661912192)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23257530743912195)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23257764618912195)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(23257662390912195)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23257831586912195)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23257904446912196)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(23257662390912195)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23258060426912196)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23258155135912196)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(23257662390912195)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23258233667912196)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23258489953912196)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(23258342892912196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23258643979912196)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(23258534234912196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23258706355912196)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(23258534234912196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23258839287912196)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(23258342892912196)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23259041396912196)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(23258985804912196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23259193322912196)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(23258985804912196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23259289620912197)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(23258342892912196)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23259373515912197)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23259433633912197)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(23257662390912195)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23259573965912197)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23259644624912197)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23257421980912195)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23259903433912197)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23259767639912197)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(23259809321912197)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23260020594912197)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23259767639912197)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(23259809321912197)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23260455675912199)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23260234390912198)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(23260335917912199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23260585828912199)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23260234390912198)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(23260335917912199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23260726182912199)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23260234390912198)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(23260666140912199)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23260944827912199)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23260234390912198)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(23260886639912199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23261044821912199)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23260234390912198)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(23260886639912199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23261135128912199)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23260234390912198)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(23260886639912199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23261240296912201)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23260234390912198)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(23260666140912199)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23261350620912202)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23260234390912198)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23261472038912202)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23260234390912198)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(23260886639912199)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23261642388912202)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(23261589471912202)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(23258342892912196)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23261919726912202)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23261722650912202)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23262045993912202)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23261722650912202)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23262151761912202)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23261722650912202)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23262264444912202)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23261722650912202)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23262311723912202)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23261722650912202)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23262427320912203)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(23261722650912202)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23262506523912203)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23261722650912202)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23262606206912203)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23261722650912202)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23262885113912203)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(23262715519912203)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23262900977912204)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23262715519912203)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23263047479912204)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23262715519912203)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23263122686912204)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(23262715519912203)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23263269618912204)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(23262715519912203)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(23256066167912193)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23263315645912204)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(23262715519912203)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23263489244912204)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(23262715519912203)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23263512183912204)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(23262715519912203)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(23261828669912202)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23263839518912220)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23263926247912224)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23264040666912224)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23264121608912224)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23264230422912224)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23264352126912225)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23264462073912225)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23264624735912225)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(23264545361912225)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23264716715912225)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(23264545361912225)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23264869007912225)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23264964082912225)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(23264545361912225)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23265071220912225)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23265169642912225)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(23264545361912225)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23265264916912225)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23263686604912208)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(23264545361912225)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23265484349912226)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23265675520912226)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(23265527249912226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23265709106912227)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23265869443912227)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(23265527249912226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23265977883912227)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23266037757912227)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(23265527249912226)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23266150119912227)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23266371200912227)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(23266212702912227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23266441717912227)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23266656017912227)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(23266579674912227)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23266773249912227)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(23266212702912227)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23266916746912227)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(23266860059912227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23267038789912227)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(23266860059912227)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23267103480912228)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(23266212702912227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23267211316912228)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23267387744912228)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(23265527249912226)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23267469075912228)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(23266579674912227)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23267575092912228)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23267602121912233)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23265310254912226)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23267892463912233)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23267713937912233)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(23266212702912227)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23267926484912233)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23267713937912233)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23268091298912233)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23267713937912233)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23268162843912233)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23267713937912233)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23268379011912233)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23267713937912233)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(23268258473912233)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23268405969912233)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23267713937912233)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(23268258473912233)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23268690966912234)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23268707778912234)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23268848686912234)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23268959216912234)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23269002141912234)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23269238432912234)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'t-MediaList--large'
,p_group_id=>wwv_flow_api.id(23269115656912234)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23269388015912234)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23269467352912234)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23269597900912234)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23269631990912234)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(23268546184912233)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23269889379912235)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(23269719675912234)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23269977962912235)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23269719675912234)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23270038437912235)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23269719675912234)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23270158041912235)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23269719675912234)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23270660303912237)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23270550615912236)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(23266860059912227)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23270754880912237)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23270550615912236)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(23263711171912220)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23270822576912237)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23270550615912236)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(23266860059912227)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23270947298912237)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23270550615912236)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(23269115656912234)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23271010720912238)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23270550615912236)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(23266212702912227)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23271161740912238)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23270550615912236)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(23266212702912227)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23271214738912238)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(23270550615912236)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(23269115656912234)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23271439542912238)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23271375853912238)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23271545559912238)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23271375853912238)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23271699200912238)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23271375853912238)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23271730976912238)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(23271375853912238)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23272069439912238)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23271847819912238)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(23271939845912238)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23272128932912238)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(23271847819912238)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(23271939845912238)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23272273984912238)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(23271847819912238)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(23271939845912238)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23272351585912238)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(23271847819912238)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23273365422912255)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(23273181115912255)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(23273275857912255)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23273448905912255)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(23273181115912255)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(23273275857912255)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23274587087912338)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(23274434670912338)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23274747273912338)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(23274647826912338)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23274808497912338)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(23274434670912338)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23274961844912338)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(23274647826912338)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23275000673912338)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(23274434670912338)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23275137733912338)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(23274647826912338)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23275262166912339)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(23274434670912338)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23275395890912339)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(23274647826912338)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23275579376912339)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(23275490263912339)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23275745757912339)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(23275651892912339)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23275833544912339)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(23275490263912339)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23275973018912339)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(23275651892912339)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23276047673912339)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(23275490263912339)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23276196613912339)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(23275651892912339)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23276221102912339)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(23275490263912339)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23276316882912339)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(23275651892912339)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23276531956912339)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(23276457567912339)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23276702684912339)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(23276639155912339)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23276842178912340)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(23276457567912339)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23276918661912340)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(23276639155912339)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23277087798912340)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(23276457567912339)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23277180370912340)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(23276639155912339)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23277258051912340)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(23276457567912339)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23277340239912340)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(23276639155912339)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23277549010912340)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(23277479625912340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23277759807912340)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(23277610182912340)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23277897492912341)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(23277479625912340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23277980294912341)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(23277610182912340)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23278061325912341)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(23277479625912340)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23278166750912341)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(23277610182912340)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23278205509912341)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(23277479625912340)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23278324092912341)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(23277610182912340)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23278574332912341)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(23278416892912341)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23278760872912343)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(23278644692912341)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23278919626912343)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(23278802719912343)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23279174905912343)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(23279001289912343)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23279375545912344)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(23279219684912344)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23279575686912344)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(23279427734912344)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23279706626912344)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(23279640217912344)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23279882647912344)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(23279640217912344)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23279946052912344)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(23278644692912341)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23280003830912344)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(23278802719912343)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23280131049912344)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(23279001289912343)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23280216775912344)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(23279219684912344)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23280418558912344)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(23280319092912344)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23280540090912344)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(23280319092912344)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23280609555912344)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(23280319092912344)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23280723751912345)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(23278416892912341)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23280895813912345)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(23279640217912344)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23280931918912345)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(23279427734912344)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23281122037912345)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(23281052290912345)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23281278828912345)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(23278416892912341)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23281360849912345)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(23279427734912344)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23281451176912345)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(23278416892912341)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23281699400912345)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(23281589138912345)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23281842271912345)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(23281717026912345)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23282089207912345)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(23281963185912345)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23282250563912345)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(23282107282912345)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23282339162912345)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(23282107282912345)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23282576651912346)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(23282438115912346)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23282667504912346)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(23281717026912345)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23282852124912346)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(23282796115912346)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23283067150912346)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(23282915305912346)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23283289691912346)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(23283187865912346)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23283486748912347)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(23283383811912346)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23283503874912347)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(23283635325912347)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(23282796115912346)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(23284033462912399)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
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
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','IR.SAEEDHASSANPOUR.MODALLOVIG'),'')
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
'                      class="popup_lov apex-item-text apex-item-popup-lov js-ignoreChange ig-modal-lov modal-display-value" ',
'                      size="''||p_item.element_width||''" ',
'                      maxlength="''||p_item.element_max_length||''" ''|| ',
'                      v_item_attrib||'' ''||l_readonly||'' >''',
'        );',
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
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(23283854771912352)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:5:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_navigation_list_id=>wwv_flow_api.id(23231645153912058)
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_api.id(23271375853912238)
,p_nav_list_template_options=>'#DEFAULT#:js-tabLike'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(23283795091912351)
,p_nav_bar_list_template_id=>wwv_flow_api.id(23270389303912235)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(23283854771912352)
,p_name=>'EMP_LOV'
,p_page_mode=>'MODAL'
,p_step_title=>'EMP_LOV'
,p_step_sub_title=>'EMP_LOV'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-fht-tbody tr{',
'  cursor: pointer;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20170810112406'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23026381648742631)
,p_plug_name=>'EMP'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23249754550912178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPNO,',
'       ENAME,',
'       JOB,',
'       MGR,',
'       HIREDATE,',
'       SAL,',
'       COMM,',
'       DEPTNO',
'  from EMP'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(23026411433742632)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ADMIN'
,p_internal_uid=>23026411433742632
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23026533029742633)
,p_db_column_name=>'EMPNO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Empno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23026657183742634)
,p_db_column_name=>'ENAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ename'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#ENAME#',
'&GL_HTML_EXP_DIALOG.'))
,p_column_type=>'STRING'
,p_static_id=>'ename-id'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23026777620742635)
,p_db_column_name=>'JOB'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Job'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23026804893742636)
,p_db_column_name=>'MGR'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mgr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23026911628742637)
,p_db_column_name=>'HIREDATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hiredate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23027002233742638)
,p_db_column_name=>'SAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Sal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23027146119742639)
,p_db_column_name=>'COMM'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Comm'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23027232456742640)
,p_db_column_name=>'DEPTNO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Deptno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(23349229392056534)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'233493'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'EMPNO:ENAME:JOB:MGR:HIREDATE:SAL:COMM:DEPTNO'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23027339050742641)
,p_name=>'P3_RETURN_ENAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23026381648742631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23027469368742642)
,p_name=>'P3_RETURN_JOB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23026381648742631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23027562487742643)
,p_name=>'P3_RETURN_MGR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23026381648742631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23027728291742645)
,p_name=>'P3_T1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23026381648742631)
,p_prompt=>'T1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(23272567702912246)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23027884944742646)
,p_name=>'P3_T2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23026381648742631)
,p_prompt=>'T1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(23272567702912246)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23025844828742626)
,p_name=>'Row Clicked'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.t-fht-tbody tr'
,p_bind_type=>'live'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23025933164742627)
,p_event_id=>wwv_flow_api.id(23025844828742626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var columnStaticId = ''ename-id'';',
'&GL_ROW_SCRIPT_DIALOG.'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23026079995742628)
,p_event_id=>wwv_flow_api.id(23025844828742626)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P3_RETURN_ENAME,P3_RETURN_JOB,P3_RETURN_MGR'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(23283854771912352)
,p_name=>'MODAL_LOV_TEST'
,p_page_mode=>'NORMAL'
,p_step_title=>'MODAL_LOV_TEST'
,p_step_sub_title=>'MODAL_LOV_TEST'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20170810112434'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23332272164683371)
,p_plug_name=>'MODAL_LOV_TEST'
,p_region_name=>'igemp'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23250242644912178)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       JOB_IG,',
'       MGR_IG,',
'       HIREDATE,',
'       SAL',
'  from MODAL_TEST_IG'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23333470095683373)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23333980111683374)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23334505338683375)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23335136417683375)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'PLUGIN_IR.SAEEDHASSANPOUR.MODALLOVIG'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'CUR_APP_PAGE'
,p_attribute_02=>'3'
,p_attribute_04=>'UNRESTRICTED'
,p_attribute_05=>'P3_T1,P3_T2'
,p_attribute_06=>':P5_TEST,#SAL#'
,p_attribute_08=>'ENAME,JOB,MGR'
,p_attribute_09=>'P3_RETURN_ENAME,P3_RETURN_JOB,P3_RETURN_MGR:NAME,JOB_IG,MGR_IG'
,p_attribute_10=>'HIREDATE'
,p_attribute_11=>'NOT_ENTERABLE'
,p_is_required=>false
,p_max_length=>400
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23335775016683376)
,p_name=>'JOB_IG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_IG'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Job Ig'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>36
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23336388500683377)
,p_name=>'MGR_IG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MGR_IG'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Mgr Ig'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23336995100683377)
,p_name=>'HIREDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HIREDATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>'Hiredate'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(23337551320683378)
,p_name=>'SAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SAL'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Sal'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attribute_03=>'right'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(23332715934683371)
,p_internal_uid=>23332715934683371
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(23333155275683372)
,p_interactive_grid_id=>wwv_flow_api.id(23332715934683371)
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(23333205241683372)
,p_report_id=>wwv_flow_api.id(23333155275683372)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23334327993683374)
,p_view_id=>wwv_flow_api.id(23333205241683372)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(23333980111683374)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23334980348683375)
,p_view_id=>wwv_flow_api.id(23333205241683372)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(23334505338683375)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23335532028683376)
,p_view_id=>wwv_flow_api.id(23333205241683372)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(23335136417683375)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23336187333683376)
,p_view_id=>wwv_flow_api.id(23333205241683372)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(23335775016683376)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23336715512683377)
,p_view_id=>wwv_flow_api.id(23333205241683372)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(23336388500683377)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23337356838683378)
,p_view_id=>wwv_flow_api.id(23333205241683372)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(23336995100683377)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(23337967033683378)
,p_view_id=>wwv_flow_api.id(23333205241683372)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(23337551320683378)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23027629320742644)
,p_name=>'P5_TEST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23332272164683371)
,p_prompt=>'Test'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(23272567702912246)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23026118585742629)
,p_name=>'Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(23332272164683371)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23026255178742630)
,p_event_id=>wwv_flow_api.id(23026118585742629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//set values on Interactive Grid',
'openMLovIG.setIgValue(this.data, true);'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23338186798683379)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(23332272164683371)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(23283854771912352)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'MODAL LOV IG- Plugin - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(23233660396912111)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20170809174042'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23284304703912430)
,p_plug_name=>'MODAL LOV IG- Plugin'
,p_icon_css_classes=>'fa-sign-in'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(23250009900912178)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23284656754912442)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(23284304703912430)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(23273036598912255)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23284489864912436)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23284304703912430)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23272488347912240)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23284552153912441)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23284304703912430)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(23272488347912240)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23284885969912449)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23284783393912446)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23285046813912449)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23284999370912449)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(23285802177916977)
);
end;
/
prompt --application/deployment/install
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(23286516589937523)
,p_install_id=>wwv_flow_api.id(23285802177916977)
,p_name=>'MODAL_TEST_IG'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'CREATE TABLE "MODAL_TEST_IG" ',
'   (	"ID" NUMBER NOT NULL ENABLE, ',
'	"NAME" VARCHAR2(100 CHAR), ',
'	"JOB_IG" VARCHAR2(9 CHAR), ',
'	"MGR_IG" NUMBER(4,0), ',
'	"HIREDATE" DATE, ',
'	"SAL" NUMBER(7,2), ',
'	 PRIMARY KEY ("ID") ENABLE',
'   ) ;',
'',
'CREATE SEQUENCE  "MODAL_TEST_IG_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 2 NOORDER  NOCYCLE ;',
'',
'CREATE OR REPLACE TRIGGER "MODAL_TEST_IG_BI" ',
'              before insert ON MODAL_TEST_IG',
'              for each row',
'begin',
'                  if :new.id is null then',
'                      select MODAL_TEST_IG_SEQ.nextval into :new.id from sys.dual;',
'                 end if;',
'              end;',
'/',
'',
'',
''))
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
