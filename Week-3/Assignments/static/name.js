let httpRequest
let input_value
const button = document.querySelector('.save-button')

button.addEventListener('click', makeRequest);

function makeRequest() {
    input_value = document.querySelector('.input-name').value;
    console.log('button clicked');

    httpRequest = new XMLHttpRequest();

    if (!httpRequest) {
        alert("Giving up :( Cannot create an XMLHTTP instance");
        return false;
    }

    httpRequest.onreadystatechange = handler;
    httpRequest.open("GET", `http://localhost:3000/trackName?name=${input_value}`, true);
    httpRequest.send()
}

function handler() {
    if (httpRequest.readyState === XMLHttpRequest.DONE) {
        if (httpRequest.status === 200) {
            console.log(`saving user name '${input_value}'`)
            window.location.href = `http://localhost:3000/myName`;
        } else {
            alert("There was a problem with the request.");
        }
    }
};