function toggleNavbar (){
  window.scroll(0, 0);
  window.addEventListener('scroll', function (){
    let navbar = document.getElementById('smallnavbar');
    if(window.scrollY > 60) {
      document.querySelectorAll('#smallnavbar').forEach((el) => {
        el.classList.add('navbar-mini');
      })
    } else {
      document.querySelectorAll('#smallnavbar').forEach((el) => {
        el.classList.remove('navbar-mini');
      })
    }
  })
}

export { toggleNavbar };
