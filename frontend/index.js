//FETCH FROM VENUES ENDPOINT

//SELECT CARD CONTAINER DIV
//CREATE HTML ELEMENTS DISPLAYING VENUE DETAILS
//MANIPULATE ELEMENT
//APPEND HTML ELEMENT TO CARD CONTAINER

//venue name = H2
//venue location = H4
//venue image = img

const $cardContainer = document.querySelector('#card-container')

fetch('http://localhost:3000/venues')
    .then(response => response.json())
    .then(venues => {
        venues.forEach(venue => {
            //SELECTING CONTAINER FROM HTML
            const $cardDiv = document.createElement('div')
            $cardDiv.className = "card"

            //CREATING ELEMENTS
            const $venueName = document.createElement('h2')
            const $venueLocation = document.createElement('h4')
            const $venueImage = document.createElement('img')

            //MANIPULATING ELEMENTS
            $venueName.textContent = venue.name
            $venueLocation.textContent = venue.location
            $venueImage.src = venue.image

            const festivalNames = venue.festivals.map(festival => festival.name)

            //ATTACH TO DOM
            $cardDiv.append($venueName, $venueLocation, $venueImage)
            $cardContainer.append($cardDiv)
        }
    )})