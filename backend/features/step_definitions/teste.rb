Dado('o endereço do endpoint') do
    $base_url = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
    puts "URL base: #{$base_url}"
end
  Quando('realizar uma requisição') do
    $response = HTTParty.get($base_url, :verify => false)
    puts "response code: #{$response.code}"
end
  Então('o JSON retornado deve conter a chave especificada') do
    $speckey = "typeOfEstablishment"
    bool = false
    for key in $response.keys do
        if key == $speckey then
            bool = true
        end
    end

    if bool then
        puts "key found"
    else
        puts "key not found"
    end
end
    Então('imprimir um elemento aleatório do campo') do
  puts "#{$response[$speckey][0]}"
end

  