const button_signup = document.querySelector('.signup-button')
const button_signin = document.querySelector('.signin-button')
const message = document.querySelector('.message')

button_signup.addEventListener('click', function(){makeRequest(type='signup')});
button_signin.addEventListener('click', function(){makeRequest(type='signin')});


function makeRequest(type) {
    let email = document.querySelector(`.${type}-email`).value;
    let password = document.querySelector(`.${type}-password`).value;

    console.log(`${type} button clicked`);

    let httpRequest = new XMLHttpRequest();

    if (!httpRequest) {
        alert("Giving up :( Cannot create an XMLHTTP instance");
        return false;
    }

    httpRequest.onreadystatechange = function () {
        handler(httpRequest)
    };
    httpRequest.open("GET", `http://127.0.0.1:3000/${type}?email=${email}&password=${password}`, true);
    httpRequest.send()
}

function handler(httpRequest) {
    if (httpRequest.readyState === XMLHttpRequest.DONE) {
        if (httpRequest.status === 200) {
            const resp = httpRequest.responseText
            console.log(resp)
            message.textContent = resp
            if (resp==='sign in successfully!'){
               window.location.href = "http://127.0.0.1:3000/member"
            }
        } else {
            alert("There was a problem with the request.");
        }
    }
};
