package com.yelp.android.webimageview;

public abstract interface DebugLogger
{
  public abstract boolean isDebugEnabled();
  
  public abstract void logIfDebug(String paramString1, String paramString2, Object... paramVarArgs);
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.DebugLogger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */