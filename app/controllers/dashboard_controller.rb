class DashboardController < ApplicationController
    puts <h1>probando</h1>

    # def index
    #     @sales_by_month = DetailSale.group_by_month(:date_time, last: 12, format: "%b %Y").order(date_time: :asc).sum(:price)
    #     @sales_by_count = DetailSale.group_by_month(:date_time, last: 12, format: "%b %Y").order(date_time: :asc).count
    #     @sales_by_average = DetailSale.group_by_month(:date_time, last: 12, format: "%b %Y").order(date_time: :asc).average(:price)
    #     @sales_origin_12 = DetailSale.where('date_time >= ?', 1.year.ago.to_datetime).group(:origin).count
    #     @sales_origin_6 = DetailSale.where('date_time >= ?', 6.month.ago.to_datetime).group(:origin).count
    #     @sales_origin_3 = DetailSale.where('date_time >= ?', 3.month.ago.to_datetime).group(:origin).count
    #     @sales_origin_1 = DetailSale.where('date_time >= ?', 1.month.ago.to_datetime).group(:origin).count
    #     @sales_blend_name_12 = DetailSale.where('date_time >= ?', 1.year.ago.to_datetime).group(:blend_name).count
    #     @sales_blend_name_6 = DetailSale.where('date_time >= ?', 6.month.ago.to_datetime).group(:blend_name).count
    #     @sales_blend_name_3 = DetailSale.where('date_time >= ?', 3.month.ago.to_datetime).group(:blend_name).count
    #     @sales_blend_name_1 = DetailSale.where('date_time >= ?', 1.month.ago.to_datetime).group(:blend_name).count
    #     @sales_months = DetailSale.group("strftime('%m-%Y', date_time)").order(date_time: :asc).sum(:price)
    # end
  

end
