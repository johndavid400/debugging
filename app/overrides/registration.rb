Deface::Override.new(:virtual_path      => "spree/user_registrations/new",
                     :name              => "registration_username_override",
                     :insert_top        => "[data-hook='signup_inside_form']",
                     :text              => "<p><%= f.label :username, t(:username) %><br /><%= f.text_field :username, :class => 'title' %></p>")
