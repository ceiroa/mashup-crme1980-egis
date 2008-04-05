<gm:page title="GisMap3" authenticate="false">

<div style="float:right; width:20%">
  <h3>Please Select from the List</h3>
  <gm:list id="Sources">
    <input type="checkbox" name="states" onclick="kmlPE()">States</input>
  </gm:list>
</div>

<div style="width:80%">
  <gm:map id="map" height="600px" width="600px" maptypes="true">
    <gm:handleEvent src="Sources">
  </gm:map>
</div>


<script>
    
    function kmlPE(){
      var source = "http://webpages.cs.luc.edu/~cramirez/usPopMyServerNL.kml";
      var lt="41.9";
      var lg="-87.65";
      var z="9";
      
      var myMap = google.mashups.getObjectById('map').getMap();
      myMap.setValue = (lat, lt);
      myMap.setValue =(long, lg);
      myMap.setValue=(zoom, z);
      var geoXml = new GGeoXml(source);
      myMap.addOverlay(geoXml);
      myMap.enableDoubleClickZoom();
    }
  </script>
  
</gm:page>