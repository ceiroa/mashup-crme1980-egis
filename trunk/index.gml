<gm:page title="GisMap3" authenticate="false">
  
<gm:map id="map" height="600px" width="600px" lat="41.90" lng="-87.65" zoom="9" maptypes="true">
  <gm:handleEvent src="Sources">
</gm:map>

<gm:list id="Sources" onclick="kmlPE()">

<script>
    
    function kmlPE(){
      
      var myMap = google.mashups.getObjectById('map').getMap();
      var geoXml = new GGeoXml("http://webpages.cs.luc.edu/~cramirez/usPopMyServerNL.kml");
      myMap.addOverlay(geoXml);
      myMap.enableDoubleClickZoom();
    }
  </script>
  
</gm:page>