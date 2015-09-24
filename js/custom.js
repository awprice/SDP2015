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

        $('.workshop-listing').click(function() {
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
     * Displays the "mark" field on the register form
     *
     * @param field
     */
    function displayMarkField(field) {

        var inputId = "register-educationalBackground-" + $(field).attr('data-type') + "-mark";
        var inputName = "register[educationalBackground][" + $(field).attr('data-type') + "][mark]";

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

        if ($(field).find('.read-more').css('display') != 'none') {

            // hide the other listings
            var workshopListing = $('.workshop-listing');
            workshopListing.each(function () {
                $(this).find('.read-more').css('display', 'block');
                $(this).find('.workshop-contents').css('max-height', '60px');
                $(this).css('opacity', '0.5');
            });

            // hide the blur and expand the description
            $(field).css('opacity', '1');
            $(field).find('.read-more').css('display', 'none');
            $(field).find('.workshop-contents').animate({'max-height': '350px'}, 'slow');

            // scroll the window so the workshop listing is in the middle of the screen
            var windowHeight = $(window).height();
            // roughly double it
            var elementHeight = $(field).height() * 2;
            $(window).scrollTop(($(field).offset().top - (windowHeight / 2) + (elementHeight / 2)));

        } else {
            // minimise the workshop listing
            var workshopListing = $('.workshop-listing');
            workshopListing.each(function () {
                $(this).find('.read-more').css('display', 'block');
                $(this).find('.workshop-contents').css('max-height', '60px');
                $(this).css('opacity', '1');
            });
        }

        return false;

    }

})(jQuery);