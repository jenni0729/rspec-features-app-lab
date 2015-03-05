class WeatherController < ApplicationController

def index
  if cookies[:zipcode]
    redirect_to weather_search_path

end 

def search
  if cookies[:zipcode] == nil
    cookies[:zipcode] = params[:zipcode]
  # cookies[:zipcode] = params[:zipcode]
  if cookies[:zipcode] == '23456'
    render :rainy
  end 
end 