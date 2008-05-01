<gm:page title="My App" authenticate="false" onload="kmlPE()">

  <gm:map id="map" height="600px" width="600px" maptypes="true"/>
  
  <script>
    
    function kmlPE(){
      
      var myMap = google.mashups.getObjectById('map').getMap();
      var geoXml = new GGeoXml("http://webpages.cs.luc.edu/~cramirez/CUERPCountiesGE.kml");
      myMap.addOverlay(geoXml);
      myMap.enableDoubleClickZoom();
    }
  </script>

</gm:page>