<gm:page title="GisMap3" authenticate="false" onload="kmlPE()">
  
<gm:map id="map" height="600px" width="600px" lat="41.90" lng="-87.65" zoom="9" maptypes="true"/>
  
<script>
    
    function kmlPE(){
      
      var myMap = google.mashups.getObjectById('map').getMap();
      var geoXml = new GGeoXml("http://webpages.cs.luc.edu/~cramirez/pipelinesNL.kml");
      myMap.addOverlay(geoXml);
      myMap.enableDoubleClickZoom();
    }
  </script>
  
</gm:page>