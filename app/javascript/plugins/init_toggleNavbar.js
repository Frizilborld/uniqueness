function toggleNavbar (){
  window.addEventListener("scroll", function (){
    console.log('hello');
    let Navbar = document.getElementById('smallnavbar');
    if(this.window.scrollY > 60){
      Navbar.classList.add("navbar-mini");
    } else {
      Navbar.classList.remove("navbar-mini");
    }
  })
}

export { toggleNavbar };
