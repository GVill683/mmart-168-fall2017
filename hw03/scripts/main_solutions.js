const beyonceTweet = {
    name: 'Beyoncé',
    handle: '@beyonce',
    text: '#LEMONADE the Visual Album.'
}

const links = ['https://twitter.com/mmart168', 'https://twitter.com/beyonce', 'http://www.billboard.com/files/media/beyonce-2016-press-Parkwood-Entertainment-Lemonade-billboard-1548-650-4.jpg']

const modifyText = () => {
    /*
    * Changes the text of message2 to be the message of the BeyonceTweet object
    * Changes the text of link2 to be the name from the BeyonceTweet object
    * Changes the text of user2 to be the handle from the BeyonceTweet object
    */
    document.getElementById('message2').innerHTML = beyonceTweet.text
    document.getElementById('link2').innerHTML = beyonceTweet.name
    document.getElementById('user2').innerHTML = beyonceTweet.handle
}

const changeLinkAndImageAttributes = () => {
    /*
    * Sets the href attribute for link1 to point to the first element in the links array
    * Sets the href attribute for link2 to point to the second element in the links array
    * Sets the src attribute for the beyonce image to point to the third element in the links array
    */
    document.getElementById('link1').href = links[0]
    document.getElementById('link2').href = links[1]
    document.getElementById('beyonce').src = links[2]
}

const changeClassAttribute = () => {
    /*
    Update the ***changeClassAttribute*** function so that it replaces the “tweet”
    class with the “tweet-pink” class for the two tweets.
    */
    document.getElementById('tweet1').className = 'tweet-pink'
    document.getElementById('tweet2').className = 'tweet-pink'
}

const appendElements = () => {
    /*
    Update the appendElements function so that it adds the following elements to the bottom of tweet1:
    * An "a" element (a link) that links to our course website (https://f17.ebook.mmart.us/) and has a link text that say "Intro to JavaScript."
    * An "img" element (an image) that points to an image of your choice, symbolizing something about the course.
    */
    const a = document.createElement('a')
    a.appendChild(document.createTextNode('Intro to JavaScript'))
    a.href = 'https://f17.ebook.mmart.us/'
    document.getElementById('tweet1').appendChild(a)

    const img = document.createElement('img')
    img.src = 'http://www.saporedicina.com/english/wp-content/uploads/2013/11/pandapuppy.jpg'
    document.getElementById('tweet1').appendChild(img)
}
