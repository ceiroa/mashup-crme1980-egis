<gm:page title="GisMap3" authenticate="false">

<div style="float:right; width:20%; padding:12px">
  <h3>Please Select State from the List</h3>
  <gm:list id="Sources" data="http://webpages.cs.luc.edu/~cramirez/usPop.kml" pagesize="10"
    template="statestemplate"/> 
</div>

<gm:template id="statestemplate">
  <table class="purple-theme">
    <tr repeat="true">
      <td><gm:text ref="child::Document/child::Folder/child::Placemark/child::name"/></td>
    </tr>
  </table>
</gm:template>

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