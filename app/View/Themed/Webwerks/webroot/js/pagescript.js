$(function() {

    $('#slides').slidesjs({

        width: 200,

        height: 100,

        navigation: {

            active: false,

            effect: "slide"

        },

        pagination: {

            active: true,

            effect: "fade"

        },

        play: {

            active: false,

            auto: true,

            effect: "slide"

        },

        effect: {

            slide: {

                speed: 400

            }

        }

    });

    $('#slides1').slidesjs({

        width: 800,

        height: 200,

        navigation: {

            active: true,

            effect: "slide"

        },

        pagination: {

            active: false,

            effect: "fade"

        },

        play: {

            active: false,

            auto: true,

            effect: "slide"

        },

        effect: {

            slide: {

                speed: 400

            }

        }

    });


});
