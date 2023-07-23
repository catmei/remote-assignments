function ajax(src, callback){
    let httpRequest = new XMLHttpRequest();

    httpRequest.onreadystatechange = function() {
    
        if (httpRequest.readyState === XMLHttpRequest.DONE) {
            if (httpRequest.status === 200) {
                resp = JSON.parse(httpRequest.responseText)    
                callback(resp)

            } else {
                alert("There was a problem with the request.");
            }
        }
    };

    httpRequest.open("GET", src, true);
    httpRequest.send();
}


function render(data){
    const productListElement = document.createElement("ul");

    for (const item of data){
        const listItem = document.createElement("li");
        listItem.textContent = `${item.name} - $${item.price} - ${item.description}`;
        productListElement.appendChild(listItem);
    }
    document.body.appendChild(productListElement);
}


ajax("https://remote-assignment.s3.ap-northeast-1.amazonaws.com/products",
function(response){
render(response);
});