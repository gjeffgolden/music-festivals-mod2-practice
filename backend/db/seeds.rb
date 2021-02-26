Festival.destroy_all
Venue.destroy_all

redrocks = Venue.create name: "Red Rocks", location: "Morrison, CO", image: "https://www.colorado.com/sites/default/files/styles/1000x685/public/redrocksfavorite_VD.jpg?itok=_6q91zkg"
telluride = Venue.create name: "Telluride Town Park", location: "Telluride, CO", image: "https://www.telluride.com/site/assets/files/34734/i-447p2jj-4k.jpg"
mishawaka = Venue.create name: "Mishawaka Amphitheater", location: "Fort Collins, CO", image: "https://media-cdn.tripadvisor.com/media/photo-s/14/a3/56/93/20180913-074810-largejpg.jpg"
planet_bluegrass = Venue.create name: "Planet Bluegrass Ranch", location: "Lyons, CO", image: "http://www.listenupdenver.com/wp-content/uploads/2011/04/FolksFest-Aerial-1024x685.jpg"
gerald_ford = Venue.create name: "Gerald R. Ford Amphitheater", location: "Vail, CO", image: "https://cdn.vaildaily.com/wp-content/uploads/sites/7/2016/08/EdFest3ToWatch-VDN-081716-1-1240x826.jpg"

Festival.create name: "Blues and Brews", venue: telluride
Festival.create name: "Telluride Bluegrass", venue: telluride
Festival.create name: "GoPro Mountain Games", venue: gerald_ford
Festival.create name: "Waterfront Music Festival", venue: mishawaka
Festival.create name: "Global Dance Festival", venue: redrocks
Festival.create name: "Red Rocks Music Festival", venue: redrocks
Festival.create name: "RockyGrass", venue: planet_bluegrass
Festival.create name: "Rocky Mountain Folks Festival", venue: planet_bluegrass
