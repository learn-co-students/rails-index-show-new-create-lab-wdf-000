class Coupon < ActiveRecord::Base
  def show
    self.coupon_code + " | " + self.store
  end
end