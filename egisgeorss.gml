<gm:page title="GisMap3" authenticate="false" onload="kmlPE()">
  
<gm:map id="map" height="600px" width="600px" lat="52" lng="0" zoom="6" maptypes="true"/>
  
<script>
    
    function kmlPE(){
      
      var myMap = google.mashups.getObjectById('map').getMap();
      var geoXml = new GGeoXml("http://www.geograph.org.uk/feed/recent.rss");
      myMap.addOverlay(geoXml);
      myMap.enableDoubleClickZoom();
    }
  </script>
  
</gm:page>