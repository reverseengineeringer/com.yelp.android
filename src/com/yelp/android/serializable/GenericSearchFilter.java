package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.util.d;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class GenericSearchFilter
  extends _GenericSearchFilter
{
  public static final JsonParser.DualCreator<GenericSearchFilter> CREATOR = new GenericSearchFilter.1();
  private GenericSearchFilter.FilterType e;
  
  protected GenericSearchFilter() {}
  
  public GenericSearchFilter(String paramString, GenericSearchFilter.FilterType paramFilterType, boolean paramBoolean) {}
  
  public GenericSearchFilter(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramString, GenericSearchFilter.FilterType.Boolean.name(), paramBoolean1, paramBoolean2);
    e = GenericSearchFilter.FilterType.Boolean;
  }
  
  public static GenericSearchFilter a(GenericSearchFilter paramGenericSearchFilter)
  {
    return (GenericSearchFilter)d.a(paramGenericSearchFilter);
  }
  
  public static GenericSearchFilter a(GenericSearchFilter paramGenericSearchFilter, boolean paramBoolean)
  {
    paramGenericSearchFilter = (GenericSearchFilter)d.a(paramGenericSearchFilter);
    paramGenericSearchFilter.a(paramBoolean);
    return paramGenericSearchFilter;
  }
  
  private static GenericSearchFilter c(JSONObject paramJSONObject)
    throws JSONException
  {
    Object localObject = GenericSearchFilter.FilterType.getFilterType(paramJSONObject.getString("type"));
    switch (GenericSearchFilter.2.a[localObject.ordinal()])
    {
    default: 
      throw new IllegalStateException("Does not know how to parse filter of type: " + localObject);
    case 1: 
      return (GenericSearchFilter)OpenNowGenericSearchFilter.CREATOR.parse(paramJSONObject);
    case 2: 
      return (GenericSearchFilter)PlatformGenericSearchFilter.CREATOR.parse(paramJSONObject);
    case 3: 
      return (GenericSearchFilter)ReservationGenericSearchFilter.CREATOR.parse(paramJSONObject);
    }
    localObject = new GenericSearchFilter();
    ((GenericSearchFilter)localObject).a(paramJSONObject);
    return (GenericSearchFilter)localObject;
  }
  
  public GenericSearchFilter.FilterType a()
  {
    return e;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    e = GenericSearchFilter.FilterType.getFilterType(d());
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    e = GenericSearchFilter.FilterType.getFilterType(d());
  }
  
  protected void a(boolean paramBoolean)
  {
    c = paramBoolean;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      d = paramBoolean;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.GenericSearchFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */