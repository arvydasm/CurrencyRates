$(function() {
    $( "#datepicker" ).datepicker({
        dateFormat: "yy-mm-dd",
        minDate: "1993-06-25",
        maxDate: "2014-12-31"
    });

    $( "#datepicker" ).keyup(function( event ) {
        if ( event.which == 13 ) {
            event.preventDefault();
        }
    });

    $( "#button" ).button();

    $( "#date_select_form" ).submit(function( event ) {
        if ( $( "#datepicker" ).val().length > 0 ) {
            return;
        }

        $( "#date_field_error" ).text( "Select date first!" ).show();
        event.preventDefault();
    });

    $( "#datatable" ).DataTable( {
        ordering:  false,
        pagingType: "simple_numbers"
    } );
});