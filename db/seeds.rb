puts "Creating companies..."

Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1 = Dev.create(name: "Rick")
d2 = Dev.create(name: "Morty")
d3 = Dev.create(name: "Mr. Meseeks")
d4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

Freebie.create(item_name: "Search Engine", value:101, company_id:c1.id, dev_id:d1.id)
Freebie.create(item_name: "Internet"     , value:201, company_id:c1.id, dev_id:d2.id)
Freebie.create(item_name: "Old People"   , value:41 , company_id:c2.id, dev_id:d3.id)
Freebie.create(item_name: "paper"        , value:3  , company_id:c3.id, dev_id:d4.id)
Freebie.create(item_name: "shows"        , value:182, company_id:c3.id, dev_id:d1.id)
Freebie.create(item_name: "Cash"         , value:1  , company_id:c4.id, dev_id:d2.id)
Freebie.create(item_name: "Something"    , value:5  , company_id:c4.id, dev_id:d3.id)

puts "Seeding done!"
