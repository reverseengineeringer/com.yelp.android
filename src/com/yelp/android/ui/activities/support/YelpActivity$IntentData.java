package com.yelp.android.ui.activities.support;

public enum YelpActivity$IntentData
{
  INSTANCE;
  
  private Object mData;
  
  private YelpActivity$IntentData() {}
  
  public static Object popData()
  {
    Object localObject = INSTANCEmData;
    INSTANCEmData = null;
    return localObject;
  }
  
  public static void setData(Object paramObject)
  {
    INSTANCEmData = paramObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpActivity.IntentData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */