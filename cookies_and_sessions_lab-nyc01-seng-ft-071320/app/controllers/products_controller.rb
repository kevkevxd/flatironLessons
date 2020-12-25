class ProductsController < ApplicationController
    def index 
    end

    def add
        cart << params[:paoduct]
        render :index
    end
end
  

