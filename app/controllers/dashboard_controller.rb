class DashboardController < ApplicationController
    before_action :set_dashboard, only: %i[ show edit update destroy]
    def index
    end

    private
    def set_dashboard
    @dashboard = Dashboard.find(params[:id])
    end
end
