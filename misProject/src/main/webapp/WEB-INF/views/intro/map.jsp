<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%> 

<!--main content start-->
   <!--main content start-->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper site-min-height">
        <div class="row mt">
          <div class="col-sm-12">
            <section class="panel">
              <header class="panel-heading">
                Google Map with Loaction List
              </header>
              <div class="panel-body">
              </div>
            </section>
          </div>
        </div>
       
        <!-- page end-->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <!-- js placed at the end of the document so the pages load faster -->
  <script src="../../resources/lib/jquery/jquery.min.js"></script>
  <script src="../../resources/lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="../../resources/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="../../resources/lib/jquery.scrollTo.min.js"></script>
  <script src="../../resources/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="../../resources/lib/common-scripts.js"></script>
  <!--script for this page-->
  <!--Google Map-->
  <script src="http://maps.google.com/maps/api/js?sensor=false&libraries=geometry&v=3.7"></script>
  <script src="../../resources/lib/google-maps/maplace.js"></script>
  <script src="../../resources/lib/google-maps/data/points.js"></script>
  <script>        
        <script>
    //ul list example
    new Maplace({
      locations: LocsB,
      map_div: '#gmap-list',
      controls_type: 'list',
      controls_title: 'Choose a location:'
    }).Load();

    new Maplace({
      locations: LocsB,
      map_div: '#gmap-tabs',
      controls_div: '#controls-tabs',
      controls_type: 'list',
      controls_on_map: false,
      show_infowindow: false,
      start: 1,
      afterShow: function(index, location, marker) {
        $('#info').html(location.html);
      }
    }).Load();
  </script>
        
        
        
        <%@include file="../include/footer.jsp"%> 