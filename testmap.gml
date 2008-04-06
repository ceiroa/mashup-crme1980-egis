<gm:page title="My App" authenticate="false" onload="kmlPE()">

  <gm:map id="map" height="600px" width="600px"/>
  
  <script>
    
    function kmlPE(){
      
      var myMap = google.mashups.getObjectById('map').getMap();
      var geoXml = new GGeoXml("http://webpages.cs.luc.edu/~cramirez/TestPath1.kml");
      myMap.addOverlay(geoXml);
      var geoXml2 = new GGeoXml("http://webpages.cs.luc.edu/~cramirez/TestPolygon1.kml");
      myMap.addOverlay(geoXml2);
      myMap.enableDoubleClickZoom();
    }
  </script>

</gm:page>