class AddVanaProductConfigToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :vana_product_config, :text
    add_column :spree_orders, :vana_payment_info, :text
  end
end
