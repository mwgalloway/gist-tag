$(document).ready(function() {
  $('.tag-box').on('click', 'a', function(e) {
    e.preventDefault();

    var $tagLink = $(this);

    $.ajax({
      url: $tagLink.attr('href')
    })
    .done(function(response) {
      console.log('append!');
      $('.gist-box').append(response);
    })
  })

});
