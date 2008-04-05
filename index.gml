<gm:page title="GisMap3" authenticate="false">

<div style="float:right; width:20%">
  <h3>Please Select from the List</h3>
  <gm:list id="Sources">
    <input type="checkbox" name="mushrooms" onclick="kmlPE()">States</input>
  </gm:list>
</div>

<div style="width:80%">
  <gm:map id="map" height="600px" width="600px" lat="41.90" lng="-87.65" zoom="9" maptypes="true">
    <gm:handleEvent src="Sources">
  </gm:map>
</div>


<script>
    
    function kmlPE(){
      
      var myMap = google.mashups.getObjectById('map').getMap();
      var geoXml = new GGeoXml("http://webpages.cs.luc.edu/~cramirez/usPopMyServerNL.kml");
      myMap.addOverlay(geoXml);
      myMap.enableDoubleClickZoom();
    }
  </script>
  
</gm:page>