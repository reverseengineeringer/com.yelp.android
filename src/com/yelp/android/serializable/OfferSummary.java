package com.yelp.android.serializable;

import java.util.List;

public class OfferSummary
  extends _OfferSummary
{
  public static final ah<OfferSummary> CREATOR = new bq();
  public static final String JSON_KEY = "check_in_offer_summary";
  
  public boolean isEmpty()
  {
    return (mCount == 0) || (mNames == null) || (mNames.isEmpty());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.OfferSummary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */