class Admin::HomesController < ApplicationController
  class Admin::HomesController < Admin::ApplicationController
  def
    @customers = Customer.all.page(params[:page]).per(5)
  end



  end
end
