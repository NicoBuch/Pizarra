$(document).ready(function() {
    $('input[type=radio]').change(function() {
        if (this.value == 'C') {
            $('#label').text('Pago en');
        }
        else if (this.value == 'V') {
            $('#label').text('Quiero recibir');
        }
    });
});
