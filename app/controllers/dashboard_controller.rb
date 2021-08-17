class DashboardController < ApplicationController
  before_action :set_owner, only: %i[ show edit update destroy ]
  def index
    @owners = Owner.all
  end

  # GET /owners/1 or /owners/1.json
  def show
  end
end
