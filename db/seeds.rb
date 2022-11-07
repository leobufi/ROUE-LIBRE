puts "Cleaning previous DB..."

About.destroy_all
Character.destroy_all
FilmCategory.destroy_all
Film.destroy_all
General.destroy_all
Service.destroy_all
ServicesCategory.destroy_all
ServicesGeneral.destroy_all
User.destroy_all

puts 'creating a fu.... seed'

about = About.create(
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
if about.save
  puts 'About made'
else
  puts about.errors.messages
end

alexis = Character.create(
  title: "Alexis Carcuac",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  email: "contact@rouelibreprod.fr",
  about: About.first
)
if alexis.save
  puts 'Alexis made'
else
  puts alexis.errors.messages
end

cecile = Character.create(
  title: "Cécile Rivet",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  email: "contact@rouelibreprod.fr",
  about: About.first
)
if cecile.save
  puts 'cécile made'
else
  puts cecile.errors.messages
end

long = FilmCategory.create(
  title: "Longs métrages"
)
if long.save
  puts 'category long made'
else
  puts long.errors.messages
end

court = FilmCategory.create(
  title: "Courts métrages"
)
if court.save
  puts 'category courts made'
else
  puts court.errors.messages
end

series = FilmCategory.create(
  title: "Séries"
)
if series.save
  puts "category series made"
else
  puts series.errors.messages
end

aventure = Film.create(
  finished: true,
  in_production: false,
  title: "L'Aventure Triste",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  duration: "52 min",
  author_word: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  prod_word: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  tech_team: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  diff: "Canal + les fachos",
  festivals: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  financors: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  film_category: FilmCategory.order(Arel.sql('RANDOM()')).first
)
if aventure.save
  puts "film aventure created"
else
  puts aventure.errors.messages
end

cbon = Film.create(
  finished: true,
  in_production: false,
  title: "C'est bon ?",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  duration: "52 min",
  author_word: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  prod_word: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  tech_team: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  diff: "LCP",
  festivals: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  financors: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  film_category: FilmCategory.order(Arel.sql('RANDOM()')).first
)
if cbon.save
  puts "film cbon created"
else
  puts cbon.errors.messages
end

cafi = Film.create(
  finished: false,
  in_production: true,
  title: "CAFI",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  duration: "52 min",
  author_word: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  prod_word: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  tech_team: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  diff: "None",
  festivals: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  financors: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  film_category: FilmCategory.order(Arel.sql('RANDOM()')).first
)
if cafi.save
  puts "film cafi created"
else
  puts cafi.errors.messages
end

liberata = Film.create(
  finished: false,
  in_production: true,
  title: "Liberata",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  duration: "52 min",
  author_word: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  prod_word: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  tech_team: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  diff: "None",
  festivals: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  financors: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  film_category: FilmCategory.order(Arel.sql('RANDOM()')).first
)
if liberata.save
  puts "film liberata created"
else
  puts liberata.errors.messages
end

general = General.create(
  video_link: "https://www.youtube.com/watch?v=1-THOIpC0Lo"
)
if general.save
  puts "general created"
else
  puts general.errors.messages
end

etalo = ServicesCategory.create(
  title: "Étalonnage",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
if etalo.save
  puts "etalo created"
else
  puts etalo.errors.messages
end

promo = ServicesCategory.create(
  title: "Films Promotionnels",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
if promo.save
  puts "promo created"
else
  puts promo.errors.messages
end

montage = ServicesCategory.create(
  title: "Montage",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
if montage.save
  puts "montage created"
else
  puts montage.errors.messages
end

instits = ServicesCategory.create(
  title: "Films Institutionnels",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
if instits.save
  puts "instits created"
else
  puts instits.errors.messages
end

deco = ServicesCategory.create(
  title: "Déco",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
if deco.save
  puts "deco created"
else
  puts deco.errors.messages
end

prodexe = ServicesCategory.create(
  title: "Production exécutive",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
if prodexe.save
  puts "prodexe created"
else
  puts prodexe.errors.messages
end

8.times do
  service = Service.create(
  title: "L'aventure Triste",
  client_name: "Jojo TV",
  year: "2020",
  link: "http://wwww.google.com",
  services_category: ServicesCategory.order(Arel.sql('RANDOM()')).first
  )
  if service.save
    puts "service created"
  else
    puts service.errors.messages
  end
end

servgen = ServicesGeneral.create(
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
)
if servgen.save
  puts "servgen created"
else
  puts servgen.errors.messages
end

user = User.create(
    email: 'admin@rouelibre.com',
    password: '123456'
)
if user.save
  puts "user created"
else
  puts user.errors.messages
end

puts 'DONE !'
