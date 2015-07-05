package com.yelp.android.ui.activities.businesspage;

import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.bt;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.ScrollToLoadListView;

class bo
  extends bt
{
  private boolean b = true;
  
  bo(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void a(RecyclerView paramRecyclerView, int paramInt)
  {
    super.a(paramRecyclerView, paramInt);
    if (paramInt == 1)
    {
      a.m().setSendTouchesView(paramRecyclerView);
      if (b)
      {
        AppData.a(ViewIri.BusinessPhotoSwipe, "id", BusinessPageFragment.c(a).getId());
        b = false;
      }
      return;
    }
    a.m().setSendTouchesView(null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */