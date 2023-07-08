const welcomeMessage = document.querySelector('.welcome')
welcomeMessage.addEventListener('click', () => {
    console.log('click welcome message!')
    welcomeMessage.textContent='Have a Good Time!'
})

const button = document.querySelector('.button');
button.addEventListener('click', () => {
    console.log('Button clicked!');
    const contentToShow = document.querySelector('.content-2');
    contentToShow.removeAttribute('style');
})