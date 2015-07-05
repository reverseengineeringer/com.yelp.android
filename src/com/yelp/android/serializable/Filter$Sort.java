package com.yelp.android.serializable;

import android.content.Context;

public enum Filter$Sort
{
  Default(2131165992),  Distance(2131165993),  Rating(2131165995);
  
  private final int res;
  
  private Filter$Sort(int paramInt)
  {
    res = paramInt;
  }
  
  public CharSequence getLabel(Context paramContext)
  {
    return paramContext.getText(res);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Filter.Sort
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */