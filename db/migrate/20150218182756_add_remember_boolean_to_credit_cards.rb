class AddRememberBooleanToCreditCards < ActiveRecord::Migration
  def change
  	add_column :spree_credit_cards, :remember, :boolean, default: false
  end
end
