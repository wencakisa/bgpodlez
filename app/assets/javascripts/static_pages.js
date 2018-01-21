$(document).ready(function () {
  $('.button-collapse').sideNav()
  $('.slider').slider({ interval: 5000, height: 500 })
  $('.parallax').parallax()

  setTimeout(function () {
    $('.tap-target').tapTarget('open')
  }, 10)
})
