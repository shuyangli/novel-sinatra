$(document).ready(function () {
  $(".js-book-popup-panel").hide();

  $(".js-book-popup").on("click", function () {

    var popup_id = $(this).data("popup-id");

    var popup_panel = $(".js-book-popup-panel").filter(function() {
      return $(this).data("popup-id") == popup_id;
    });

    if (popup_panel.is(":hidden")) {
      $(".js-book-popup-panel").hide();
      popup_panel.show();
    } else {
      popup_panel.hide();
    }
  });
});
