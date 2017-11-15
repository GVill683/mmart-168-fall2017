const apiKey = 'MW9S-E7SL-26DU-VV8V'

const makeStationList = () => {
//url that asks the question you want to you ask. In this case, give me
//a list of all of the Bart stations:
    const url = 'https://api.bart.gov/api/stn.aspx?key=' + apiKey +
                    '&cmd=stns&json=y'
    fetch(url)
        .then((response) => {
            return response.json()
        })
        .then((json) => {
          //Do the thing!
            json = json.root
            console.log(json)
            json.stations.station.forEach((station) => {
              const option = document.createElement("option")

              option.innerHTML = station.name
              option.value = station.abbr

              document.getElementById('station_list').appendChild(option)
          })

            /*
            // PART III.A.: Use a loop to populate the select menu with *ALL*
            // of the stations that are returned from the BART data feed:
            const option1 = document.createElement("option")
            option1.value = 'DBRK'
            option1.innerHTML = 'Downtown Berkeley'
            document.getElementById('station_list').appendChild(option1)
            */
        })
        .catch((err) => {
            console.log(err)
        })
      }

const getArrivalTimes = () => {
  // go out and find the element witht he stationList (element), storing it in a variable called stationList
    const stationList = document.getElementById('station_list')
    // PART III.B.1: The bartStationCode should read from the list and query
    // for the corresponding station
    const bartStationCode = stationList.value

    console.log (bartStationCode)
    console.log('Selected Station Code:', bartStationCode)
    let url = 'https://api.bart.gov/api/etd.aspx?key=' + apiKey + '&cmd=etd' +
                '&orig=' + bartStationCode + '&json=y'
    fetch(url)
        .then((response) => {
            return response.json()
        })
        .then((json) => {
          json = json.root


          // clear out existing div
          document.getElementById('results').innerHTML = ''

          //add header that shows the selected station name
          const header = document.createElement("h2")
          header.innerHTML =  json.station[0].name
          document.getElementById('results').appendChild(header)

          // log all of the train lines:
          json.station[0].etd.forEach((line) => {

            const trainLine = document.createElement("h3")
            trainLine.innerHTML =  line.destination

            trainLine.innerHTML += ':Platform #' + line.estimate [0].platform

            trainLine.innerHTML +=  ' (' + line.estimate [0].direction + ')'

            document.getElementById('results').appendChild(trainLine)

            const square = document.createElement("span")
            square.style.background = line.estimate [0].hexcolor

            document.getElementById('results').appendChild(square)

            //log all the estimates for each train line:
          const departureTimes = []
          line.estimate.forEach((estimate) => {
              departureTimes.push(estimate.minutes)
              console.log('Estimate', estimate)
            })


            const departureTime = document.createElement("span")
            departureTime.innerHTML = departureTimes.join (', ')
            departureTime.innerHTML += 'minutes'
            document.getElementById('results').appendChild(departureTime)

          })

        })

  }

    /*
    console.log('Selected Station Code:', bartStationCode)
    let url = 'https://api.bart.gov/api/etd.aspx?key=' + apiKey + '&cmd=etd' +
                '&orig=' + bartStationCode + '&json=y'
    fetch(url)
        .then((response) => {
            return response.json()
        })
        .then((json) => {
          json = json.root
          console.log(json)

            const results = document.getElementById('results')
            results.innerHTML = ''
            json.station = json.station[0]
            if (!Array.isArray(json.station.etd)) {
                json.station.etd = [ json.station.etd ]
            }
            json.station.etd.forEach(trainLine => {
                if (!Array.isArray(trainLine.estimate)) {
                    trainLine.estimate = [ trainLine.estimate ]
                }
                // PART III.B.2: Instead of printing this info to the console,
                // output it to the DOM
                console.log('------------------------------------------------------------------------')
                console.log('FROM:', stationList.options[stationList.selectedIndex].text.toUpperCase())
                console.log('TO:', trainLine.destination.toUpperCase())
                console.log('------------------------------------------------------------------------')
                trainLine.estimate.forEach(estimate => {
                    // PART III.B.2. Instead of printing this info to the console,
                    // output it to the DOM
                    console.log(
                        ' * Direction:', estimate.direction,
                        ', Leaving: ', estimate.minutes,
                        ', Color: ', estimate.hexcolor,
                        ', Platform:', estimate.platform,
                        ', Delay?:', estimate.delay
                    )
                })
            })
        })
        .catch((err) => {
            console.log(err)
        })
        */

makeStationList()
