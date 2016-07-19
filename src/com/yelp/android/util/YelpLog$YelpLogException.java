package com.yelp.android.util;

public class YelpLog$YelpLogException
  extends Exception
{
  private static final long serialVersionUID = -8220825712806410535L;
  
  public YelpLog$YelpLogException()
  {
    YelpLog.removeTopOfStackTrace(this);
  }
  
  public YelpLog$YelpLogException(String paramString)
  {
    super(paramString);
    YelpLog.removeTopOfStackTrace(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.YelpLog.YelpLogException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */