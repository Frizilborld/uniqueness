function showLoading() {
  document.querySelector(".load").addEventListener('click', event => {
    $('#loading').show();
  })
}

export { showLoading};
