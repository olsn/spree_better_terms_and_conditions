Deface::Override.new(:virtual_path => "spree/admin/orders/edit",
                     :name => "_vana_order_config",
                     :insert_before => "[data-hook='admin_order_edit_form']",
                     :partial => "spree/admin/vana/_vana_order_config",
                     :disabled => false)