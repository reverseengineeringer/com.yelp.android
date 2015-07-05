package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.location.Location;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.av.g;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDetailedAddress;
import com.yelp.android.serializable.v;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.o;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class w
  extends g<Void, Void, Pair<String, YelpBusiness>>
{
  protected Collection<String> a = new TreeSet();
  
  protected w(String paramString, m<Pair<String, YelpBusiness>> paramm)
  {
    super(ApiRequest.RequestType.POST, paramString, paramm);
  }
  
  public Pair<String, YelpBusiness> a(JSONObject paramJSONObject)
  {
    String str = paramJSONObject.getString("status");
    YelpBusiness localYelpBusiness = null;
    if (paramJSONObject.has("business")) {
      localYelpBusiness = (YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"));
    }
    return Pair.create(str, localYelpBusiness);
  }
  
  public Collection<String> a()
  {
    return a;
  }
  
  protected void a(double paramDouble)
  {
    addPostParam("longitude", paramDouble);
    a.add("longitude");
  }
  
  protected void a(int paramInt, String paramString)
  {
    String str = String.format(Locale.US, "address%d", new Object[] { Integer.valueOf(paramInt) });
    addPostParam(str, paramString);
    a.add(str);
  }
  
  public void a(Address paramAddress, boolean paramBoolean)
  {
    int i = 0;
    while (i < paramAddress.getMaxAddressLineIndex())
    {
      a(i + 1, paramAddress.getAddressLine(i));
      i += 1;
    }
    a(paramAddress.getLocality());
    b(paramAddress.getCountryCode());
    if (paramBoolean)
    {
      addPostParam("is_geocoded_address", true);
      a.add("is_geocoded_address");
    }
    if (paramAddress.hasLatitude()) {
      b(paramAddress.getLatitude());
    }
    if (paramAddress.hasLongitude()) {
      a(paramAddress.getLongitude());
    }
  }
  
  public void a(Location paramLocation)
  {
    if (paramLocation != null)
    {
      addPostParam("user_latitude", paramLocation.getLatitude());
      a.add("user_latitude");
      addPostParam("user_longitude", paramLocation.getLongitude());
      a.add("user_longitude");
      if (paramLocation.hasAccuracy())
      {
        addPostParam("user_accuracy", o.d(paramLocation.getAccuracy()));
        a.add("user_accuracy");
      }
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    addPostParam("phone", String.valueOf(paramCharSequence));
    a.add("phone");
  }
  
  protected void a(String paramString)
  {
    addPostParam("locality", paramString);
    a.add("locality");
  }
  
  public void a(Collection<Category> paramCollection)
  {
    addPostParam("categories", StringUtils.a(",", paramCollection, new v()));
    a.add("categories");
  }
  
  public void a(Map<String, YelpDetailedAddress> paramMap)
  {
    JSONObject localJSONObject1 = new JSONObject();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      JSONObject localJSONObject2 = new JSONObject();
      YelpDetailedAddress localYelpDetailedAddress = (YelpDetailedAddress)localEntry.getValue();
      try
      {
        localJSONObject2.put("address1", localYelpDetailedAddress.getAddress1());
        localJSONObject2.put("address2", localYelpDetailedAddress.getAddress2());
        localJSONObject2.put("address3", localYelpDetailedAddress.getAddress3());
        localJSONObject1.put((String)localEntry.getKey(), localJSONObject2);
      }
      catch (JSONException localJSONException)
      {
        YelpLog.e("BusinessChangeRequest", "Error serializing alternate addresses as JSON, dumping", localJSONException);
      }
    }
    addPostParam("alternate_addresses", localJSONObject1.toString());
  }
  
  protected void b(double paramDouble)
  {
    addPostParam("latitude", paramDouble);
    a.add("latitude");
  }
  
  public void b(CharSequence paramCharSequence)
  {
    addPostParam("url", String.valueOf(paramCharSequence));
    a.add("url");
  }
  
  protected void b(String paramString)
  {
    addPostParam("country", paramString);
    a.add("country");
  }
  
  public void c(CharSequence paramCharSequence)
  {
    addPostParam("menu_url", String.valueOf(paramCharSequence));
    a.add("menu_url");
  }
  
  public void c(String paramString)
  {
    addPostParam("alternate_names_ja_primary", paramString);
    a.add("alternate_names_ja_primary");
  }
  
  public void d(CharSequence paramCharSequence)
  {
    addPostParam("name", String.valueOf(paramCharSequence));
    a.add("name");
  }
  
  public void d(String paramString)
  {
    addPostParam("alternate_names_en_primary", paramString);
    a.add("alternate_names_en_primary");
  }
  
  public final void e(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      addPostParam("open_hours_description", String.valueOf(paramCharSequence));
      a.add("open_hours_description");
    }
  }
  
  public void e(String paramString)
  {
    addPostParam("alternate_names_ja_romanized", paramString);
    a.add("alternate_names_ja_romanized");
  }
  
  public final void f(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      addPostParam("notes", String.valueOf(paramCharSequence));
      a.add("notes");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */