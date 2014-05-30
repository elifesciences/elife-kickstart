Template Kickstart
==================

Generic build script to make it easier to start building a distribution for a new Drupal project.

Instructions

    git clone git@github.com:elifesciences/elife-kickstart.git elife-kickstart
    cd elife-kickstart
    ./scripts/build.sh my_site "My Site Name" "my_site"
    cd my_site
    mysql -u db_user -p db_pass -e 'CREATE DATABASE my_site_kickstart;'
    drush si my_site_kickstart --sites-subdir=default --db-url=mysql://db_user:db_pass@127.0.0.1/my_site_kickstart --account-name=admin --account-pass=admin --site-mail=admin@example.com --site-name="My Site Kickstart Profile" --yes
    drush rs 8888
    open http://127.0.0.1:8888
