class SearchesController < ApplicationController
  
  def search
  end
  
  def foursquare
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
      req.params['client_id'] = GYQTSVN3J4DD2A0GJEA22FKCSGKIOGIOUPEPSLECRSQ3A4XC
      req.params['client_secret'] = F0TBKEGTZKQXOTK22EIHL4R5ATDNXBDLBRTUSXLVWL4XZNUW
      req.params['v'] = '20160201'
      req.params['near'] = params[:zipcode]
      req.params['query'] = 'coffee shop'
    end
    render 'search'
  end
  
end
