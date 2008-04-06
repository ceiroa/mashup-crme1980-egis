<gm:page title="GisMap3" authenticate="false">

<div style="float:right; width:20%; padding:12px">
  <h3>Please Select State from the List</h3>
  <gm:list id="Sources" data="http://webpages.cs.luc.edu/~cramirez/usPop.kml"> 
  </gm:list>
</div>

<div style="width:80%">
  <gm:map id="map" data="${Sources}">
    <gm:handleEvent src="Sources">
  </gm:map>
</div>


<script>
    
    function kmlPE(source){
      
      var myMap = google.mashups.getObjectById('map').getMap();
      var geoXml = new GGeoXml(source);
      myMap.addOverlay(geoXml); 
      
      myMap.enableDoubleClickZoom();
  
      myMap.showAllMarkers();  
    }
  </script>
  
</gm:page>