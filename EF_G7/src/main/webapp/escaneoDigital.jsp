<%--
  Created by IntelliJ IDEA.
  User: Anais
  Date: 29/11/2022
  Time: 12:44
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
    <title>Registrar Servicio</title>
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
<body class="p-3 m-0 border-0 bd-example">
<br>
<center>
    <div class="card mb-3" style="max-width: 58rem; background-color:#152039" >
        <br>
        <h1 style="font-family: 'KrinkesDecorPERSONAL'; color:#C0A5FA" class="card-title"><b>REGISTRAR SERVICIO</b></h1>
        <h3 style="font-family: 'KrinkesDecorPERSONAL'; color:#C0A5FA" class="card-title"><b>Ingrese sus datos</b></h3>
        <h3 style="font-family: 'KrinkesDecorPERSONAL'; color:#C0A5FA" class="card-title"><b>Escaneo Digital 3D</b></h3>
        <br>
        <div class="d-grid gap-2 col-6 mx-auto">
            <form>
                <div class="row mb-3">
                    <label for="colFormLabel" class="col-sm-2 col-form-label">Largo</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="colFormLabel" placeholder="Ejem: 8cm o 7.5cm">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="colFormLabel" class="col-sm-2 col-form-label">Ancho</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="colFormLabel1" placeholder="Ejem: 8cm o 7.5cm">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="colFormLabel" class="col-sm-2 col-form-label">Altura</label>
                    <div class="col-sm-10">
                        <input type="email" class="form-control" id="colFormLabel2" placeholder="Ejem: 8cm o 7.5cm">
                    </div>
                </div>

                <div class="mb-3">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Resolución</option>
                        <option value="1">Alta</option>
                        <option value="2">Media</option>
                        <option value="3">Baja</option>
                    </select>
                </div>

                <br>

                <button type="button" class="btn btn-danger" href="<%=request.getContextPath()%>/***"><b>Guardar</b></button>
            </form>
            <br>
        </div>
    </div>
    </div>
    <br>
    <br>
</center>
<button type="button" class="btn btn-danger" href="<%=request.getContextPath()%>/index.jsp"><b>Atrás</b></button>
<br>
<br>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</body>
</html>


