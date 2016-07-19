package com.yelp.android.serializable;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;

public class PlatformFilter
  extends _PlatformFilter
{
  public static final JsonParser.DualCreator<PlatformFilter> CREATOR = new PlatformFilter.1();
  
  public PlatformFilter() {}
  
  public PlatformFilter(String paramString1, String paramString2)
  {
    super(null, paramString1, paramString2);
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(SearchRequest paramSearchRequest)
  {
    a = SearchLocation.a(paramSearchRequest);
  }
  
  public void a(SearchLocation paramSearchLocation)
  {
    a = paramSearchLocation;
  }
  
  public boolean b()
  {
    return (TextUtils.equals(a(), "pickup")) || (TextUtils.equals(a(), "delivery_current_location")) || ((!StringUtils.d(a())) && (!StringUtils.d(d())));
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PlatformFilter)) {}
    do
    {
      return false;
      paramObject = (PlatformFilter)paramObject;
    } while ((!TextUtils.equals(a(), ((PlatformFilter)paramObject).a())) || (!TextUtils.equals(d(), ((PlatformFilter)paramObject).d())));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PlatformFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */