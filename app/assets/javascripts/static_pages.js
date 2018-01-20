$(document).ready(function () {
  $('.button-collapse').sideNav()
  $('.slider').slider({ interval: 3000, height: 450 })

  setTimeout(function () {
    $('.tap-target').tapTarget('open')
  }, 10)
})
