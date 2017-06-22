namespace :utils do
  desc "Preencer ou popular banco de dados"
  task seed: :environment do
    puts "Gerando contatos (Contact)..."
    10.times do |i|
        Contact.create!([
            {
                name: Faker::Name.name,
                email: Faker::Internet.email,
                rmk: Faker::Lorem.paragraph([1,2,3,4,5].sample),
                kind: Kind.all.sample,
            }
        ])
    end
    puts "Gerando contatos (Contact)...[OK]"

    puts "Gerando endereços (Addresses)..."
      Contact.all.each do |contact|
        Address.create!([
            {
              street: Faker::Address.street_address,
              city: Faker::Address.city,
              state: Faker::Address.state_abbr,
              contact: contact,
            }
        ])
      end
     puts "Gerando endereços (Addresses)...[OK]"

     puts "Gerando telefones (Phones)..."
      Contact.all.each do |contact|
        Random.rand(1..5).times do |t|
          Phone.create!([
              {
                phone: Faker::PhoneNumber.phone_number,
                contact: contact,
              }
          ])
          end
      end
     puts "Gerando telefones (Phones)...[OK]"
  end

end
