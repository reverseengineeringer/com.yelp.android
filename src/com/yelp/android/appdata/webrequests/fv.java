package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;
import java.util.EnumSet;

public class fv
{
  private BusinessSearchRequest a = new BusinessSearchRequest();
  
  public BusinessSearchRequest a()
  {
    return a;
  }
  
  public fv a(BusinessSearchRequest.FormatMode paramFormatMode)
  {
    a.setFormatMode(paramFormatMode);
    return this;
  }
  
  public fv a(BusinessSearchRequest.SearchMode paramSearchMode)
  {
    a.setSearchMode(paramSearchMode);
    return this;
  }
  
  public fv a(Category paramCategory)
  {
    a.setCategory(paramCategory);
    return this;
  }
  
  public fv a(Filter paramFilter)
  {
    a.setFilter(paramFilter);
    return this;
  }
  
  public fv a(String paramString)
  {
    a.setTermNear(paramString);
    return this;
  }
  
  public fv a(EnumSet<SearchRequest.SearchOption> paramEnumSet)
  {
    a.setSearchOptions(paramEnumSet);
    return this;
  }
  
  public fv a(boolean paramBoolean)
  {
    a.setUnFoldedResults(paramBoolean);
    return this;
  }
  
  public fv a(double[] paramArrayOfDouble)
  {
    a.setRegion(paramArrayOfDouble);
    return this;
  }
  
  public fv b(String paramString)
  {
    a.setSearchTerms(paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */