class HomeController < ApplicationController
  def index
 
        clnt = HTTPClient.new
        @aString = clnt.get_content("http://mjc12-dev.library.cornell.edu:3000/list")

       
end




end
