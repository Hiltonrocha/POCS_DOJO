class User 

    def post_cadastrar_usuario(username, login)

        body = {
            "name": username,
            "login": login,
            "document": "document",
            "password": "Senha123",
            "roleId": 99,
            "status": true,
            "isPicker": false,
            "teamId": 0
        }
        $request = HTTParty.post('http://docs202.ecom.carrefour:8086/api/v1/admin/users',
            :body => body.to_json,
            :headers => {
                'Authorization' => "Bearer #{$tokenUser}",
                'Content-Type' => 'application/json'
            })
        end


end
