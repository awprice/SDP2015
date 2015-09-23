(function($) {

    $(document).ready(function() {

        console.log("Page loaded.");

        // Restrict all inputs with class .numeric to only enter numbers
        $('input.numeric').numeric();


        // Compile less and reload styles every 2 seconds
        //setInterval(compileLess, 5000);

        $('.education-checkbox').change(function() {
            displayMarkField(this);
        });

        $('.workshop-description .read-more').click(function() {
           toggleDescription(this);
        });


    });

    /**
     * Requests the less compile endpoint and then reloads the stylesheets
     */
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

    /**
     * Displays the "mark" field on the signup form
     *
     * @param field
     */
    function displayMarkField(field) {

        var inputId = "signup-educationalBackground-" + $(field).attr('data-type') + "-mark";
        var inputName = "signup[educationalBackground][" + $(field).attr('data-type') + "][mark]";

        if ($(field).is(':checked')) {
            $(field).parent().after('<input type="text" class="form-control input-lg" name="' + inputName + '" id="' + inputId + '" placeholder="Mark" required>');
        } else {
            $("#" + inputId).remove();
        }

    }

    /**
     * Toggles the display of workshop descriptions
     *
     * @param field
     * @returns {boolean}
     */
    function toggleDescription(field) {

        var descriptions = $('.workshop-description');
        descriptions.each(function() {
            $(this).find('.read-more').css('display', 'block');
            $(this).css('max-height', '60px');
        });

        var parentField = $(field).parent();
        $(field).css('display', 'none');
        parentField.animate({'max-height': '300px'}, 500);

        return false;

    }

})(jQuery);