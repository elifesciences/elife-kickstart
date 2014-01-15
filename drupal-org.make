; Drupal.org release file.
core = 7.x
api = 2

; contrib modules
projects[devel][version] = 1.3
projects[devel][subdir] = "contrib"
projects[admin_menu][version] = 3.0-rc4
projects[admin_menu][subdir] = "contrib"
projects[environment_indicator][version] = 2.2
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
projects[date][version] = 2.7
projects[date][subdir] = "contrib"
projects[context][version] = 3.1
projects[context][subdir] = "contrib"
projects[context_condition_theme][version] = 1.0
projects[context_condition_theme][subdir] = "contrib"
projects[entity][version] = 1.3
projects[entity][subdir] = "contrib"
projects[token][version] = 1.5
projects[token][subdir] = "contrib"
projects[field_group][version] = 1.3
projects[field_group][subdir] = "contrib"
projects[rules][version] = 2.6
projects[rules][subdir] = "contrib"
projects[libraries][version] = 2.1
projects[libraries][subdir] = "contrib"
projects[module_filter][version] = 2.0-alpha2
projects[module_filter][subdir] = "contrib"
projects[pathauto][version] = 1.2
projects[pathauto][subdir] = "contrib"
projects[entityreference][version] = 1.1
projects[entityreference][subdir] = "contrib"
projects[menu_attributes][version] = 1.0-rc2
projects[menu_attributes][subdir] = "contrib"
projects[imce][version] = 1.8
projects[imce][subdir] = "contrib"
projects[boxes][version] = 1.1
projects[boxes][subdir] = "contrib"
projects[colorbox][version] = 2.5
projects[colorbox][subdir] = "contrib"
projects[elysia_cron][version] = 2.1
projects[elysia_cron][subdir] = "contrib"
projects[menu_token][version] = 1.0-beta5
projects[menu_token][subdir] = "contrib"
projects[node_clone][version] = 1.0-rc1
projects[node_clone][subdir] = "contrib"
projects[resp_img][version] = 1.3
projects[resp_img][subdir] = "contrib"
projects[special_menu_items][version] = 2.0
projects[special_menu_items][subdir] = "contrib"
projects[globalredirect][version] = 1.5
projects[globalredirect][subdir] = "contrib"
projects[captcha][version] = 1.0
projects[captcha][subdir] = "contrib"
projects[google_analytics][version] = 1.4
projects[google_analytics][subdir] = "contrib"
projects[delta][version] = 3.0-beta11
projects[delta][subdir] = "contrib"
projects[views_slideshow][version] = 3.1
projects[views_slideshow][subdir] = "contrib"
projects[webform][version] = 4.0-beta1
projects[webform][subdir] = "contrib"
projects[xmlsitemap][version] = 2.0-rc2
projects[xmlsitemap][subdir] = "contrib"
projects[strongarm][version] = 2.0
projects[strongarm][subdir] = "contrib"
projects[facetapi][version] = 1.3
projects[facetapi][subdir] = "contrib"
projects[facetapi_bonus][version] = 1.1
projects[facetapi_bonus][subdir] = "contrib"
projects[ctools][version] = 1.3
projects[ctools][subdir] = "contrib"
projects[ds][version] = 2.6
projects[ds][subdir] = "contrib"
projects[views][version] = 3.7
projects[views][subdir] = "contrib"
projects[metatag][version] = 1.0-beta7
projects[metatag][subdir] = "contrib"
projects[realname][version] = 1.1
projects[realname][subdir] = "contrib"
projects[scheduler][version] = 1.1
projects[scheduler][subdir] = "contrib"
projects[ckeditor][version] = 1.13
projects[ckeditor][subdir] = "contrib"
projects[views_field_view][version] = 1.1
projects[views_field_view][subdir] = "contrib"
projects[webform_rules][version] = 1.6
projects[webform_rules][subdir] = "contrib"
projects[webform_validation][version] = 1.3
projects[webform_validation][subdir] = "contrib"
projects[features][version] = 2.0
projects[features][subdir] = "contrib"
projects[search_api][version] = 1.11
projects[search_api][subdir] = "contrib"
projects[search_api_db][version] = 1.0-beta4
projects[search_api_db][subdir] = "contrib"
projects[search_api_ranges][version] = 1.4
projects[search_api_ranges][subdir] = "contrib"

; patched modules
projects[redirect][version] = 1.0-rc1
projects[redirect][subdir] = "patched_contrib"
projects[redirect][patch][] = "https://drupal.org/files/redirect-detect_prevent_circular_redirects_remove_duplicate_redirects_on_path_save-1817976-20.patch"

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
