class HomeController < ApplicationController

  def index
    require 'net/http'
    require'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC", "XRP", "ADA", "XLM", "EOS", "DASH", "BNB"]
  end

  def about
  end

  def lookup
    require 'net/http'
    require'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coin = JSON.parse(@response)
   
    @symbol = params[:sym]

    if @symbol
      @symbol = @symbol.upcase
    end

    if @symbol == ""
      @symbol = "Please enter curency!"
    end
  end

end

