
const arr = [];
arr[0] = '';
for(i = 1; i <= 100; i++) {
    arr[i] = `"./wallpapers_change/image (${i}).jpg"`;
}
// const arr = ["./wallpapers/gta5.jpg", "./wallpapers/spiderman.png"];

console.log(arr[50])

const btn = document.querySelector('#theme-switcher');

btn.addEventListener('click', function() {
    if (sessionStorage.getItem('mode') == 'null') {
        sessionStorage.setItem('mode', 0)

    } else {
        let x = Number(sessionStorage.getItem('mode'));
        sessionStorage.setItem('mode', (x + 1) % arr.length);
        // console.log(x);
    }
    document.querySelector('body').style.backgroundImage = `linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url(${arr[sessionStorage.getItem('mode')]})`;
});
if (sessionStorage.getItem('mode') != 'null' && sessionStorage.getItem('mode2') == 'null') {
    document.querySelector('body').style.backgroundImage = `linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url(${arr[sessionStorage.getItem('mode')]})`;
    console.log(1)
} else if (sessionStorage.getItem('mode2') != 'null'){
    sessionStorage.setItem('mode2', 'null');
}

const NAME = "once";

window.onload = function openNav() {
    if (this.name !== NAME) {
      this.name = NAME;
      sessionStorage.setItem('mode', 1)
    } else {
      // do other stuff
      console.log(this.name)
    }
}

// var i = 0;
// window.onload = (event) => {
//     if (i == 0) {
//         sessionStorage.setItem('mode', 1)
//         i = i + 1;
//     }
//   };
// console.log(i)

// Hide Header on on scroll down
var didScroll;
var lastScrollTop = 0;
var delta = 5;
var navbarHeight = $('header').outerHeight();

$(window).scroll(function(event){
    didScroll = true;
});

setInterval(function() {
    if (didScroll) {
        hasScrolled();
        didScroll = false;
    }
}, 250);

function hasScrolled() {
    var st = $(this).scrollTop();
    
    // Make sure they scroll more than delta
    if(Math.abs(lastScrollTop - st) <= delta)
        return;
    
    // If they scrolled down and are past the navbar, add class .nav-up.
    // This is necessary so you never see what is "behind" the navbar.
    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        $('header').removeClass('nav-down').addClass('nav-up');
    } else {
        // Scroll Up
        if(st + $(window).height() < $(document).height()) {
            $('header').removeClass('nav-up').addClass('nav-down');
        }
    }
    
    lastScrollTop = st;
}