package com.yelp.android.analytics;

public enum GADimensions
{
  USER_LOGGED_IN_STATE(1);
  
  public final int mIndex;
  
  private GADimensions(int paramInt)
  {
    mIndex = paramInt;
  }
  
  public int getIndex()
  {
    return mIndex;
  }
  
  public abstract String getValue();
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.GADimensions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */