class HomeController < ApplicationController
    def index
    @properties = Property.all
    @sales_by_month = DetailSale.group_by_month(:created_at, last: 24, format: "%b %Y").sum(:value)
    @sales_by_count = DetailSale.group_by_month(:created_at, last: 24, format: "%b %Y").count
    @sales_by_average = DetailSale.group_by_month(:created_at, last: 24, format: "%b %Y").average(:value)
    end

end