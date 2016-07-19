package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.PlatformDeliveryAddress;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class bf
  extends b<Void, Void, a>
{
  public bf(ApiRequest.b paramb, PlatformDeliveryAddress paramPlatformDeliveryAddress)
  {
    super(ApiRequest.RequestType.POST, "user/address/disambiguate", paramb);
    try
    {
      paramb = paramPlatformDeliveryAddress.a();
      if (paramPlatformDeliveryAddress.e() == null) {
        paramb.put("address2", "");
      }
      b("address", paramb.toString());
      return;
    }
    catch (JSONException paramb)
    {
      throw new RuntimeException("Error creating the AddressDisambiguateRequest" + paramb.getMessage());
    }
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("suggested_addresses"), PlatformDisambiguatedAddress.CREATOR);
    return new a(paramJSONObject.optBoolean("is_disambiguated", false), localArrayList);
  }
  
  public static class a
  {
    private final boolean a;
    private final ArrayList<PlatformDisambiguatedAddress> b;
    
    public a(boolean paramBoolean, List<PlatformDisambiguatedAddress> paramList)
    {
      a = paramBoolean;
      b = new ArrayList(paramList);
    }
    
    public boolean a()
    {
      return a;
    }
    
    public ArrayList<PlatformDisambiguatedAddress> b()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */