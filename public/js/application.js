$(document).ready(function() {
    var $gistBox = $('.gist-box');
    var $snippetBox = $('.snippet-box');

  $('.tag-box').on('click', 'a', function(e) {
    e.preventDefault();

    var $tagLink = $(this);

    $.ajax({
      url: $tagLink.attr('href')
    })
    .done(function(response) {
      $gistBox.empty();
      $snippetBox.empty();
      $gistBox.append(response);
    })
  })

  $gistBox.on('click', 'a', function(e) {
    e.preventDefault();

    var $gistLink = $(this);

    $.ajax({
      url: $gistLink.attr('href')
    })
    .done(function(response) {
      $snippetBox.empty();
      $snippetBox.append(response);
    })
  })

});
