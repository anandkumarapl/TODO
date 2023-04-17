<%@include file="header.jsp"%>
<title>Demo Page</title>
</head>
<body>
    <%@include  file="memu.jsp" %>
    <div class="container">

        <style>
            .anand
            {
                height: 200px;
                width:1200px;
            }
            body{
                background-color: cornsilk; 
            }
            .a {
                height: 400px;
                width: 500px;             
            }
            div {
                margin-bottom: 10px;
                color:black;
            }
            h1{
               color:red; 
            }
        </style>
        <div class="container">
            <center>
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="images/1.jpg" class="anand" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/2.jpg" class="anand" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="images/3.jpg" class="anand" alt="...">
                        </div>
                        </center>


                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                    <br>
                    <br>
                    <center>
                        <h1>This Is My Todo App</h1>
                        <h6>The todo app is a personal task management tool which provides
                            the following facilities.<br>
                            1.Task Insert
                            (You Can Store Our Task From Here)
                            <br>
                            2.Task Update
                            (Update The Task From Previous Existing Task)
                            <br>
                            3.Task Delete
                            (Delete The Task From The Table
                            <br>
                        </h6>

                        <hr class="featurette-divider">

                        <div class="row featurette">
                            <div class="col-md-7">
                                <h2 class="featurette-heading">NAME-<span class="text-muted">ANAND KUMAR PAL</span></h2>
                                <h2 class="featurette-heading">Address-<span class="text-muted">Paigamberpur Sarnath Varanasi</span></h2>
                                <h2 class="featurette-heading">I am a fresher-<span class="text-muted">Looking For A Job</span></h2>
                                <h2 class="featurette-heading">Education-<span class="text-muted">(Pursuing) In Mca 3rd Sem</span></h2>
                                <h2 class="featurette-heading">Email Id-<span class="text-muted">anandkumarpal121@gmail.com</span></h2>
                                <p class="lead"></p>
                            </div>
                            <div class="col-md-5">
                                <img src="images/4.jpg" class="a" alt="...">
                            </div>
                        </div>

                        <hr class="featurette-divider">

                        <div class="row featurette">
                            <div class="col-md-7 order-md-2">
                                <h2 class="featurette-heading">ToDo <span class="featurette-heading">Insert </span></h2>
                                <h5>We can insert todo by following some steps<h5>
                                        <p class="lead">1. Task : First we will choose the name of the task</p>
                                        <p class="lead">2. Description : what we did in todo</p>
                                        <p class="lead">3. Status : how much todo is completed</p>
                                        <p class="lead">4. Date : Date and time on which todo is completed</p>
                                        </div>
                                        <div class="col-md-5 order-md-1">
                                            <img src="images/5.png" class="a" alt="...">
                                        </div>
                                        </div>

                                        <hr class="featurette-divider">
                                        <div class="row featurette">
                                            <div class="col-md-7">
                                                <h2 class="featurette-heading">ToDo<span class="featurette-heading"> Update </span></h2>
                                                <h5>We can Update todo by following some steps<h5>
                                                        <p class="lead">First we will choose the task which we have to update</p>
                                                        <p class="lead">After that we will click on update icon</p>
                                                        <p class="lead">After that you will be able to update the task description status</p>
                                                        <p class="lead">After filling the task description status click on submit button</p>
                                                        <p class="lead">you will show updated 1 record</p>
                                                         <p class="lead">which means your task has been updated</p>
                                                        </div>
                                                        <div class="col-md-5">
                                                            <img src="images/6.jpg" class="a" alt="...">
                                                        </div>
                                                        </div>
                                                        <hr class="featurette-divider">

                                                        <div class="row featurette">
                                                            <div class="col-md-7 order-md-2">
                                                                <h2 class="featurette-heading">ToDo <span class="featurette-heading"> Delete </span></h2>
                                                                <h5>We can Delete todo by following some steps<h5>
                                                                        <p class="lead">First we will choose the task which we have to delete</p>
                                                                        <p class="lead">After that we will click on delete icon</p>
                                                                        <p class="lead">After that we will show taskno description and status</p>
                                                                        <p class="lead">Click the delete button again</p>
                                                                        <p class="lead">you will show deleted 1 record</p>
                                                                         <p class="lead">which means your task has been deleted</p>
                                                                        </div>
                                                                        <div class="col-md-5 order-md-1">
                                                                            <img src="images/7.png" class="a" alt="...">
                                                                        </div>
                                                                        </div>
                                                                        <br>
                                                                        
                                                                        </div>


                                                                        <%@include  file="footer.jsp" %>