class AddTermsAndConditionsToOrders < ActiveRecord::Migration
  def change
    add_column :spree_orders, :terms_and_conditions, :boolean
  end
end
