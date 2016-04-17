<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EncontreSuaVaga.WebSite.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Encontre sua vaga</title>


    <script type="text/javascript" src="Scripts/js/jquery.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <script type="text/javascript" src="Scripts/js/jquery-ui.custom.min.js"></script>

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:600" type="text/css" rel="stylesheet" />
    <link href="Scripts/css/estilo.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js"></script>
    <script type="text/javascript" src="Scripts/js/mapa.js"></script>


</head>

<body>
    <div class="overflow">
    </div>
    <div id="apresentacao">
        <div class="campos">
            <label for="txtEndereco">Endereço:</label>
            <input type="text" id="txtEndereco" name="txtEndereco" placeholder="Encontre sua vaga" />
            <input type="button" id="btnEndereco" name="btnEndereco" value="Mostrar no mapa" />
        </div>
    </div>
    <div id="mapa"></div>

    <div id="cardOculto1" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

    <div id="cardOculto2" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto3" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto4" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto5" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto6" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto7" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto8" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto9" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto10" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto11" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto12" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento MultiPark</h4>
            <h5 class="card-text" style="line-height:3px">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
            <h5 style="line-height:3px">Site: multipark.com.br</h5>
            <h5 style="line-height:3px">Tel: (11) 3177-5556</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" />
            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

    <div id="modalOverviewVaga" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Estacionamento MultiPark</h4>
                </div>
                <div class="modal-body">
                    <div class="grid_480 f-left margin-top-60 margin-bottom-60">
                        <center><img class="card-img-center" src="img/estacionamento.jpg" alt="Card image cap" width="30%" height="20%"></center>
                        <div class="card-block center-block">
                            <h5 class="card-text">R. Camerino, 81 - Centro, Rio de Janeiro - RJ, 20080-011</h5>
                            <h5>Tel: (11) 3177-5556</h5>
                            <h5 style="color: green;">Vagas: 100</h5>

                            <img class="card-img-center" src="img/car.png" alt="Classificação" />
                            <img class="card-img-center" src="img/car.png" alt="Classificação" />
                            <img class="card-img-center" src="img/car.png" alt="Classificação" />
                            <img class="card-img-center" src="img/car.png" alt="Classificação" /><br />

                            <h4><b>Horarios de Funcionamento</b></h4>
                            <h5>Segunda a Sexta: 6:00 até 18:00</h5>
                            <h5>Sábados, Domingos e Feriados: 08:00 até às 17:00</h5>

                            <h4><b>Tabela de preços</b></h4>
                            <h5>1h: R$ 9,00</h5>
                            <h5>Hora adicional: R$ 1,00</h5>

                            <h4><b>Serviços</b></h4>
                            <h5>Manobrista: R$ 7,00</h5>
                            <h5>Lava-Rápido: R$ 15,00</h5>

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-lg btn-block" data-dismiss="modal">Voltar para o mapa</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</body>
</html>
