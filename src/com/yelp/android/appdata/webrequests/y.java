package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.location.Location;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Category.a;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDetailedAddress;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.i;
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

public abstract class y
  extends b<Void, Void, Pair<String, YelpBusiness>>
{
  protected Collection<String> a = new TreeSet();
  
  protected y(String paramString, ApiRequest.b<Pair<String, YelpBusiness>> paramb)
  {
    super(ApiRequest.RequestType.POST, paramString, paramb);
  }
  
  public Pair<String, YelpBusiness> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    String str = paramJSONObject.getString("status");
    YelpBusiness localYelpBusiness = null;
    if (paramJSONObject.has("business")) {
      localYelpBusiness = (YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business"));
    }
    return Pair.create(str, localYelpBusiness);
  }
  
  protected void a(double paramDouble)
  {
    b("longitude", paramDouble);
    a.add("longitude");
  }
  
  protected void a(int paramInt, String paramString)
  {
    String str = String.format(Locale.US, "address%d", new Object[] { Integer.valueOf(paramInt) });
    b(str, paramString);
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
      b("is_geocoded_address", true);
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
      b("user_latitude", paramLocation.getLatitude());
      a.add("user_latitude");
      b("user_longitude", paramLocation.getLongitude());
      a.add("user_longitude");
      if (paramLocation.hasAccuracy())
      {
        b("user_accuracy", i.d(paramLocation.getAccuracy()));
        a.add("user_accuracy");
      }
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    b("phone", String.valueOf(paramCharSequence));
    a.add("phone");
  }
  
  protected void a(String paramString)
  {
    b("locality", paramString);
    a.add("locality");
  }
  
  public void a(Collection<Category> paramCollection)
  {
    b("categories", StringUtils.a(",", paramCollection, new Category.a()));
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
        localJSONObject2.put("address1", localYelpDetailedAddress.c());
        localJSONObject2.put("address2", localYelpDetailedAddress.b());
        localJSONObject2.put("address3", localYelpDetailedAddress.a());
        localJSONObject1.put((String)localEntry.getKey(), localJSONObject2);
      }
      catch (JSONException localJSONException)
      {
        YelpLog.e("BusinessChangeRequest", "Error serializing alternate addresses as JSON, dumping", localJSONException);
      }
    }
    b("alternate_addresses", localJSONObject1.toString());
  }
  
  public Collection<String> b()
  {
    return a;
  }
  
  protected void b(double paramDouble)
  {
    b("latitude", paramDouble);
    a.add("latitude");
  }
  
  public void b(CharSequence paramCharSequence)
  {
    b("url", String.valueOf(paramCharSequence));
    a.add("url");
  }
  
  protected void b(String paramString)
  {
    b("country", paramString);
    a.add("country");
  }
  
  public void c(CharSequence paramCharSequence)
  {
    b("menu_url", String.valueOf(paramCharSequence));
    a.add("menu_url");
  }
  
  public void d(CharSequence paramCharSequence)
  {
    b("name", String.valueOf(paramCharSequence));
    a.add("name");
  }
  
  public final void e(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      b("open_hours_description", String.valueOf(paramCharSequence));
      a.add("open_hours_description");
    }
  }
  
  public void e(String paramString)
  {
    b("alternate_names_ja_primary", paramString);
    a.add("alternate_names_ja_primary");
  }
  
  public final void f(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      b("notes", String.valueOf(paramCharSequence));
      a.add("notes");
    }
  }
  
  public void f(String paramString)
  {
    b("alternate_names_en_primary", paramString);
    a.add("alternate_names_en_primary");
  }
  
  public void g(String paramString)
  {
    b("alternate_names_ja_romanized", paramString);
    a.add("alternate_names_ja_romanized");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */