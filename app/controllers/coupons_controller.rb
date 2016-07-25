class CouponsController < ApplicationController

  def create
    if params[:coupon]
      @coupon = Coupon.new
      params[:coupon].each{|k,v| @coupon.send("#{k}=", v)}
      @coupon.save
    else @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    end
    redirect_to coupon_path(@coupon)
  end

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def show
    @coupon = Coupon.find(params[:id])
  end


end
