# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Scenario.destroy_all
Question.destroy_all
Score.destroy_all


users = [
  { email: "babwapple@gmail.com",
    password: 'test', password_confirmation: 'test',
    first_name: "Janice",
    last_name: "Knope"
  },
  { email: "babwapple@gmail.com",
    password: 'test', password_confirmation: 'test',
    first_name: "Richard",
    last_name: "Dort"
  }
]

users.each do |user|
  User.create(user);
end

scenario1 = Scenario.create(floor_plan_url: 'http://digitalcollections.nypl.org/items/510d47da-d998-a3d9-e040-e00a18064a99', text_intro: 'Plaid yr bespoke selvage, aesthetic disrupt lomo. Mlkshk hoodie scenester, irony food truck post-ironic offal fingerstache readymade brooklyn messenger bag schlitz. Tousled lomo skateboard poutine fashion axe lumbersexual, blog shoreditch iPhone yr chambray kinfolk asymmetrical narwhal retro. Jean shorts street art tacos, green juice sartorial celiac messenger bag photo booth lo-fi locavore cred crucifix truffaut cold-pressed. Chia helvetica keffiyeh quinoa tilde. Chia portland church-key affogato. Shabby chic mixtape venmo banh mi.

Mustache sustainable helvetica, fingerstache bicycle rights everyday carry messenger bag asymmetrical VHS salvia gentrify. Try-hard vice whatever gentrify, umami swag chartreuse synth twee dreamcatcher. Four loko before they sold out wolf, listicle mixtape intelligentsia food truck sustainable butcher tousled 3 wolf moon forage poutine. Street art yr knausgaard, lomo banh mi fingerstache pitchfork heirloom gastropub kombucha VHS. Humblebrag sustainable hella austin pour-over blog. Meh ugh stumptown sartorial occupy taxidermy leggings tousled, pitchfork brooklyn fingerstache asymmetrical typewriter echo park. YOLO lomo shabby chic yr fingerstache, neutra organic cardigan cred selvage you probably haven\'t heard of them portland roof party franzen.')

scenario2 = Scenario.create(floor_plan_url: 'http://digitalcollections.nypl.org/items/510d47da-d779-a3d9-e040-e00a18064a99', text_intro: 'Lumbersexual viral yuccie stumptown cronut. Vinyl craft beer knausgaard swag, thundercats franzen meggings single-origin coffee you probably haven\'t heard of them. Quinoa yuccie roof party taxidermy, next level blog cred retro meggings whatever actually plaid keytar franzen. Cornhole freegan VHS bushwick fashion axe 3 wolf moon, fixie pug. Cred vegan poutine, shabby chic knausgaard pork belly cronut cray ugh kale chips helvetica literally scenester. Tote bag occupy typewriter, hashtag pabst tousled ugh pork belly. Banh mi letterpress gochujang taxidermy.')

q1 = Question.create(picture: 'http://digitalcollections.nypl.org/items/5e66b3e8-db53-d471-e040-e00a180654d7', text: 'Swag forage post-ironic, cray four dollar toast lomo single-origin coffee. Pour-over butcher migas godard, yuccie lo-fi ethical pinterest. Truffaut cronut shoreditch jean shorts austin, meggings etsy hammock fashion axe artisan retro pop-up twee meh. Cray ugh thundercats, marfa kogi normcore pop-up etsy lumbersexual. Roof party dreamcatcher you probably haven\'t heard of them whatever umami shabby chic. Locavore helvetica selfies, iPhone drinking vinegar aesthetic church-key thundercats. Squid brooklyn photo booth, direct trade godard hoodie forage fingerstache butcher.', answer: 25, hint: '8-bit retro keytar occupy, vegan brunch poutine farm-to-table chambray knausgaard cred synth godard chillwave.', category: 'Math', left_coordinate: 200, top_coordinate: 300)

q2 = Question.create(picture: 'http://digitalcollections.nypl.org/items/510d47da-e942-a3d9-e040-e00a18064a99', text: 'Scenester poutine gluten-free mixtape ramps, 3 wolf moon mlkshk lomo whatever. Pour-over pop-up mlkshk small batch echo park. Asymmetrical small batch meggings, DIY forage direct trade neutra organic ramps lumbersexual fanny pack kombucha fingerstache poutine intelligentsia. Cliche wayfarers narwhal twee flexitarian mumblecore whatever, brunch deep v chambray post-ironic viral readymade salvia. Pork belly DIY typewriter kogi. Biodiesel tattooed next level blog pour-over 3 wolf moon franzen, jean shorts chicharrones tote bag.', answer: 'Vernacular', category: 'English', left_coordinate: 300, top_coordinate: 500)

