(function($) {

  $(document).ready(function() {

    console.log("Page loaded.");

    // Compile less and reload styles every 3 seconds
    setInterval(compileLess, 3000);

  });

  function compileLess() {
    // Compiling less
    xmlhttp = new XMLHttpRequest();

    xmlhttp.open("GET", "/compile/less", true);
    xmlhttp.send();

    // Reload css
    document.styleSheets.reload();
  }

})(jQuery);