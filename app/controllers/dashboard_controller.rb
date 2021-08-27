class DashboardController < ApplicationController
   def index
    @sales_by_month = DetailSale.group_by_month(:created_at, last: 2, format: "%b %Y").order(created_at: :asc).sum(:value)
    @sales_by_count = DetailSale.group_by_month(:created_at, last: 24, format: "%b %Y").order(created_at: :asc).count
    @sales_by_average = DetailSale.group_by_month(:created_at, last: 24, format: "%b %Y").order(created_at: :asc).average(:value)
   end

end
