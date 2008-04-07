<gm:page title="GisMap3" authenticate="false">

<div style="float:right; width:20%; padding:12px">
  
  <h3>Select from List</h3>
  
    <gm:list id="Sources">  
      <input type="checkbox" name="states" onselect="kmlPE('http://webpages.cs.luc.edu/~cramirez/usPop.kml', 2, 'Kasas City, Missouri')">States</input><br/>
  
      <input type="checkbox" name="path" onclick="kmlPE('http://webpages.cs.luc.edu/~cramirez/TestPath1.kml', 3, 'Las Vegas, Nevada')">Path</input><br/>
  
      <input type="checkbox" name="polygon" onclick="kmlPE('http://webpages.cs.luc.edu/~cramirez/TestPolygon1.kml', 7, 'Chicago, IL')">Polygon</input><br/> 
  
      <input type="checkbox" name="england" onclick="kmlPE('http://www.geograph.org.uk/feed/recent.rss', 6, 'London, UK')">England</input><br/>
  </gm:list>
</div>

  
    
<div style="width:80%">
  <gm:map id="map" maptypes="true">
    <gm:handleEvent src="Sources">
  </gm:map>
</div>


<script>
    
    function kmlPE(source, zoom, location){
      
      var myMap = google.mashups.getObjectById('map').getMap();
      var geoXml = new GGeoXml(source);
      myMap.addOverlay(geoXml); 
      myMap.setZoom(zoom);  
      myMap.centerOnLocation(location);
      myMap.showAllMarkers();
      myMap.enableDoubleClickZoom();
    }
  </script>
  
</gm:page>