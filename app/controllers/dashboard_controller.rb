class DashboardController < ApplicationController
   # content_security_policy only: :index do |policy|
   #    policy.style_src :self, :unsafe_inline
   #    policy.script_src :self, :unsafe_inline
   # end
   def index
      #use_content_security_policy_named_append(:charts)
    @sales_by_month = DetailSale.group_by_month(:created_at, last: 24, format: "%b %Y").sum(:value)
    @sales_end_by_month = DetailSale.group_by_month(:end, last: 24, format: "%b %Y").sum(:value)
    @sales_by_count = DetailSale.group_by_month(:created_at, last: 24, format: "%b %Y").count
    @sales_by_average = DetailSale.group_by_month(:created_at, last: 24, format: "%b %Y").average(:value)
   end

end
