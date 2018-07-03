class Oauth

    def oauth_user
        basic_auth = {
            :username => "WEB", 
            :password => "SECRET"
        }

        $request = HTTParty.post("http://*******.*******/api/oauth/token",
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
