package com.yelp.android.serializable;

import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NearbyRow
  extends _NearbyRow
{
  public static final JsonParser.DualCreator<NearbyRow> CREATOR = new NearbyRow.1();
  
  public static ArrayList<NearbyRow> a(JSONArray paramJSONArray, HashMap<String, YelpBusiness> paramHashMap, String paramString)
    throws JSONException
  {
    paramString = new ArrayList();
    int i = 0;
    while (i < paramJSONArray.length())
    {
      NearbyRow localNearbyRow = (NearbyRow)CREATOR.parse(paramJSONArray.getJSONObject(i));
      Iterator localIterator = localNearbyRow.e().iterator();
      while (localIterator.hasNext())
      {
        NearbyResult localNearbyResult = (NearbyResult)localIterator.next();
        e = ((YelpBusiness)paramHashMap.get(localNearbyResult.c()));
      }
      paramString.add(localNearbyRow);
      i += 1;
    }
    return paramString;
  }
  
  public static ArrayList<NearbyRow> a(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    HashMap localHashMap = YelpBusiness.b(paramJSONObject.getJSONArray("businesses"), paramString, BusinessSearchRequest.FormatMode.SHORT);
    return a(paramJSONObject.getJSONArray("suggestions"), localHashMap, paramString);
  }
  
  public List<YelpBusiness> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((NearbyResult)localIterator.next()).b());
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.NearbyRow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */