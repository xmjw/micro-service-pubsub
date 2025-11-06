class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
	    t.string :customer_id
      t.string :product_id
      t.timestamp :ordered_at
      t.string :state
    end
  end
end
