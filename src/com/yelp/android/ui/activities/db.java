package com.yelp.android.ui.activities;

import android.content.Context;
import android.graphics.Typeface;
import android.widget.TextView;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.feed.c;
import com.yelp.android.ui.panels.a;
import com.yelp.android.util.StringUtils.Format;
import java.util.List;

class db
  extends a
{
  private final List<Offer> a;
  
  public db(List<Offer> paramList, Context paramContext)
  {
    super(paramContext);
    a = paramList;
  }
  
  public YelpBusiness a(int paramInt)
  {
    return ((Offer)a.get(paramInt)).getBusiness();
  }
  
  public void a(int paramInt, c paramc)
  {
    super.a(paramInt, paramc);
    Offer localOffer = (Offer)a.get(paramInt);
    String str = localOffer.getBusiness().getDistanceFormatted(s.getContext(), StringUtils.Format.ABBREVIATED);
    paramc.a(2130837743, localOffer.getSpan(), localOffer.getBusiness().getDisplayName(), str);
    r.setTypeface(Typeface.DEFAULT_BOLD);
  }
  
  public void clear()
  {
    a.clear();
  }
  
  public int getCount()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */