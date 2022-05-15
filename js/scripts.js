/*!
    * Start Bootstrap - SB Admin v7.0.4 (https://startbootstrap.com/template/sb-admin)
    * Copyright 2013-2021 Start Bootstrap
    * Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-sb-admin/blob/master/LICENSE)
    */
// 
// Scripts
// 
// $('#bologna-list option').on('select', function (e) {
//     // e.preventDefault();
//     $(this).tab('show');
// });


$('#floorplanSelect').on('change', function(e) {
    // $('.tab-pane').removeClass('active')
    $('#all_cases').removeClass('active'); 
    $('#listvn').removeClass('active'); 
    $('#cases').removeClass('active'); 
    $('#mdr').removeClass('active'); 
    $('#mdrraw').removeClass('active'); 
    $('#sexage').removeClass('active'); 
    $('#treat').removeClass('active'); 
    $('#hiv').removeClass('active');  
    $('#' + $(e.currentTarget).val()).addClass("active");
  })
window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    const sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
        if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
            document.body.classList.toggle('sb-sidenav-toggled');
        }
        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
        });
    }

}); 
      