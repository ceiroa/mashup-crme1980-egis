<gm:page title="GisMap3" authenticate="false" >

<div style="float:right; width:20%; padding:12px">
  <h3>Please Select from the List</h3>
  <gm:list id="Sources">
    <li><input type="checkbox" name="states" 
    onclick="kmlPE('http://webpages.cs.luc.edu/~cramirez/usPop.kml')">States</input></li>
    
    <li><input type="checkbox" name="england" 
    onclick="kmlPE('http://www.geograph.org.uk/feed/recent.rss')">England</input></li>
  </gm:list>
</div>

<div style="width:80%">
  <gm:map id="map" height="600px" width="600px" maptypes="true">
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