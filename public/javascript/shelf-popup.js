function image_with_id(id) {
  return $(".js-book-popup").filter(function () {
    return $(this).data("popup-id") == id;
  });
};

function panel_with_id(id) {
  return $(".js-book-popup-panel").filter(function() {
    return $(this).data("popup-id") == id;
  });
};
