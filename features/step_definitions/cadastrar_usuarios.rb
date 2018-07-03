Dado("que estou autenticado com usuário com perfil de administrador") do
    Oauth.new.oauth_user
end

Dado("que eu desejo cadastrar um novo usuario") do
   @nome = Faker::Name.first_name
   @login = "Nome_#{Faker::Number.number(10)}"
   body = {
    "name": @nome,
    "login": @login,
    "document": "document",
    "password": "Senha123",
    "roleId": 99,
    "status": true,
    "isPicker": false,
    "teamId": 0
}
    @request =  HTTParty.post("http://*******.*******/api/v1/admin/users",
        :body => body.to_json,
            :headers => {
                'Authorization' => "Bearer #{$tokenUser}",
                'Content-Type' => 'application/json'
            }
        )
            
  end
  
  Então("devo receber o status {int}") do |status_code|
    expect(@request.code).to eql status_code
    puts "Nome #{@nome}"
    puts "login #{@login}"
  end

# body = {
#     "name": username,
#     "login": login,
#     "document": "document",
#     "password": "Senha123",
#     "roleId": 99,
#     "status": true,
#     "isPicker": false,
#     "teamId": 0
# }
  
# Então("consulto no banco") do
#     oci = OCI8.new('****/****@****.****.*****:1521/dboraqa')

#     cursor = oci.exec("SELECT * FROM FOOD.T_USER where username = :1", @login) 
#     cursor.define(10, String, nil)

#     cursor.exec()
#     cursor.fetch() do |r|
#         puts r.join(',')
#     end
# end
Dado("que eu realize uma consulta de um usuário {string}") do |string|
    @request = HTTParty.get("http://*******.*******//api/v1/admin/users",
        :query => {name: "teste"},
        :headers => {
            'Authorization' => "Bearer #{$tokenUser}",
            'Content-Type' => 'application/json'
        }
    )
puts @request.body
    end
    
