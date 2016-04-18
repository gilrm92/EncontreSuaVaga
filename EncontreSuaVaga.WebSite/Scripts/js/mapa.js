var geocoder;
var map;
var marker;
var vagas;


function initialize(lat, lon) {
    var latlng = new google.maps.LatLng(lat, lon, 14);
    var options = {
        zoom: 9,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById("mapa"), options);
    
    var listOfvagas = getVagasDisponiveis();

    $.each(listOfvagas, function (idx, item) {
        setPosition(item.lat, item.lon, item.descricaoVaga);
    });
    
    geocoder = new google.maps.Geocoder();

    marker = new google.maps.Marker({
        map: map,
        draggable: true,
    });

}

function getVagasDisponiveis() {
    var htmlCard1 = $('#cardOculto1').html();
    var htmlCard2 = $('#cardOculto2').html();
    var htmlCard3 = $('#cardOculto3').html();
    var htmlCard4 = $('#cardOculto4').html();
    var htmlCard5 = $('#cardOculto5').html();
    var htmlCard6 = $('#cardOculto6').html();
    var htmlCard7 = $('#cardOculto7').html();
    var htmlCard8 = $('#cardOculto8').html();
    var htmlCard9 = $('#cardOculto9').html();
    var htmlCard10 = $('#cardOculto10').html();
    var htmlCard11 = $('#cardOculto11').html();
    var htmlCard12 = $('#cardOculto12').html();


    var listOfVagas = [
        { lat: -22.910464, lon: -43.185208, descricaoVaga: htmlCard1 },
        { lat: -22.908468, lon: -43.186206, descricaoVaga: htmlCard2 },
        { lat: -22.907730, lon: -43.183942, descricaoVaga: htmlCard3 },
        { lat: -22.909125, lon: -43.180268, descricaoVaga: htmlCard4 },
        { lat: -22.910321, lon: -43.182961, descricaoVaga: htmlCard5 },
        { lat: -22.901590, lon: -43.178978, descricaoVaga: htmlCard6 },
        { lat: -22.904143, lon: -43.176455, descricaoVaga: htmlCard7 },
        { lat: -22.906781, lon: -43.173067, descricaoVaga: htmlCard8 },
        { lat: -22.903473, lon: -43.180501, descricaoVaga: htmlCard9 },
        { lat: -22.903542, lon: -43.183451, descricaoVaga: htmlCard10 },
        { lat: -22.908981, lon: -43.175241, descricaoVaga: htmlCard11 },
        { lat: -22.910503, lon: -43.173728, descricaoVaga: htmlCard12 }

    ];
    vagas = listOfVagas;

    return listOfVagas;
}

function setPosition(lat, lon, nomeVaga) {
    var markerPosition = new google.maps.Marker
            (
                {
                    position: new google.maps.LatLng(lat, lon),
                    map: map,
                    title: 'Clique aqui',
                    icon: 'img/maker.png'
                }
            );

    var infowindow = new google.maps.InfoWindow({
        content: nomeVaga
    });

    google.maps.event.addListener(markerPosition, 'click', function () {
        infowindow.open(map, markerPosition);
    });
}

function carregarNoMapa(endereco) {
    geocoder.geocode({ 'address': endereco + ', Brasil', 'region': 'BR' }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            if (results[0]) {
                var latitude = results[0].geometry.location.lat();
                var longitude = results[0].geometry.location.lng();

                $('#txtEndereco').val(results[0].formatted_address);
                $('#txtLatitude').val(latitude);
                $('#txtLongitude').val(longitude);

                var location = new google.maps.LatLng(latitude, longitude);
                //marker.setPosition(location);
                map.setCenter(location);
                map.setZoom(16);
            }
        }
    })
}

function showMap() {
    $('.overflow').fadeOut(700);
    if (!$('#apresentacao').hasClass('showingMap')) {
        $('#apresentacao').fadeOut(700);
        $('#apresentacao').addClass('showingMap');
        $('#apresentacao').fadeIn(700);
    }
}

function showPosition(position) {
    initialize(position.coords.latitude, position.coords.longitude);
}

$(document).ready(function () {
    $('#txtEndereco').focus();

    //if (navigator.geolocation) {
    //    navigator.geolocation.getCurrentPosition(showPosition);
    //} else {
    initialize(-22.9103552, -43.7285337);
    //}

    $("#btnEndereco").click(function () {
        if ($(this).val() != "") {
            carregarNoMapa($("#txtEndereco").val());
            showMap();
        }
    })

 
    $("#txtEndereco").blur(function () {
        if ($(this).val() != "") {
            showMap();
            carregarNoMapa($(this).val());
        }
    })

    google.maps.event.addListener(marker, 'drag', function () {
        geocoder.geocode({ 'latLng': marker.getPosition() }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                if (results[0]) {
                    $('#txtEndereco').val(results[0].formatted_address);
                    $('#txtLatitude').val(marker.getPosition().lat());
                    $('#txtLongitude').val(marker.getPosition().lng());
                }
            }
        });
    });

    $("#txtEndereco").autocomplete({
        source: function (request, response) {
            geocoder.geocode({ 'address': request.term + ', Brasil', 'region': 'BR' }, function (results, status) {
                response($.map(results, function (item) {
                    return {
                        label: item.formatted_address,
                        value: item.formatted_address,
                        latitude: item.geometry.location.lat(),
                        longitude: item.geometry.location.lng()
                    }
                }));
            })
        },
        select: function (event, ui) {
            $("#txtLatitude").val(ui.item.latitude);
            $("#txtLongitude").val(ui.item.longitude);
            var location = new google.maps.LatLng(ui.item.latitude, ui.item.longitude);
            //marker.setPosition(location);
            map.setCenter(location);
            map.setZoom(16);
            showMap();
        }
    });

});