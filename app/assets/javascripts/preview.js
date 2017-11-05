$(function(){
  $('.js-file').on('change', 'input[type="file"]', function(e) {　　　
    var file = e.target.files[0];
    var reader = new FileReader();
    var $preview = $(e.currentTarget).next().attr('class');
    var $dot = ".";
    var previewclass = $dot + $preview
    var $previewsize = $(e.currentTarget).data('previewsize');

    if (!this.files.length) {
        return;
    }
    debugger
    reader.onload = (function(file, $previewclass) {
      return function(e) {
        previewclass.empty();
        previewclass.append($('<img>').attr({
                  src: e.target.result,
                  width: $previewsize,
                  class: "preview",
                  title: file.name
              }));
      };
    })(file);

    reader.readAsDataURL(file);
  });
})
