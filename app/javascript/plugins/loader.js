function showLoading() {
  if (document.querySelector(".load")) {
    document.querySelector(".load").addEventListener('click', event => {
      $('#loading').show();
    })
  }
}

export { showLoading };
