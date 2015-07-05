package com.yelp.android.serializable;

import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class NearbyRow
  extends _NearbyRow
{
  public static final JsonParser.DualCreator<NearbyRow> CREATOR = new bl();
  
  public static ArrayList<NearbyRow> rowsFromJSONArray(JSONArray paramJSONArray, HashMap<String, YelpBusiness> paramHashMap, String paramString)
  {
    paramString = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      NearbyRow localNearbyRow = (NearbyRow)CREATOR.parse(paramJSONArray.getJSONObject(i));
      Iterator localIterator = localNearbyRow.getResults().iterator();
      while (localIterator.hasNext())
      {
        NearbyResult localNearbyResult = (NearbyResult)localIterator.next();
        mBusiness = ((YelpBusiness)paramHashMap.get(localNearbyResult.getBusinessId()));
      }
      paramString.add(localNearbyRow);
      i += 1;
    }
    return paramString;
  }
  
  public static ArrayList<NearbyRow> rowsFromNearbySuggestResponse(JSONObject paramJSONObject, String paramString)
  {
    HashMap localHashMap = YelpBusiness.jsonBusinessesToMap(paramJSONObject.getJSONArray("businesses"), paramString, BusinessSearchRequest.FormatMode.SHORT);
    return rowsFromJSONArray(paramJSONObject.getJSONArray("suggestions"), localHashMap, paramString);
  }
  
  public List<YelpBusiness> getBusinessListForResults()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = mResults.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((NearbyResult)localIterator.next()).getBusiness());
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.NearbyRow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */