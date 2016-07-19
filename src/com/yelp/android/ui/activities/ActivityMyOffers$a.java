package com.yelp.android.ui.activities;

import android.content.Context;
import android.graphics.Typeface;
import android.widget.TextView;
import com.yelp.android.cg.b;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.a;
import com.yelp.android.util.StringUtils.Format;
import java.util.List;

class ActivityMyOffers$a
  extends a
{
  private final List<Offer> a;
  
  public ActivityMyOffers$a(List<Offer> paramList, Context paramContext)
  {
    super(paramContext);
    a = paramList;
  }
  
  public YelpBusiness a(int paramInt)
  {
    return ((Offer)a.get(paramInt)).h();
  }
  
  public void a(int paramInt, b paramb)
  {
    super.a(paramInt, paramb);
    Offer localOffer = (Offer)a.get(paramInt);
    String str = localOffer.h().a(c.getContext(), StringUtils.Format.ABBREVIATED);
    paramb.a(2130837829, localOffer.a(), localOffer.h().z(), str);
    b.setTypeface(Typeface.DEFAULT_BOLD);
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
 * Qualified Name:     com.yelp.android.ui.activities.ActivityMyOffers.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */