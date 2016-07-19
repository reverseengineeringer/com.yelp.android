package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class PlatformGenericSearchFilter
  extends GenericSearchFilter
{
  public static final a<PlatformGenericSearchFilter> CREATOR = new PlatformGenericSearchFilter.1();
  private PlatformFilter e;
  
  private PlatformGenericSearchFilter() {}
  
  public PlatformGenericSearchFilter(PlatformFilter paramPlatformFilter, boolean paramBoolean)
  {
    super("platform_filter", GenericSearchFilter.FilterType.Platform, paramBoolean);
    e = paramPlatformFilter;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    e = ((PlatformFilter)paramParcel.readParcelable(PlatformFilter.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    if (!paramJSONObject.isNull("params")) {
      e = ((PlatformFilter)PlatformFilter.CREATOR.parse(paramJSONObject.getJSONObject("params")));
    }
  }
  
  public JSONObject b()
    throws JSONException
  {
    JSONObject localJSONObject = super.b();
    if (e != null) {
      localJSONObject.put("params", e.c());
    }
    return localJSONObject;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      if (!super.equals(paramObject)) {
        return false;
      }
      paramObject = (PlatformGenericSearchFilter)paramObject;
      if (f() == null) {
        break;
      }
    } while (f().equals(((PlatformGenericSearchFilter)paramObject).f()));
    while (((PlatformGenericSearchFilter)paramObject).f() != null) {
      return false;
    }
    return true;
  }
  
  public PlatformFilter f()
  {
    return e;
  }
  
  public int hashCode()
  {
    int j = super.hashCode();
    if (f() != null) {}
    for (int i = f().hashCode();; i = 0) {
      return i + j * 31;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(e, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PlatformGenericSearchFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */