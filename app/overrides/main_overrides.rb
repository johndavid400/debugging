# overrides for the application layout
#
Deface::Override.new(:virtual_path      => "spree/layouts/spree_application",
                     :name              => "logo_override",
                     :replace           => "#logo",
                     :text              => "",
                     :disabled          => true)

Deface::Override.new(:virtual_path      => "spree/layouts/spree_application",
                     :name              => "cart_home_override",
                     :replace           => "#main-nav-bar",
                     :text              => "",
                     :disabled          => true)

Deface::Override.new(:virtual_path      => "spree/layouts/spree_application",
                     :name              => "top_home_override",
                     :replace           => "#top-nav-bar",
                     :text              => "",
                     :disabled          => true)

Deface::Override.new(:virtual_path      => "spree/layouts/spree_application",
                     :name              => "footer_override",
                     :replace           => "#footer-left",
                     :text              => "prototyperobotics.com",
                     :disabled          => false)

Deface::Override.new(:virtual_path      => "spree/home/index",
                     :name              => "products_override",
                     :replace           => "[data-hook='homepage_products']",
                     :partial           => 'shared/home',
                     :disabled          => false)
