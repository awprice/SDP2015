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

        $('.workshop-listing .panel-heading').click(function() {
           toggleDescription($(this).parent());
        });

        $('.workshop-listing .workshop-confirm-buttons .workshop-no-button').click(function () {
            toggleDescription($(this).closest('.workshop-listing'));
        });

        $('.workshop-listing .workshop-book-button').click(function() {
           displayConfirm(this);
        });

        $('.workshop-listing .workshop-confirm-buttons .workshop-yes-button').click(function() {
           confirmBooking(this);
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
    function toggleDescription(panel) {

        if ($(panel).find('.read-more').css('display') != 'none') {

            // hide the other listings
            $('.workshop-listing').each(function () {
                $(this).find('.workshop-description').css('display', 'block');
                $(this).find('.workshop-no-description').css('display', 'block');
                $(this).find('.workshop-are-you-sure').css('display', 'none');
                $(this).find('.workshop-confirm-buttons').css('display', 'none');
                $(this).find('.workshop-loader').css('display', 'none');
                $(this).find('.workshop-success').css('display', 'none');
                $(this).find('.workshop-failure').css('display', 'none');
                $(this).find('.workshop-book-button').css('display', 'block');
                $(this).find('.read-more').css('display', 'block');
                $(this).find('.workshop-contents').css('max-height', '60px');
                $(this).css('opacity', '0.5');
            });

            // hide the blur and expand the description
            $(panel).css('opacity', '1');
            $(panel).find('.read-more').css('display', 'none');
            $(panel).find('.workshop-contents').animate({'max-height': '350px'}, 'fast');

            // scroll the window so the workshop listing is in the middle of the screen
            var windowHeight = $(window).height();
            // roughly double it
            var elementHeight = $(panel).height() * 2;
            $(window).scrollTop(($(panel).offset().top - (windowHeight / 2) + (elementHeight / 2)));

        } else {
            // minimise the workshop listing
            $('.workshop-listing').each(function () {
                $(this).find('.workshop-description').css('display', 'block');
                $(this).find('.workshop-no-description').css('display', 'block');
                $(this).find('.workshop-are-you-sure').css('display', 'none');
                $(this).find('.workshop-confirm-buttons').css('display', 'none');
                $(this).find('.workshop-loader').css('display', 'none');
                $(this).find('.workshop-success').css('display', 'none');
                $(this).find('.workshop-failure').css('display', 'none');
                $(this).find('.workshop-book-button').css('display', 'block');
                $(this).find('.read-more').css('display', 'block');
                $(this).find('.workshop-contents').css('max-height', '60px');
                $(this).css('opacity', '1');
            });
        }

        return false;

    }

    /**
     * Displays the confirm yes no buttons.
     *
     * @param button
     * @returns {boolean}
     */
    function displayConfirm(button) {

        var panel = $(button).closest('.workshop-listing');

        $(panel).find('.workshop-description, .workshop-no-description').fadeOut('fast', function() {
            $(panel).find('.workshop-are-you-sure').fadeIn('fast');
        });



        $(panel).find('.workshop-book-button').fadeOut('fast', function() {
           $(panel).find('.workshop-confirm-buttons').fadeIn('fast');
        });

        return false;

    }

    function confirmBooking(button) {

        var panel = $(button).closest('.workshop-listing');

        $(panel).find('.workshop-confirm-buttons').fadeOut('fast');
        $(panel).find('.workshop-are-you-sure').fadeOut('fast', function() {
            $(panel).find('.workshop-loader').fadeIn('fast');
            // do ajax stuff
            var result = "success";
            if (result == "success") {
                $(panel).find('.workshop-loader').fadeOut('fast', function() {
                    $(panel).find('.workshop-success').fadeIn('fast');
                });
            } else {
                $(panel).find('.workshop-loader').fadeOut('fast', function() {
                    $(panel).find('.workshop-failure').fadeIn('fast');
                });
            }
        });

    }

})(jQuery);