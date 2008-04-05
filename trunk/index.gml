<gm:page title="GisMap3" authenticate="false">

<div style="float:right; width:20%">
  <h3>Please Select from the List</h3>
  <gm:list id="Sources">
    <input type="checkbox" name="states" onclick="kmlPE(41.90, -87.65, 9)">States</input>
  </gm:list>
</div>

<div style="width:80%">
  <gm:map id="map" height="600px" width="600px" maptypes="true">
    <gm:handleEvent src="Sources">
  </gm:map>
</div>


<script>
    
    function kmlPE(lt, lg, z){
      var myMap = google.mashups.getObjectById('map').getMap();
      myMap.lat = lt;
      myMap.long=lg;
      myMap.zoom=z;
      var geoXml = new GGeoXml("http://webpages.cs.luc.edu/~cramirez/usPopMyServerNL.kml");
      myMap.addOverlay(geoXml);
      myMap.enableDoubleClickZoom();
    }
  </script>
  
</gm:page>