require 'json'
require 'open-uri'

class MyvoiceController < ApplicationController
  
  def index
    @region_uri = JSON.load(open("http://myvoice.simpleweb.co.uk/api/region"))
    @country_uri = JSON.load(open("http://myvoice.simpleweb.co.uk/api/country"))
    @biz_unit_uri = JSON.load(open("http://myvoice.simpleweb.co.uk/api/businessunit"))
    @coe_uri = JSON.load(open("http://myvoice.simpleweb.co.uk/api/coe"))

  end
end