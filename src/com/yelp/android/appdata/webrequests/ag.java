package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.serializable.YelpDetailedAddress;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class ag
  extends b<Void, Void, YelpBusinessAddresses>
{
  public ag(String paramString, ApiRequest.b<YelpBusinessAddresses> paramb)
  {
    super(ApiRequest.RequestType.GET, "business/update/details", paramb);
    a("business_id", paramString);
  }
  
  public YelpBusinessAddresses a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    YelpBusinessAddresses localYelpBusinessAddresses = (YelpBusinessAddresses)YelpBusinessAddresses.CREATOR.parse(paramJSONObject);
    JSONObject localJSONObject1 = paramJSONObject.getJSONObject("alternate_addresses");
    HashMap localHashMap = new HashMap();
    Iterator localIterator = localJSONObject1.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      JSONObject localJSONObject2 = localJSONObject1.getJSONObject(str);
      localHashMap.put(str, (YelpDetailedAddress)YelpDetailedAddress.CREATOR.parse(localJSONObject2));
    }
    localYelpBusinessAddresses.a(localHashMap);
    localYelpBusinessAddresses.a((YelpDetailedAddress)YelpDetailedAddress.CREATOR.parse(paramJSONObject));
    return localYelpBusinessAddresses;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */