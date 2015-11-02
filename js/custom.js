(function($) {

    var doc = $(document);

    doc.on('ready', function() {

        // set the min height of the container so that the footer is at the bottom
        setMinHeight();

        // Restrict all inputs with class .numeric to only enter numbers
        $('input.numeric').numeric();

        // For the selects, change the selected to the default value
        $('.change-default-value').each(function () {
           changeDefaultValue(this);
        });

    });

    doc.on('change', '.education-checkbox', function () {
        displayMarkField(this);
    });
    doc.on('change', '.education-checkbox-profile', function () {
       displayMarkFieldProfile(this);
    });
    doc.on('click', '.workshop-listing .panel-heading', function () {
        toggleDescription($(this).parent());
    });
    doc.on('click', '.booking-listing .panel-heading', function () {
        toggleBookingDescription($(this).parent());
    });
    doc.on('click', '.program-listing .panel-heading', function () {
        toggleProgramDescription($(this).parent());
    });
    doc.on('click', '.workshop-listing .workshop-confirm-buttons .workshop-no-button', function () {
        toggleDescription($(this).closest('.workshop-listing'));
    });
    doc.on('click', '.workshop-listing .workshop-book-button', function () {
        displayConfirm(this);
    });
    doc.on('click', '.workshop-listing .workshop-confirm-buttons .workshop-yes-button', function () {
        confirmBooking(this);
    });
    doc.on('click', '.booking-listing .booking-confirm-buttons .booking-yes-button', function () {
        cancelBooking(this);
    });
    doc.on('click', '.booking-listing .booking-buttons .booking-cancel-button', function () {
        displayBookingCancelConfirm(this);
    });
    doc.on('click', '.booking-listing .booking-buttons .booking-reminder-button', function () {
        displayReminders(this);
    });
    doc.on('click', '.workshop-divider', function () {
        toggleWorkshopDivider(this);
    });
    doc.on('click', '.booking-divider', function () {
        toggleBookingDivider(this);
    });
    doc.on('click', '.profile-divider', function () {
        toggleProfileDivider(this);
    });
    doc.on('click', '.program-divider', function () {
        toggleProgramDivider(this);
    });
    doc.on('change', '.search-campus', function () {
        redirectSearchCampus(this);
    });
    doc.on('change', '.search-campus-workshopset', function () {
        redirectSearchCampusWorkshopSet(this);
    });

    /**
     * Set the min height of the container so that the footer is at the bottom
     */
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
     * Displays the "mark" field on the register form
     *
     * @param field
     */
    function displayMarkField(field) {
        var inputId = "register-educationalBackground-" + $(field).attr('data-type') + "-mark";
        var inputName = "register[educationalBackground][" + $(field).attr('data-type') + "][mark]";

        if ($(field).is(':checked')) {
            var label = $(field).parents('label').find('h4').text();
            $(field).parents('label').after('<input type="text" class="form-control input-lg numeric" name="' + inputName + '" id="' + inputId + '" placeholder="' + label + ' Mark" required>');
            $('input.numeric').numeric();
        } else {
            $("#" + inputId).remove();
        }

    }

    /**
     * Displays the "mark" field on the profile form
     *
     * @param field
     */
    function displayMarkFieldProfile(field) {
        var inputId = "userinformation-educationalBackground-" + $(field).attr('data-type') + "-mark";
        var inputName = "userinformation[educationalBackground][" + $(field).attr('data-type') + "][mark]";

        if ($(field).is(':checked')) {
            var label = $(field).parents('label').find('h4').text();
            $(field).parents('label').after('<input type="text" class="form-control input-lg numeric" name="' + inputName + '" id="' + inputId + '" placeholder="' + label + ' Mark" required value="' + $(field).attr('data-value') + '">');
            $('input.numeric').numeric();
        } else {
            $("#" + inputId).remove();
        }

    }

    /**
     * Toggles the display of workshop descriptions
     *
     * @param panel
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
     * Toggles a programs description
     *
     * @param program
     * @returns {boolean}
     */
    function toggleProgramDescription(program) {

        if ($(program).find('.panel-body').css('display') == 'none') {
            // minimise all of the program listings
            $('.program-listing').each(function () {
                $(this).find('.panel-body').slideUp('fast');
            });
            $(program).find('.panel-body').slideDown('fast');
        } else {
            // minimise all of the program listings
            $('.program-listing').each(function () {
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
    function displayBookingCancelConfirm(button) {

        var booking = $(button).closest('.booking-listing');

        $(booking).find('.booking-description, .booking-no-description').fadeOut('fast', function() {
            $(booking).find('.booking-are-you-sure').fadeIn('fast');
        });

        $(booking).find('.booking-buttons').fadeOut('fast', function() {
            $(booking).find('.booking-confirm-buttons').fadeIn('fast');
        });

        return false;

    }

    function displayReminders(button) {

        var booking = $(button).closest('.booking-listing');

        $(booking).find('.booking-description, .booking-no-description').fadeOut('fast', function() {
            $(booking).find('.booking-reminder').fadeIn('fast');
        });

        $(booking).find('.booking-buttons').fadeOut('fast');

        return false;

    }

    /**
     * Toggles the workshop sections with the dividers
     *
     * @param divider
     */
    function toggleWorkshopDivider(divider) {

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

    /**
     * Toggles the booking sections with the dividers
     *
     * @param divider
     */
    function toggleBookingDivider(divider) {

        var type = $(divider).attr('data-divider');
        var bookings = $('.booking-' + type);

        if ($(bookings).css('display') != 'none') {
            $(divider).find('.booking-divider-chevron').removeClass('fa-chevron-down');
            $(divider).find('.booking-divider-chevron').addClass('fa-chevron-right');
            $(bookings).fadeOut('fast');
        } else {
            $(divider).find('.booking-divider-chevron').removeClass('fa-chevron-right');
            $(divider).find('.booking-divider-chevron').addClass('fa-chevron-down');
            $(bookings).fadeIn('fast');
        }

    }

    /**
     * Toggles the profile sections with the dividers
     *
     * @param divider
     */
    function toggleProfileDivider(divider) {

        var type = $(divider).attr('data-divider'),
            settings = $('.profile-' + type);

        if (settings.css('display') != 'none') {
            $(divider).find('.profile-divider-chevron').removeClass('fa-chevron-down');
            $(divider).find('.profile-divider-chevron').addClass('fa-chevron-right');
            settings.fadeOut('fast');
        } else {
            $(divider).find('.profile-divider-chevron').removeClass('fa-chevron-right');
            $(divider).find('.profile-divider-chevron').addClass('fa-chevron-down');
            settings.fadeIn('fast');
        }

    }

    /**
     * Toggles the program sections with the dividers
     *
     * @param divider
     */
    function toggleProgramDivider(divider) {

        var type = $(divider).attr('data-divider'),
            programs = $('.program-' + type);

        if (programs.css('display') != 'none') {
            $(divider).find('.program-divider-chevron').removeClass('fa-chevron-down');
            $(divider).find('.program-divider-chevron').addClass('fa-chevron-right');
            programs.fadeOut('fast');
        } else {
            $(divider).find('.program-divider-chevron').removeClass('fa-chevron-right');
            $(divider).find('.program-divider-chevron').addClass('fa-chevron-down');
            programs.fadeIn('fast');
        }


    }

    /**
     * Sets the value of a field to that of it's "data-value"
     *
     * @param input
     */
    function changeDefaultValue(input) {
        $(input).val($(input).attr('data-value'));
    }

    /**
     * On search campus select change, redirect
     *
     * @param select
     * @returns {boolean}
     */
    function redirectSearchCampus(select) {
        window.location.href = "/workshops/search/" + $(select).val();
        return false;
    }

    /**
     * On search campus select change, redirect to the relevant workshop sets page
     *
     * @param select
     * @returns {boolean}
     */
    function redirectSearchCampusWorkshopSet(select) {
        window.location.href = "/workshop/" + $(select).attr('data-workshop-set') + "/search/" + $(select).val();
        return false;
    }

})(jQuery);