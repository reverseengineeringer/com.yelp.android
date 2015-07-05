package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.YelpBusinessAddresses;
import com.yelp.android.serializable.YelpDetailedAddress;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

public class ag
  extends g<Void, Void, YelpBusinessAddresses>
{
  public ag(String paramString, m<YelpBusinessAddresses> paramm)
  {
    super(ApiRequest.RequestType.GET, "business/update/details", paramm);
    addUrlParam("business_id", paramString);
  }
  
  public YelpBusinessAddresses a(JSONObject paramJSONObject)
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
    localYelpBusinessAddresses.setAlternateAddresses(localHashMap);
    localYelpBusinessAddresses.setAddress((YelpDetailedAddress)YelpDetailedAddress.CREATOR.parse(paramJSONObject));
    return localYelpBusinessAddresses;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */