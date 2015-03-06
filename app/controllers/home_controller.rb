class HomeController < ApplicationController
  def index
 
        clnt = HTTPClient.new
        @aString = clnt.get_content("http://mjc12-dev.library.cornell.edu:3000/list")

        
	end

def feed

	clnt = HTTPClient.new
    @aString = clnt.get_content("http://mjc12-dev.library.cornell.edu:3000/list")
    @objects = JSON.parse @aString


    respond_to do |format|
      format.xml #index.atom.builder
      format.rss
    
    end
end
end



