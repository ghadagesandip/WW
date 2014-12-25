var slider1 = $('#slider1'),
    output1 = $('#output1');
slider1.noUiSlider({
    start: 0,
    step: 8,
    range: {
        'min': 8,
        'max': 88
    }
});
slider1.on("slide set", function () {
    output1.html(slider1.val());
    totalPrice();
});


var slider2 = $('#slider2'),
    output2 = $('#output2');
slider2.noUiSlider({
    start: 0,
    step: 8,
    range: {
        'min': 8,
        'max': 88
    }
});
slider2.on("slide set", function () {
    output2.html(slider2.val());
    totalPrice();
});

var slider3 = $('#slider3'),
    output3 = $('#output3');
slider3.noUiSlider({
    start: 0,
    step: 8,
    range: {
        'min': 8,
        'max': 88
    }
});
slider3.on("slide set", function () {
    output3.html(slider3.val());
    totalPrice();
});


var slider4 = $('#slider4'),
    output4 = $('#output4');
slider4.noUiSlider({
    start: 0,
    step: 8,
    range: {
        'min': 8,
        'max': 88
    }
});

slider4.on("slide set", function () {
    output4.html(slider4.val());
    totalPrice();
});

var slider5 = $('#slider5'),
    output5 = $('#output5');
slider5.noUiSlider({
    start: 0,
    step: 4,
    range: {
        'min': 4,
        'max': 44
    }
});
slider5.on("slide set", function () {
    output5.html(slider5.val());
    totalPrice();
});




totalPrice();

function totalPrice() {
    var totalPrice = parseFloat(slider1.val()) + parseFloat(slider2.val()) + parseFloat(slider3.val());
    $('#totalPrice').html(totalPrice)
}

function setSliderVal(obj) {
    slider1.val([obj.a]);
    slider2.val([obj.b]);
    slider3.val([obj.c]);
}

$('#plana').click(function (e) {
    e.preventDefault();
    var planA = {
        a: 16,
        b: 24,
        c: 40,
        d: 50,
        e: 3
    }
    setSliderVal(planA);
    $('.btnContainer li a').removeClass('active');
    $(this).addClass("active");
});

$('#planb').click(function (e) {
    e.preventDefault();
    var planA = {
        a: 24,
        b: 72,
        c: 56,
        d: 50,
        e: 3
    }
    setSliderVal(planA);
    $('.btnContainer li a').removeClass('active');
    $(this).addClass("active");
});

$('#planc').click(function (e) {
    e.preventDefault();
    var planA = {
        a: 8,
        b: 32,
        c: 80,
        d: 50,
        e: 3
    }
    setSliderVal(planA);
    $('.btnContainer li a').removeClass('active');
    $(this).addClass("active");
});