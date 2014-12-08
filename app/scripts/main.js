(function() {
  'use strict';

  var codeBlock = {

    format: function($el) {
      var $h2 = $el.siblings('h2'),
          $p = $el.siblings('p'),
          h = 400 - $h2.outerHeight(true) - $p.outerHeight(true);
      $el.height(h);
    },

    populate: function($el) {
      var id = $el.attr('id');
      $.get('../scripts/' + id + '.pde', function(data) {
        $el.html(data);
      });
    }

  };

  _.each($('.prettyprint'), function(obj) {
    codeBlock.format($(obj));
    codeBlock.populate($(obj));
  });

})();
