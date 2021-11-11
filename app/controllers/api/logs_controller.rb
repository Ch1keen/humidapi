# frozen_string_literal: true

module Api
  class LogsController < ApplicationController
    def create
      @log = Log.create(log_params)
      @log.device = Device.find_by(devicesn: params[:devicesn])
      @log.save

      render json: { msg: true }
    end

    def show
      render "show"
    end

    private

    def log_params
      params.require(:log).permit(:humidity, :temperature, :pm2p5, :pm10)
    end
  end
end
