<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NEW._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Grid -->
        <div class="w3-row">

            <!-- Blog entries -->
            <div class="w3-col l8 s12">
                <!-- Blog entry -->
                <div class="w3-card-4 w3-margin w3-white">
                    <!-- Automatic Slideshow Images -->
                    <div class="slideshow-container">

                        <div class="mySlides fade">
                            <div class="numbertext">1 / 7</div>
                            <center> <img src="IMG/clarks.jpg" alt="" /> </center>
                            <div class="text">FootWear</div>
                        </div>

                        <div class="mySlides fade">
                            <div class="numbertext">2 / 7</div>
                            <center> <img src="IMG/clarks2.jpg" alt="" /> </center>
                            <div class="text">Brand New</div>
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">3 / 7</div>
                            <center> <img src="IMG/clarks3.jpg" alt="" /> </center>
                            <div class="text">Shop Now</div>
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">4/ 7</div>
                            <center> <img src="IMG/clarks4.jpg" alt="" /> </center>
                            <div class="text"></div>
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">5/ 7</div>
                            <center> <img src="IMG/jordan.jpg" alt="" /> </center>
                            <div class="text"></div>
                        </div>
                        <div class="mySlides fade">
                            <div class="numbertext">6/ 7</div>
                            <center> <img src="IMG/shirt.jpg" alt="" /> </center>
                            <div class="text"></div>
                        </div>





                    </div>

                </div>
                <hr>

                <!-- Blog entry -->
                <div class="w3-card-4 w3-margin w3-white">
                    <div class="w3-container">
                        <h3><b>Latest Trends </b></h3>
                        <h5> <span class="w3-opacity"></span></h5>
                    </div>

                    <div class="w3-container">
                        <p>We Provide the best in all fashion <p>
                            <div class="w3-row">

                            </div>
                    </div>
                </div>
                <!-- END BLOG ENTRIES -->
            </div>

            <!-- Introduction menu -->
            <div class="w3-col l4">
                <!-- About Card -->
                <div class="w3-card w3-margin w3-margin-top">
                    <!-- Automatic Slideshow Images -->

                    <div class="w3-container w3-white">
                        <center>
                            <h4><b>Products</b></h4><center>
                                <p>
                                    Our goal  is to provide the best products and services </h6>
                                </p>
                    </div>
                </div><hr>

                <!-- Posts -->

                <hr>

                <!-- Labels / tags -->
                <div class="w3-card w3-margin">
                    <div class="w3-container w3-padding">
                        <center> <h4>Purchase</h4></center>
                    </div>
                    <div class="w3-container w3-white">


                        <p class="w3-opacity w3-center"><i>Cheap Item on sail!</i></p><br>
                        <h4 class="w3-wide w3-center">
                            <p>EMAIL if you have any quary </p></h2>
                            <h4 class="w3-wide w3-center"> <i class="fa fa-envelope" style="width:30px"> </i> Email: <a href="mailto:jaleelatkins@hotmail.com">jaleelatkins@hotmail.com</a></a></h4>
                    </div>
                </div>

                <!-- END Introduction Menu -->
            </div>

            <!-- END GRID -->
        </div><br>

        <!-- END w3-content -->
    </div>

    <!-- Footer -->
    <footer class="w3-container w3-padding-65 w3-center w3-opacity w3-black w3-xlarge">
        CONNECT WITH ME</br>

        <a class="fa fa-facebook-official w3-hover-blue w3-hover-blue"> </a>
        <a class="fa fa-instagram w3-hover-red w3-hover-opacity"></a>  </BR></BR>
    </footer>


      <script>
          // Automatic Slideshow - change image every 9 seconds
          var myIndex = 0;
          carousel();
          function carousel() {
              var i;
              var x = document.getElementsByClassName("mySlides");
              for (i = 0; i < x.length; i++) {
                  x[i].style.display = "none";
              }
              myIndex++;
              if (myIndex > x.length) { myIndex = 1 }
              x[myIndex - 1].style.display = "block";
              setTimeout(carousel, 9000);
          }
          // Used to toggle the menu on small screens when clicking on the menu button
          function myFunction() {
              var x = document.getElementById("navDemo");
              if (x.className.indexOf("w3-show") == -1) {
                  x.className += " w3-show";
              } else {
                  x.className = x.className.replace(" w3-show", "");
              }
          }
          // When the user clicks anywhere outside of the modal, close it
          var modal = document.getElementById('ticketModal');
          window.onclick = function (event) {
              if (event.target == modal) {
                  modal.style.display = "none";
              }
          }
    </script>
    <script>
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        }
    </script>


</asp:Content>
