let language
let languageCode

const setLanguage = (code) => {
    /*
    ----------------------------------------------------------------------------
    ANSWERS
    ----------------------------------------------------------------------------
    The setLanguage method's job is to set the languageCode variable (which
    is a global variable), based on the button the user clicked on. Each
    button is associated with a different language code parameter.
    ----------------------------------------------------------------------------
    */
    languageCode = code
    if (code === 'fr') {
        language = 'French'
    } else if (code === 'it') {
        language = 'Italian'
    } else {
        language = 'Chinese'
    }
    document.getElementById('language').innerHTML = language
}
