//Gabriel Villela 
let language
let languageCode

const setLanguage = (code) => {
  //setLanguage: redefines the variable of the language being set.
    //Note: language codes here: https://www.w3schools.com/tags/ref_language_codes.asp
    languageCode = code
    if (code === 'pt') {
        language = 'Portuguese'
    } else if (code === 'it') {
        language = 'Italian'
    } else {
        language = 'English'
    }
    document.getElementById('language').innerHTML = language
}
