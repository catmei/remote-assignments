let httpRequest
let input_value
const button = document.querySelector('.cal-button');
const answer = document.querySelector('.answer')

button.addEventListener('click', makeRequest);

function makeRequest() {
    input_value = document.querySelector('.input-number').value;
    console.log('button clicked');
    console.log(`input_value: ${input_value}`)

    httpRequest = new XMLHttpRequest();

    if (!httpRequest) {
        alert("Giving up :( Cannot create an XMLHTTP instance");
        return false;
    }

    httpRequest.onreadystatechange = handler;
    httpRequest.open("GET", `http://localhost:3000/data?number=${input_value}`, true);
    httpRequest.send()
}

function handler() {
<!--        console.log('handling')-->
<!--        console.log('readyState', httpRequest.readyState)-->
<!--        console.log('status', httpRequest.status)-->

    if (httpRequest.readyState === XMLHttpRequest.DONE) {
        if (httpRequest.status === 200) {
            ans = httpRequest.responseText
            answer.textContent = ans
        } else {
            alert("There was a problem with the request.");
        }
    }
};