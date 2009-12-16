class PurchaseController < ApplicationController
layout 'purchase'
  # GET /purchase
  # GET /purchase.xml
  def index

    @soaps = Soap.find(:all)
    @user = User.find(:first)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @purchase }
    end
  end
end
