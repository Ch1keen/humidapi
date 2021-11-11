# frozen_string_literal: true

module Api
  class DevicesController < ApplicationController
    def create
      @device = Device.create(device_params)
      render json: {msg: true}
    end

    def show
      render "show"
    end

    private
    def device_params
      params.require(:device).permit(:devicesn,:userid)
    end
  end
end
