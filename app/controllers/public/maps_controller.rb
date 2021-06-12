# frozen_string_literal: true

  class Public::MapsController < ApplicationController
    def index; end

    def map
      results = Geocoder.search('大阪')
      @latlng = results.first.coordinates
      # respond_to以下の記述によって、
      # remote: trueのアクセスに対して、
      # map.js.erbが変えるようになります。

      respond_to do |format|
        format.js
      end
    end

    private

    def geocoder_params
      params.require(:geocoder).permit(:address)
    end

    def gym_params
      params.require(:gym).permit(:gym_name, :introduction, :image, :address, :station)
    end
  end
