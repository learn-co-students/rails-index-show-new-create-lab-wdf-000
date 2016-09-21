require 'pry'

class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def show
    # binding.pry
    @coupon = Coupon.find(params[:id])
  end

  def new
    # binding.pry
  end

  def create
    @coupon = Coupon.new
    # binding.pry
    if params[:coupon].nil?
      @coupon.coupon_code = params[:coupon_code]
      @coupon.store = params[:store]
      @coupon.save
      redirect_to coupon_path(@coupon)
    else
      @coupon.coupon_code = params[:coupon][:coupon_code]
      @coupon.store = params[:coupon][:store]
      @coupon.save
      redirect_to coupon_path(@coupon)
    end
  end


end
