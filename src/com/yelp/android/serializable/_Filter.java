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

abstract class _Filter
  implements Parcelable
{
  protected Distance a;
  protected List<GenericSearchFilter> b;
  protected Sort c;
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("distance", a.a());
    }
    if (b != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((GenericSearchFilter)localIterator.next()).b());
      }
      localJSONObject.put("generic_search_filters", localJSONArray);
    }
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((Distance)paramParcel.readParcelable(Distance.class.getClassLoader()));
    b = paramParcel.readArrayList(GenericSearchFilter.class.getClassLoader());
    c = ((Sort)paramParcel.readSerializable());
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("distance")) {
      a = ((Distance)Distance.CREATOR.parse(paramJSONObject.getJSONObject("distance")));
    }
    if (!paramJSONObject.isNull("generic_search_filters"))
    {
      b = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("generic_search_filters"), GenericSearchFilter.CREATOR);
      return;
    }
    b = Collections.emptyList();
  }
  
  public Sort b()
  {
    return c;
  }
  
  public List<GenericSearchFilter> c()
  {
    return b;
  }
  
  public Distance d()
  {
    return a;
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
    paramObject = (_Filter)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeList(b);
    paramParcel.writeSerializable(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Filter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */