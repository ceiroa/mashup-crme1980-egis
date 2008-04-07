<gm:page title="GisMap3" authenticate="false">

<div style="float:right; width:20%; padding:12px">
  
  <h3>Select from List</h3>
  
    <form id="sources">  
      <input type="checkbox" name="states" onclick="kmlPE('http://webpages.cs.luc.edu/~cramirez/usPop.kml', 3, 'Kasas City, Missouri', this)">States</input><br/>
  
      <input type="checkbox" name="path" onclick="kmlPE('http://webpages.cs.luc.edu/~cramirez/TestPath1.kml', 4, 'Las Vegas, Nevada', this)">Path</input><br/>
  
      <input type="checkbox" name="polygon" onclick="kmlPE('http://webpages.cs.luc.edu/~cramirez/TestPolygon1.kml', 5, 'Chicago, IL', this)">Polygon</input><br/> 
  
      <input type="checkbox" name="england" onclick="kmlPE('http://www.geograph.org.uk/feed/recent.rss', 3, 'London, UK', this)">England</input><br/>
   </form>
  <br />
  <button onclick="refresh()">Clean Map</button>
</div>

  
    
<div style="width:80%">
  <gm:map id="map" maptypes="true">
    <gm:handleEvent src="Sources">
  </gm:map>
</div>


<script>
    
    function kmlPE(source, zoom, location, checkbox){
      var myMap = google.mashups.getObjectById('map').getMap();
      var list= google.mashups.getObjectById('sources');
      var geoXml = new GGeoXml(source);
      <!-- check tif the element that triggered the event is selected -->
      //if(document.forms[0].checkbox.checked){
        myMap.addOverlay(geoXml); 
        myMap.setZoom(zoom);  
        myMap.centerOnLocation(location);
      } else {
        myMap.removeOverlay(geoXml);
      }
      myMap.showAllMarkers();
      myMap.enableDoubleClickZoom();
    }
    function refresh(){
      var myMap = google.mashups.getObjectById('map').getMap();
      myMap.clearOverlays();
    }
  </script>
  
</gm:page>