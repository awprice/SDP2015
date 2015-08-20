(function($) {

  $(document).ready(function() {

    console.log("Page loaded.");

    // Compile less and reload styles every 2 seconds
    //setInterval(compileLess, 5000);

  });

  function compileLess() {
    // Compiling less
    console.log('Recompiling less');
    xmlhttp = new XMLHttpRequest();

    xmlhttp.open("GET", "/compile/less", false);
    xmlhttp.send();

    // Reload css
    console.log('Reloading css');
    document.styleSheets.reload();
  }

})(jQuery);