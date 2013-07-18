// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $('.button_to').on('ajax:success', function(e, data, status, xhr) {
    $('.modal').modal('hide');
    $('.container').prepend('<div class="alert alert-success"><strong>Well done! </strong>App was successfully created.</div>');
  });
});