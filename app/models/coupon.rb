class Coupon < ActiveRecord::Base

  def info
    "| " + self.coupon_code + " | @--> " + self.store
  end

end
