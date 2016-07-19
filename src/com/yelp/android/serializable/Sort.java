package com.yelp.android.serializable;

import android.content.Context;

public enum Sort
{
  Default(2131166046, "default"),  Distance(2131166047, "distance"),  Rating(2131166049, "rating");
  
  private final String queryParam;
  private final int res;
  
  private Sort(int paramInt, String paramString)
  {
    res = paramInt;
    queryParam = paramString;
  }
  
  public static Sort fromQueryParameter(String paramString)
  {
    if (paramString != null)
    {
      Sort[] arrayOfSort = values();
      int j = arrayOfSort.length;
      int i = 0;
      while (i < j)
      {
        Sort localSort = arrayOfSort[i];
        if (paramString.equalsIgnoreCase(queryParam)) {
          return localSort;
        }
        i += 1;
      }
    }
    return null;
  }
  
  public CharSequence getLabel(Context paramContext)
  {
    return paramContext.getText(res);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Sort
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */