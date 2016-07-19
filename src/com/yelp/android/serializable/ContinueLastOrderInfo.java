package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Calendar;
import java.util.Date;

public class ContinueLastOrderInfo
  extends _ContinueLastOrderInfo
{
  public static final JsonParser.DualCreator<ContinueLastOrderInfo> CREATOR = new ContinueLastOrderInfo.1();
  
  public boolean a()
  {
    return Calendar.getInstance().getTime().after(g());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ContinueLastOrderInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */