let language = 'English'
let languageCode = 'en'
let jsonData
let tweetsWithHashtags


const setLanguage = (code) => {
    //Note: language codes here: https://www.w3schools.com/tags/ref_language_codes.asp
    languageCode = code
    if (code === 'ru') {
        language = 'Russian'
    } else if (code === 'es') {
        language = 'Spanish'
    } else {
        language = 'English'
    }
    document.getElementById('language').innerHTML = language

    //clear form:
    getData()
}

const clearData = () => {
    const element = document.getElementById('results')
    while (element.firstChild) {
        element.removeChild(element.firstChild)
    }
}

//Note: language codes here: https://www.w3schools.com/tags/ref_language_codes.asp
const getData = () => {

    const term = document.getElementById('term').value
    const baseURL = 'https://mmart168-twitter-proxy.herokuapp.com/1.1/search/tweets.json?q=' + term
    twitterURL = baseURL + '&lang=' + languageCode
    fetch(twitterURL)
        .then(function(response) {
            return response.json()
        })
        .then(function(json) {
            let div
            let textNode

            // output statuses:
            console.log(json.statuses)

            // clear out existing tweets:
            clearData()

            // create new array with only statuses w/hashtags:
            tweetsWithHashtags = json.statuses.filter(function (status) {
                return status.text.indexOf('#') >= 0
            })

            // loop through new array (instead of looping through all statuses)
            tweetsWithHashtags.forEach((status) => {
                div = document.createElement('div')
                div.className = 'tweet'
                textNode = document.createTextNode(status.text)
                div.appendChild(textNode)
                document.getElementById('results').appendChild(div)
            })

        })
}
