package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _BusinessSearchResult
  implements Parcelable
{
  protected List<SearchResultAnnotation> a;
  protected String b;
  protected YelpBusiness c;
  
  public YelpBusiness a()
  {
    return c;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(SearchResultAnnotation.class.getClassLoader());
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("annotations")) {}
    for (a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("annotations"), SearchResultAnnotation.CREATOR);; a = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("biz_dimension")) {
        b = paramJSONObject.optString("biz_dimension");
      }
      if (!paramJSONObject.isNull("business")) {
        c = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
      }
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
    } while (paramObject.getClass() != getClass());
    paramObject = (_BusinessSearchResult)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public JSONObject f()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((SearchResultAnnotation)localIterator.next()).b());
      }
      localJSONObject.put("annotations", localJSONArray);
    }
    if (b != null) {
      localJSONObject.put("biz_dimension", b);
    }
    if (c != null) {
      localJSONObject.put("business", c.E());
    }
    return localJSONObject;
  }
  
  public String g()
  {
    return b;
  }
  
  public List<SearchResultAnnotation> h()
  {
    return a;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeValue(b);
    paramParcel.writeParcelable(c, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._BusinessSearchResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */