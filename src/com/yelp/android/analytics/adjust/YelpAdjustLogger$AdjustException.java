package com.yelp.android.analytics.adjust;

import com.yelp.android.util.YelpLog;

class YelpAdjustLogger$AdjustException
  extends Exception
{
  public YelpAdjustLogger$AdjustException()
  {
    YelpLog.removeTopOfStackTrace(this);
  }
  
  public YelpAdjustLogger$AdjustException(String paramString)
  {
    super(paramString);
    YelpLog.removeTopOfStackTrace(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.adjust.YelpAdjustLogger.AdjustException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */