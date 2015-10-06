(function($) {

    $(document).ready(function() {

        console.log("Page loaded.");

        // set the min height of the container so that the footer is at the bottom
        setMinHeight();

        // Restrict all inputs with class .numeric to only enter numbers
        $('input.numeric').numeric();

        $('.education-checkbox').change(function() {
            displayMarkField(this);
        });
        $('.workshop-listing .panel-heading').click(function() {
           toggleDescription($(this).parent());
        });
        $('.booking-listing .panel-heading').click(function () {
           toggleBookingDescription($(this).parent());
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
        $('.booking-listing .booking-confirm-buttons .booking-yes-button').click(function() {
           cancelBooking(this);
        });
        $('.booking-listing .booking-buttons .booking-cancel-button').click(function() {
            displayBookingCancelConfirm(this);
        });
        $('.workshop-divider').click(function() {
            toggleDivider(this);
        })

    });

    function setMinHeight() {

        var navHeight = $('.navbar').height(),
            windowHeight = $(window).height();

        $('body > .container').css('min-height', (windowHeight - navHeight - 195) + 'px');

    }

    /**
     * Does an ajax query, sends data to the specified callback
     *
     * @param url
     * @param method
     * @param data
     * @param callback
     */
    function ajax(url, method, data, callback) {
        $.ajax({
            url: url,
            method: method,
            data: data,
            success: function (data) {
                callback(data);
            }
        });
    }

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

        if ($(panel).find('.panel-body').css('display') == 'none') {

            // hide the other listings
            $('.workshop-listing').each(function () {
                $(this).find('.workshop-description').show();
                $(this).find('.workshop-no-description').show();
                $(this).find('.workshop-are-you-sure').hide();
                $(this).find('.workshop-confirm-buttons').hide();
                $(this).find('.workshop-loader').hide();
                $(this).find('.workshop-success').hide();
                $(this).find('.workshop-failure').hide();
                $(this).find('.workshop-book-button').show();
                $(this).find('.panel-body').slideUp('fast');
            });

            // hide the blur and expand the description
            $(panel).find('.panel-body').slideDown('fast');

            // scroll the window so the workshop listing is in the middle of the screen
            var windowHeight = $(window).height();
            // roughly double it
            var elementHeight = $(panel).height() * 2;
            $(window).scrollTop(($(panel).offset().top - (windowHeight / 2) + (elementHeight / 2)));

        } else {
            // minimise the workshop listing
            $('.workshop-listing').each(function () {
                $(this).find('.workshop-description').show();
                $(this).find('.workshop-no-description').show();
                $(this).find('.workshop-are-you-sure').hide();
                $(this).find('.workshop-confirm-buttons').hide();
                $(this).find('.workshop-loader').hide();
                $(this).find('.workshop-success').hide();
                $(this).find('.workshop-failure').hide();
                $(this).find('.workshop-book-button').show();
                $(this).find('.panel-body').slideUp('fast');
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

    /**
     * Sends an ajax request and confirms a booking/joins a waiting list.
     *
     * @param button
     */
    function confirmBooking(button) {

        var panel = $(button).closest('.workshop-listing');

        var id = $(panel).attr('data-id'),
            url = $(panel).attr('data-url');

        $(panel).find('.workshop-confirm-buttons').fadeOut('fast');
        $(panel).find('.workshop-are-you-sure').fadeOut('fast', function() {
            $(panel).find('.workshop-loader').fadeIn('fast');

            ajax(url, 'POST', {'id': id}, function (data) {
                if (data.success) {
                    $(panel).find('.workshop-success h4').text(data.message);
                    $(panel).find('.workshop-loader').fadeOut('fast', function() {
                        $(panel).find('.workshop-success').fadeIn('fast');
                    });
                } else {
                    $(panel).find('.workshop-failure h4').text(data.message);
                    $(panel).find('.workshop-loader').fadeOut('fast', function() {
                        $(panel).find('.workshop-failure').fadeIn('fast');
                    });
                }
            });

        });

    }

    /**
     * Toggles a bookings description
     *
     * @param booking
     * @returns {boolean}
     */
    function toggleBookingDescription(booking) {

        if ($(booking).find('.panel-body').css('display') == 'none') {
            // minimise all of the booking listings
            $('.booking-listing').each(function () {
                $(this).find('.panel-body').slideUp('fast');
            });
            $(booking).find('.panel-body').slideDown('fast');
        } else {
            // minimise all of the booking listings
            $('.booking-listing').each(function () {
                $(this).find('.panel-body').slideUp('fast');
            });
        }

        return false

    }

    /**
     * Cancels a booking
     *
     * @param button
     */
    function cancelBooking(button) {

        var booking = $(button).closest('.booking-listing');
        var bookingId = $(booking).attr('data-booking-id'),
            workshopId = $(booking).attr('data-workshop-id');

        $(booking).find('.booking-confirm-buttons').fadeOut('fast');
        $(booking).find('.booking-are-you-sure').fadeOut('fast', function() {
           $(booking).find('.booking-loader').fadeIn('fast');

            ajax('/ajax/booking/cancel', 'POST', {bookingId: bookingId, workshopId: workshopId}, function (data) {
               if (data.success) {
                   $(booking).find('.booking-success h4').text(data.message);
                   $(booking).find('.booking-loader').fadeOut('fast', function() {
                      $(booking).find('.booking-success').fadeIn('fast', function() {
                          setTimeout(function() {
                              $(booking).fadeOut('fast', function() {
                                  $(booking).remove();
                              });
                          }, 1500);
                      });
                   });
               } else {
                   $(booking).find('.booking-failure h4').text(data.message);
                   $(booking).find('.booking-loader').fadeOut('fast', function() {
                       $(booking).find('.booking-failure').fadeIn('fast');
                   });
               }
            });
        });

    }

    /**
     * Displays the confirm yes no buttons for canceling a booking
     *
     * @param button
     * @returns {boolean}
     */
    function displayBookingCancelConfirm(button)  {

        var booking = $(button).closest('.booking-listing');

        $(booking).find('.booking-description, .booking-no-description').fadeOut('fast', function() {
            $(booking).find('.booking-are-you-sure').fadeIn('fast');
        });

        $(booking).find('.booking-buttons').fadeOut('fast', function() {
            $(booking).find('.booking-confirm-buttons').fadeIn('fast');
        });

        return false;

    }

    /**
     * Toggles the workshop sections with the dividers
     *
     * @param divider
     */
    function toggleDivider(divider) {

        var type = $(divider).attr('data-divider');
        var workshops = $('.workshop-' + type);

        if ($(workshops).css('display') != 'none') {
            $(divider).find('.workshop-divider-chevron').removeClass('fa-chevron-down');
            $(divider).find('.workshop-divider-chevron').addClass('fa-chevron-right');
            $(workshops).fadeOut('fast');
        } else {
            $(divider).find('.workshop-divider-chevron').removeClass('fa-chevron-right');
            $(divider).find('.workshop-divider-chevron').addClass('fa-chevron-down');
            $(workshops).fadeIn('fast');
        }

    }

})(jQuery);