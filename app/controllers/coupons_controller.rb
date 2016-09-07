class CouponsController < ApplicationController


  def new
  end

  def create

    # @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    @coupon = Coupon.new
    # binding.pry

    # if !params[:coupon].empty?
    #     @coupon.coupon_code = params[:coupon][:coupon_code]
    #     @coupon.store = params[:coupon][:store]
    #     @coupon.save
    # else

      @coupon[:coupon_code] = params[:coupon_code]
      @coupon[:store] = params[:store]
      @coupon.save
    # end

    # binding.pry
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find_by_id(params[:id])
  end

  def index
    @coupons = Coupon.all
  end


end
