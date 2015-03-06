    @objects = JSON.parse @aString


xml.instruct! :xml, :version=>"1.0"
xml.rss(:version=>"2.0") {
        
  xml.channel {
          
    xml.title('woo')
    xml.link('http://awesome.library.cornell.edu')
    xml.description('awesome stuff at CUL')
    xml.language('en-us')
    @objects.each do |data|
      xml.title( data["title"] )
      xml.link( 'http://newcatalog.library.cornell.edu/catalog/' + data["bibid"].to_s)
      xml.description ( data["title"] + ' / ' + data["author"] + ' / Votes:' + data["votes"].to_s )
    end
          
  }
}


