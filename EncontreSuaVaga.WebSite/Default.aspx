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
            <h4 class="card-title">Estacionamento Roda Viva</h4>
            <h5 class="card-text" style="line-height:3px">R. dos Inválidos, 71 - Centro Rio de Janeiro - RJ 20231-046</h5>
            <h5 style="line-height:3px">Tel: (21) 3177-5556</h5>
            <h5 style="line-height:3px">Vagas: 200</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

    <div id="cardOculto2" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento Auto Park</h4>
            <h5 class="card-text" style="line-height:3px">Praça da República, 7 - Centro Rio de Janeiro - RJ</h5>
            <h5 style="line-height:3px">Tel: (21) 2231-2509</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 1000</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto3" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento Publix</h4>
            <h5 class="card-text" style="line-height:3px">R. Visc. do Rio Branco, 10 - Centro Rio de Janeiro - RJ 20060-080</h5>
            <h5 style="line-height:3px">Tel: (21) 2664-1812</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 500</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto4" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento Trânsito Livre</h4>
            <h5 class="card-text" style="line-height:3px">Av. República do Paraguai, 173 - Centro Rio de Janeiro - RJ 20031-180</h5>
            <h5 style="line-height:3px">Tel: (21) 3445-3100</h5>
            <h5 style="line-height:3px">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto5" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento Vip</h4>
            <h5 class="card-text" style="line-height:3px">R. Prof. Mário Vasconcelos, 297 - Pechincha, Rio de Janeiro - RJ, 20230-070</h5>
            <h5 style="line-height:3px">Tel: (21) 2263-7686</h5>
            <h5 style="line-height:3px">Vagas: 150</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto6" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Rotativo Estacionamento</h4>
            <h5 class="card-text" style="line-height:3px">Av. Pres. Vargas, 287 - Centro Rio de Janeiro - RJ 20040-010</h5>
            <h5 style="line-height:3px">Tel: (21) 2413-5120</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 550</h5>
            
           <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
           <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
           <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
           <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
           <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto7" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento Patropi</h4>
            <h5 class="card-text" style="line-height:3px">R. Sete de Setembro, 40 - Centro Rio de Janeiro - RJ</h5>
            <h5 style="line-height:3px">Tel: (21) 3178-2048</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 710</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto8" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento Central Park</h4>
            <h5 class="card-text" style="line-height:3px">Av. Pres. Antônio Carlos, 1746 - Centro Rio de Janeiro - RJ</h5>
            <h5 style="line-height:3px">Tel: (21) 3974-3532</h5>
            <h5 style="line-height:3px">Vagas: 950</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto9" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento Lava-Jato</h4>
            <h5 class="card-text" style="line-height:3px">R. Uruguaiana, 138 - Centro Rio de Janeiro - RJ 20050-093</h5>
            <h5 style="line-height:3px">Tel: (21) 3445-3100</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 100</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto10" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento GePark</h4>
            <h5 class="card-text" style="line-height:3px">R. da Alfândega, 214 - Centro Rio de Janeiro - RJ 20070-002</h5>
            <h5 style="line-height:3px">Tel: (21) 2761-4063</h5>
            <h5 style="line-height:3px;color: green;">Vagas: 800</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto11" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento Espaço Certo</h4>
            <h5 class="card-text" style="line-height:3px">R. México, 81 - Centro Rio de Janeiro - RJ 20031-144</h5>
            <h5 style="line-height:3px">Tel: (21) 98802-4722</h5>
            <h5 style="line-height:3px">Vagas: 1200</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
            <a href="#" onclick="$('#modalOverviewVaga').modal('toggle');" class="btn btn-primary">Mais detalhes</a>
        </div>
    </div>

     <div id="cardOculto12" class="card" style="display: none;">
        <div class="card-block center-block">
            <h4 class="card-title">Estacionamento Park Car</h4>
            <h5 class="card-text" style="line-height:3px">R. Santa Luzia, 615 - Centro Rio de Janeiro - RJ 20030-041</h5>
            <h5 style="line-height:3px">Tel: (21) 2274-3264</h5>
            <h5 style="line-height:3px">Vagas: 2300</h5>
            
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" />
            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />
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

                            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
                            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
                            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
                            <img class="card-img-center" src="img/Car_2.png" alt="Classificação" />
                            <img class="card-img-center" src="img/Car_1.png" alt="Classificação" /><br />

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
