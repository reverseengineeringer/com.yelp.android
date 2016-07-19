package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;

public class eo
{
  private BusinessSearchRequest a = new BusinessSearchRequest();
  
  public eo()
  {
    a.a(new Filter());
  }
  
  public BusinessSearchRequest a()
  {
    return a;
  }
  
  public eo a(BusinessSearchRequest.FormatMode paramFormatMode)
  {
    a.a(paramFormatMode);
    return this;
  }
  
  public eo a(BusinessSearchRequest.SearchMode paramSearchMode)
  {
    a.a(paramSearchMode);
    return this;
  }
  
  public eo a(Category paramCategory)
  {
    a.a(paramCategory);
    return this;
  }
  
  public eo a(Filter paramFilter)
  {
    a.a(paramFilter);
    return this;
  }
  
  public eo a(String paramString)
  {
    a.e(paramString);
    return this;
  }
  
  public eo a(boolean paramBoolean)
  {
    a.b(paramBoolean);
    return this;
  }
  
  public eo a(double[] paramArrayOfDouble)
  {
    a.a(paramArrayOfDouble);
    return this;
  }
  
  public eo b(String paramString)
  {
    a.g(paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */