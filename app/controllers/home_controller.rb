class HomeController < ApplicationController

  def index
    require 'net/http'
    require'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri