require 'httparty'
require 'json'

class HttpTestHelper

    SERVICE_HEADERS = { 'User-Agent'=>'Apache-HttpClient/4.1.1 (java 1.5)',
                        'Accept' => 'application/json',
                        'Content-Type' =>'application/json'}

    def get_info(url)
      res = {:status => false,:response =>"",:code=>0}
      begin
        response = HTTParty.get("#{url}",:headers => SERVICE_HEADERS)
        puts response.header.inspect
        puts response.body

        if response.code.to_i == 200
          res[:status] = true
          res[:response] = JSON.parse(response.body)
        else
          res[:response] = JSON.parse(response.body)

        end
        rescue => e
          puts ("Can not get resources, Message: #{e.message}")
      end
    res
    end

end