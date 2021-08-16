class DashboardController < ApplicationController
  def index
    @owners = Owner.all
  end

  # GET /owners/1 or /owners/1.json
  def show
  end
end
