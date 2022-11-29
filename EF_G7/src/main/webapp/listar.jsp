<%--
  Created by IntelliJ IDEA.
  User: Anais
  Date: 29/11/2022
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Lista</title>
    <style>
        body {
            background: url("https://www.hwlibre.com/wp-content/uploads/2021/04/3d-impresora.jpg");
            background-position: center center;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            height: 100vh;
            bgcolor: "#800000";
        }
        @font-face {
            font-family: Decor;
            src: url(KrinkesDecorPERSONAL.ttf);
        }
        @font-face{
            font-family: Decor;
            src: url(KrinkesRegularPERSONAL.ttf);
            font-style: italic;
        }
        p{
            font-family: Decor;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
<nav class="navbar navbar-expand-lg" style="background-color: #152039;" aria-label="Eighth navbar example">
    <div class="container">
        <a class="navbar-brand" href="#"><img src="resources/Images/logopucp.png" alt="Logo" width="40" height="40" class="d-inline-block align-text-top"><b style="color:#FFFFFF"> VEO 3D</b></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample07">
            <ul class="nav col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3 justify-content-center mb-md-0">
                <li><a href="#" class="nav-link px-2"><b style="color:#1A3B85">NOMBRE USUARIO</b></a></li>
                <div class="dropdown text-end">
                    <a href="#" class="d-block link-dark text-decoration-none" aria-expanded="false">
                        <img src="http://diaferdesign.com/wp-content/uploads/2017/11/diana-fondo-desenfocado-circular-300x283.png" alt="mdo" width="32" height="32" class="rounded-circle">
                    </a>
                </div>
            </ul>

            <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
                <a class="dropdown-item" href="<%=request.getContextPath()%>/ServletInicio?action=logout"><u
                        style="color:#FFFFFF"><b>Cerrar sesion > </b></u></a>
            </form>
        </div>
    </div>
</nav>


<div class="d-flex justify-content-center">
    <div class="card">
        <div class="card-body">
            <div class="p-7 mb-2 bg-primary text-white" style="--bs-bg-opacity: .5;">
                <h4 style="text-align: center; color: white; font-family:'Times New Roman', Times, serif">MI LISTA DE SERVICIOS</h4>
            </div>
            <br>
            <div class="card">
                <div class="card-body">
                    <table>
                        <thead>
                        <tr>
                            <th scope="col"><center> Tipo de Servicio </center></th>
                            <th scope="col"><center> Fecha de Registro </center></th>
                            <th scope="col"><center> Tiempo de realización </center></th>
                            <th scope="col"><center> Costo </center></th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- CAMBIAR DATOS -->
                        <%for(Incidencia incidencia : listaDestacadas) { %>
                        <tr>
                            <td> <%= incidencia.getNombreDeIncidencia() %></td>
                            <td> <%= incidencia.getUsuario().getNombre() %> <%=incidencia.getUsuario().getApellido()%> </td>
                            <td> <%= incidencia.getUsuario().getNombre() %> <%=incidencia.getUsuario().getApellido()%> </td>

                        </tr>
                        <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
            <br>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
            <br><br>

        </div>
    </div>
</div>
</div>




</body>
</html>
