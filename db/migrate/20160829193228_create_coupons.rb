class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.text :store
      t.text :coupon_code

      t.timestamps null: false
    end
  end
end
