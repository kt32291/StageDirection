# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



companies = [
  { name: "Steppenwolf", description: "Steppenwolf operates as a not-for-profit organization relying on community support to produce or presents up to 16 plays and nearly 700 performances, readings and other events every year on our three stages. The theater’s artistic and educational programs draw a multi-generational audience of nearly 200,000 from the greater metropolitan Chicago area, while our impact reaches well beyond this region with productions that tour nationally and internationally." , phone: "386-801-5016" , email: "casting@steppenwolf.com" , logo: "photo.png" },
  { name: "Lookingglass", description: "From its inception, Lookingglass has shown an interest in image-heavy, physical theatrical pieces. An early critic noted that most Lookingglass work has revolved around explorations of the mythic and ritual roots of theatre and the symbolism of storytelling utiliza[tion of] live music and film, ritual movement and acrobatics, heightened language (and long stretches of silence), and non-realistic visual imaging that are characteristic of its technique" , phone: "312-929-381", email: "casting@lookingglass.com", logo: "lookingglass.jpg" },
  { name: "The Goodman", description: "The Goodman seeks to be a theater for all—a place where diverse audiences can experience extraordinary productions and programs. Ultimately, whether the Goodman is producing world premieres, the classics, culturally diverse works or musical theater, we want our work to speak to audiences in a contemporary way about the challenges and possibilities of the world in which we live." , phone: "386-679-2423", email: "casting@thegoodman.com", logo: "goodman-theatre-logo.png" }

]

new_companies = [
  { name: "Porchlight", description: "As the leader in music theatre in Chicago, Porchlight Music Theatre has staged 57 stellar productions including five world premieres and six Chicago premieres - earning growing die-hard audiences and national critical acclaim.  Porchlight is known for its bold, edgy and intimate music theatre, offering audiences the drama, the song and the dance “up close” from Chicago and Broadway’s brightest music theatre talent." , phone: "386-801-5016" , email: "casting@porchlight.com" , logo: "porchlight.jpg" },
  { name: "Light Opera Works", description: "LIGHT OPERA WORKS is a resident professional not-for-profit music theater in Evanston, Illinois, founded in 1980. The mission is to produce musical theater from a variety of world traditions. In its 32 seasons, LIGHT OPERA WORKS has presented more than 100 productions on its 1,000-seat Mainstage, 250-seat Second Stage and 450 seat Concert Stage venues." , phone: "312-929-381", email: "casting@lightoperaworks.com", logo: "lightopera.jpg" },
  { name: "Theatre At The Center", description: "Theatre at the Center (TATC) is the resident theatre at the Center for the Performing Arts. Its 5 Mainstage productions attract an audience of over 50,000 annually. TATC operates on an Actors Equity contract and regularly employs the finest performers in the greater Chicago area for its year-round seasons of classic American musicals, new plays and comedies. Other programming includes 4 Theatre for Young Audiences productions annually, theatre classes for young people and special events, including music, comedy and limited run theatrical works." , phone: "386-679-2423", email: "casting@tatc.com", logo: "tatc.jpg" }
]

auditions = [
  { name: "Tribes",
    post_date: Date.today,
    audition_date: "Friday, March 21st",
    description: "Billy's intellectual and proudly eccentric English family is its own tiny empire: private languages, in-jokes and fiery arguments. Billy, deaf since birth, is the only one who truly listens. When he meets his girlfriend Sylvia, he is introduced to a larger Deaf community, which sparks a struggle for self-identity and rebellion against his family. Tribes is sharp, witty story about finding the place where you can be heard and a family that feels like home.",
    company_id: 1,
    equity: true },
  { name: "The Little Prince",
    post_date: Date.today,
    audition_date: "Thursday, March 20th",
    description: "Stuck, thirsty and alone. A pilot stranded in the Sahara Desert meets an enigmatic, charismatic young prince fallen from the sky who regales him with tales of life among the stars: tales with earthly importance.",
    company_id: 2,
    equity: false },
  { name: "Ask Aunt Susan",
    post_date: Date.today,
    audition_date: "Thursday, March 27th",
    description: "Ask Aunt Susan introduces us to Aunt Susan, a twenty-something man who moonlights as an online advice guru. When “Ask Aunt Susan” becomes the web’s hottest spot for self-help, Aunt Susan’s boss, a reckless funder, rakes in the profits from women’s everyday woes. But as her online reputation mushrooms, so does Aunt Susan’s web of deceit—and soon the phenomenon is much bigger than Aunt Susan could have ever imagined.",
    company_id: 3,
    equity: true },
  { name: "How To Succeed...",
    post_date: Date.today,
    audition_date: "Monday, March 17th",
    description: "Power, sex, ambition, greed...it's just another day at the office. This satirical look at big business follows the rise of one “J. Pierrepont Finch” who uses a little “How to…” handbook to climb the corporate ladder from lowly window washer to high-powered executive. Follow our hero as he navigates the dangers of the aggressively compliant 'company man,' the office party, backstabbing co-workers, caffeine addiction and, of course, true love.",
    company_id: 4,
    equity: false },
  { name: "Damn Yankees",
    post_date: Date.today,
    audition_date: "Wednesday, March 19th",
    description: "Middle-aged Joe Boyd will do anything to see his beloved Washington Senators win the pennant—even sell his soul to the Devil. When he is transformed into young Joe Hardy, the baseball sensation of the year, he must decide if the life he gave up is more important than youth and fame. Can Satan’s sultry siren Lola persuade him?",
    company_id: 5,
    equity: false },
  { name: "Miracle on South Division Street",
    post_date: Date.today,
    audition_date: "Friday, March 28th",
    description: "By the author of Over the Tavern, this warm and funny comedy introduces the Nowaks of Buffalo, NY. Clara and her three grown children have kept a shrine since the day in 1942 when the Blessed Mother appeared to Grandpa in his barbershop! As Clara waits for the Pope to give 'the miracle' his seal of approval, daughter Ruth unveils her plan to star in a one-woman show so the 'whole world will know!' Expect the unexpected as long buried family secrets are revealed.",
    company_id: 6,
    equity: true }
]

if Company.count == 0

  companies.each do |company|
    c = Company.new
    c.name = company[:name]
    c.description = company[:description]
    c.phone = company[:phone]
    c.email = company[:email]
    c.logo = company[:logo]
    c.save
  end

end

if Company.count == 3

  new_companies.each do |company|
    c = Company.new
    c.name = company[:name]
    c.description = company[:description]
    c.phone = company[:phone]
    c.email = company[:email]
    c.logo = company[:logo]
    c.save
  end

end

Audition.destroy_all

auditions.each do |audition|
  a = Audition.new
  a.name = audition[:name]
  a.post_date = audition[:post_date]
  a.audition_date = audition[:audition_date]
  a.description = audition[:description]
  a.company_id = audition[:company_id]
  a.equity = audition[:equity]
  a.save
end
