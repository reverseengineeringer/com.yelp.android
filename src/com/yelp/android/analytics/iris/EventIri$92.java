package com.yelp.android.analytics.iris;

import com.yelp.android.analytics.GaCustomDimenLink;
import com.yelp.android.analytics.c;
import com.yelp.android.bs.a;

final class EventIri$92
  extends a
{
  public String d()
  {
    return "seen_item_count";
  }
  
  public c[] e()
  {
    return a(new c[] { GaCustomDimenLink.total_item_count, GaCustomDimenLink.user_did_scroll });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.iris.EventIri.92
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */