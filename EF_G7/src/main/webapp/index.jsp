<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Bienvenido VEO3D</title>
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

<body class="p-3 m-0 border-0 bd-example">
<br>
<br>
<br>

<center>
    <div class="card mb-3" style="max-width: 58rem; background-color:#00000090">
        <br>
        <h1 style="font-family: 'KrinkesDecorPERSONAL'; color:#E2FAFF" class="card-title"><b>VEO3D PUCP</b></h1>
       <br>
        <h4 style="font-family: 'Times New Roman', Times, serif; color:#78BBFD" class="card-text"><b> INICIO DE SESIÓN </b></h4>
        <br>
        <div class="d-grid gap-2 col-6 mx-auto">
            <!-- COMPLETAR -->
            <form method="post" class="form-signin" action="<%=request.getContextPath()%>/COMPLETAR">
                <div class="d-grid gap-2 col-8 mx-auto form-floating mb-3">
                    <input type="letters" class="form-control" id="email" placeholder="Email" name="email">
                    <label for="email">Ingrese su correo</label>
                </div>
                <div class="d-grid gap-2 col-8 mx-auto form-floating">
                    <input type="password" class="form-control" id="contrasena" placeholder="Contraseña"
                           name="contrasena">
                    <label for="contrasena">Contraseña</label>
                </div>
                <p></p>
                <p></p>
                <% if (request.getParameter("error") != null) {%>
                <div class="text-danger mb-2">Hubo un Error en su Codigo o Contraseña , Vuelva a Ingresar</div>
                <% } %>
                <!-- usar este por mientras -->
                <a href="< %=request.getContextPath()%>/InicioSeguridad"><button class="d-grid gap-1 col-2 mx-auto btn btn-primary" type="button">Ingresar</button></a>
               <!-- <div class="d-grid gap-2 col-3 mx-auto">
                    <button type="submit" class="btn btn-primary">
                        Ingresar
                    </button> -->
                </div>
                <br>
            </form>
            <a href="<%=request.getContextPath()%>/registro.jsp"><b>Registrarse</b></a>
            <br>
        </div>
    </div>
    </div>
    <center>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>

</html>