; Drupal.org release file.
core = 7.x
api = 2

; contrib modules
projects[devel][version] = 1.3
projects[devel][subdir] = "contrib"
projects[admin_menu][version] = 3.0-rc4
projects[admin_menu][subdir] = "contrib"
projects[environment_indicator][version] = 1.1
projects[environment_indicator][subdir] = "contrib"
projects[hacked][version] = 2.0-beta5
projects[hacked][subdir] = "contrib"
projects[diff][version] = 3.2
projects[diff][subdir] = "contrib"
projects[styleguide][version] = 1.1
projects[styleguide][subdir] = "contrib"
projects[migrate][version] = 2.5
projects[migrate][subdir] = "contrib"
projects[migrate_extras][version] = 2.5
projects[migrate_extras][subdir] = "contrib"
projects[migrate_d2d][version] = 2.0
projects[migrate_d2d][subdir] = "contrib"
projects[fcf][version] = 1.0-beta1
projects[fcf][subdir] = "contrib"
projects[date][version] = 2.6
projects[date][subdir] = "contrib"
projects[context][version] = 3.0-beta6
projects[context][subdir] = "contrib"
projects[context_condition_theme][version] = 1.0
projects[context_condition_theme][subdir] = "contrib"
projects[entity][version] = 1.1
projects[entity][subdir] = "contrib"
projects[token][version] = 1.5
projects[token][subdir] = "contrib"
projects[field_group][version] = 1.1
projects[field_group][subdir] = "contrib"
projects[rules][version] = 2.3
projects[rules][subdir] = "contrib"
projects[libraries][version] = 2.1
projects[libraries][subdir] = "contrib"
projects[module_filter][version] = 1.7
projects[module_filter][subdir] = "contrib"
projects[pathauto][version] = 1.2
projects[pathauto][subdir] = "contrib"
projects[entityreference][version] = 1.0
projects[entityreference][subdir] = "contrib"
projects[menu_attributes][version] = 1.0-rc2
projects[menu_attributes][subdir] = "contrib"
projects[imce][version] = 1.7
projects[imce][subdir] = "contrib"
projects[boxes][version] = 1.1
projects[boxes][subdir] = "contrib"
projects[colorbox][version] = 2.4
projects[colorbox][subdir] = "contrib"
projects[elysia_cron][version] = 2.1
projects[elysia_cron][subdir] = "contrib"
projects[menu_token][version] = 1.0-beta4
projects[menu_token][subdir] = "contrib"
projects[node_clone][version] = 1.0-rc1
projects[node_clone][subdir] = "contrib"
projects[resp_img][version] = 1.3
projects[resp_img][subdir] = "contrib"
projects[special_menu_items][version] = 2.0
projects[special_menu_items][subdir] = "contrib"
projects[globalredirect][version] = 1.5
projects[globalredirect][subdir] = "contrib"
projects[captcha][version] = 1.0-beta2
projects[captcha][subdir] = "contrib"
projects[google_analytics][version] = 1.3
projects[google_analytics][subdir] = "contrib"
projects[delta][version] = 3.0-beta11
projects[delta][subdir] = "contrib"
projects[views_slideshow][version] = 3.0
projects[views_slideshow][subdir] = "contrib"
projects[webform][version] = 4.0-alpha6
projects[webform][subdir] = "contrib"
projects[xmlsitemap][version] = 2.0-rc2
projects[xmlsitemap][subdir] = "contrib"
projects[strongarm][version] = 2.0
projects[strongarm][subdir] = "contrib"
projects[facetapi][version] = 1.3
projects[facetapi][subdir] = "contrib"
projects[facetapi_bonus][version] = 1.1
projects[facetapi_bonus][subdir] = "contrib"

; patched modules
projects[nopremium][version] = 1.1
projects[nopremium][subdir] = "patched_contrib"
projects[nopremium][patch][] = "http://drupalcode.org/project/nopremium.git/patch/0b5943c"
projects[publication_date][version] = 1.0
projects[publication_date][subdir] = "patched_contrib"
projects[publication_date][patch][] = "https://drupal.org/files/969318-node_form_alter_for_publish_date-6.patch"
projects[redirect][version] = 1.0-rc1
projects[redirect][subdir] = "patched_contrib"
projects[redirect][patch][] = "https://drupal.org/files/redirect-detect_prevent_circular_redirects_remove_duplicate_redirects_on_path_save-1817976-20.patch"
projects[addthis][version] = 4.0-alpha2
projects[addthis][subdir] = "patched_contrib"
projects[addthis][patch][] = "https://drupal.org/files/addthis_custom_settings_toolbox_block-1694868-8.patch"

; modules to update
; ctools 1.2 to 1.3
projects[ctools][version] = 1.2
projects[ctools][subdir] = "contrib"
; ds 2.2 to 2.3
projects[ds][version] = 2.2
projects[ds][subdir] = "contrib"
; views 3.6 to 3.7
projects[views][version] = 3.7
projects[views][subdir] = "contrib"
; views 1.0-beta5 to 1.0-beta7
projects[metatag][version] = 1.0-beta5
projects[metatag][subdir] = "contrib"
; realname 1.0 to 1.1
projects[realname][version] = 1.0
projects[realname][subdir] = "contrib"
; scheduler 1.0 to 1.1
projects[scheduler][version] = 1.0
projects[scheduler][subdir] = "contrib"
; ckeditor 1.12 to 1.13
projects[ckeditor][version] = 1.12
projects[ckeditor][subdir] = "contrib"
; ckeditor 1.0 to 1.1
projects[views_field_view][version] = 1.0
projects[views_field_view][subdir] = "contrib"
; webform_rules 1.5 to 1.6
projects[webform_rules][version] = 1.5
projects[webform_rules][subdir] = "contrib"
; webform_validation 1.1 to 1.2
projects[webform_validation][version] = 1.1
projects[webform_validation][subdir] = "contrib"
; features 2.0-beta2 to 2.0-rc1
projects[features][version] = 2.0-beta2
projects[features][subdir] = "contrib"
; search_api 1.4 to 1.6
projects[search_api][version] = 1.4
projects[search_api][subdir] = "contrib"
; features 1.0-beta4 to 1.0-rc1
projects[search_api_db][version] = 1.0-beta4
projects[search_api_db][subdir] = "contrib"

; dev modules
projects[context_nopremium][version] = 1.x-dev
projects[context_nopremium][subdir] = "custom"
projects[context_nopremium][download][type] = "git"
projects[context_nopremium][download][revision] = "4fafd54fba8e58ec135b6d6124a1a5cf933362f8"

; sandbox modules
projects[webform_validate_unique_user_email][type] = module
projects[webform_validate_unique_user_email][download][type] = "git"
projects[webform_validate_unique_user_email][download][url] = "http://git.drupal.org/sandbox/soulston/1884126.git"
projects[webform_validate_unique_user_email][download][revision] = "2e8cd6eee9486206e816b8ce83e54eb9acea7281"
projects[webform_validate_unique_user_email][subdir] = "custom"

; Libraries.
libraries[colorbox][type] = "libraries"
libraries[colorbox][download][type] = "file"
libraries[colorbox][download][url] = "https://github.com/jackmoore/colorbox/archive/master.zip"
libraries[swfobject][type] = "libraries"
libraries[swfobject][download][type] = "file"
libraries[swfobject][download][url] = "https://swfobject.googlecode.com/files/swfobject_2_2.zip"
libraries[flexslider][type] = "libraries"
libraries[flexslider][download][type] = "file"
libraries[flexslider][download][url] = "https://github.com/woothemes/FlexSlider/archive/master.zip"
libraries[jquery.cycle][type] = "libraries"
libraries[jquery.cycle][download][type] = "file"
libraries[jquery.cycle][download][url] = "https://github.com/malsup/cycle/archive/master.zip"
