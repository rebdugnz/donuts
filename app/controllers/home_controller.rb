class HomeController < ApplicationController
require 'HTTParty'

attr_accessor :gif

  def index
    @gif = new_url
  end

  def new_url
    list = HTTParty.get("https://api.giphy.com/v1/gifs/trending?api_key=dc1xlJCGMtxEQTEaRBIqFWnpbQW2MlOk&limit=25&rating=G")["data"]
    rando = rand(list.count)
    list[rando]["images"]["original"]["url"]
  end
end
