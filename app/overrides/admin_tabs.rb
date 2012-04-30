
Deface::Override.new(:virtual_path      => "spree/layouts/admin",
                     :name              => "projects_admin_tab",
                     :insert_bottom     => "[data-hook='admin_tabs']",
                     :text              => "<%= tab(:projects) %>")

Deface::Override.new(:virtual_path      => "spree/layouts/admin",
                     :name              => "tutorials_admin_tab",
                     :insert_bottom     => "[data-hook='admin_tabs']",
                     :text              => "<%= tab(:tutorials) %>")

Deface::Override.new(:virtual_path      => "spree/layouts/admin",
                     :name              => "articles_admin_tab",
                     :insert_bottom     => "[data-hook='admin_tabs']",
                     :text              => "<%= tab(:articles) %>")
