$(function(){
  $('.js-file').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0];
    var reader = new FileReader();
    var $preview = $(".preview");

    if (!this.files.length) {
        return;
    }

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "740px",
                  class: "preview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});

$(function(){
  $('.js-file-1').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0];
    var reader = new FileReader();
    var $preview = $(".preview-1");

    if (!this.files.length) {
        return;
    }

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "200px",
                  class: "preview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});

$(function(){
  $('.js-file-2').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0];
    var reader = new FileReader();
    var $preview = $(".preview-2");

    if (!this.files.length) {
        return;
    }

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: "200px",
                  class: "preview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
});