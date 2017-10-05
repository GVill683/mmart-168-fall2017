const makeList = () => {
    let resultsElement = document.querySelector("#results")
    // empty results element:
    while (resultsElement.firstChild) {
        resultsElement.removeChild(resultsElement.firstChild)
    }
    // create new ordered list element:
    resultsElement.appendChild(document.createElement("ul"))
};

const addListItem = (status) => {
    var li = document.createElement("li")
    li.appendChild(document.createTextNode(status.text))
    document.querySelector("ul").appendChild(li)
};

const getData = () => {
    let term = document.getElementById("term").value;
    fetch("https://mmart168-twitter-proxy.herokuapp.com/1.1/search/tweets.json?q=" + term)
        .then(function(response) {
            return response.json()
        })
        .then(function(json) {
            console.log(json)
            makeList()
            json.statuses.forEach(function (status) {
                addListItem(status)
            })
        })
};

document.querySelector("#go").addEventListener("click", getData)
