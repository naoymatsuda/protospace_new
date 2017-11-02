$(function(){
  $('.js-file').on('change', 'input[type="file"]', function(e) {
    var file = e.target.files[0];
    var reader = new FileReader();
    var $preview = $(e.currentTarget).find('.preview');
    var previewSize = $preview.data('preview_size')

    if (!this.files.length) {
        return;
    }

    reader.onload = (function(file) {
      return function(e) {
        $preview.empty();
        $preview.append($('<img>').attr({
                  src: e.target.result,
                  width: previewSize,
                  class: "preview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
})
