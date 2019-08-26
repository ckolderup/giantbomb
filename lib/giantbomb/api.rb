module GiantBomb
  module Api
    include HTTParty
    if ENV['HTTPARTY_DEBUG']
      debug_output $stdout
    end
    
    base_uri 'giantbomb.com/api'
    headers 'User-Agent' => 'butwithguns_bot'
    
    def self.config
      @@config
    end
    
    def self.key(api_key)
      @@config = { :api_key => api_key, :format => 'json' }
    end
  end
  
end
