class Oauth

    def oauth_user
        basic_auth = {
            :username => "EVA_WEB", 
            :password => "EVA_WEB_SECRET"
        }

        $request = HTTParty.post("http://docs202.ecom.carrefour:8084/oauth/token",
            :headers => { 
                'Content-Type' => 'application/json'
                 },
            :basic_auth => basic_auth,
            :query => { 
                grant_type: 'password', 
                username: "automacao_676",
                password: "12345"
            })
        return $tokenUser = $request["access_token"]


        end

end
