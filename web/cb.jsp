<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Conversor de Base</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="navbar navbar-expand py-0">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="https://github.com/iagocolodetti">GitHub</a>
                </li>
            </ul>
        </nav>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="form-group text-center">
                    <h3>Conversor de Base</h3>
                </div>
            </div>
            <form action="cb" method="POST">
                <div class="row justify-content-center">
                    <div class="form-group col-xs-10 col-sm-7 col-md-5 col-lg-5 text-center">
                        <label for="algarismo">Algarismo:</label>
                        <input type="text" class="form-control text-center" id="algarismo" name="algarismo"
                               placeholder="Digite o algarismo" required="required"
                               value="${algarismo}">
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="form-group col-xs-10 col-sm-7 col-md-5 col-lg-5 text-center">
                        <label for="dabase">Base:</label>
                        <input type="number" min="2" max="32" class="form-control text-center" id="dabase" name="dabase"
                               placeholder="Digite a base do algarismo" required="required"
                               value="${dabase}">
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="form-group col-xs-10 col-sm-7 col-md-5 col-lg-5 text-center">
                        <label for="parabase">Para base:</label>
                        <input type="number" min="2" max="32" class="form-control text-center" id="parabase" name="parabase"
                               placeholder="Digite para qual base será convertido" required="required"
                               value="${parabase}">
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-primary">Converter</button>
                    </div>
                </div>
            </form>
            <div class="row justify-content-center">
                <div class="form-group col-xs-10 col-sm-7 col-md-5 col-lg-5 text-center">
                    <h6 style="word-wrap:break-word;">${resultado}</h6>
                </div>
            </div>
        </div>
    </body>
</html>
