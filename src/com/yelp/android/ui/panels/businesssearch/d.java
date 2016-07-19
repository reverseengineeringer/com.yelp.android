package com.yelp.android.ui.panels.businesssearch;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.ui.util.f;

public class d
  extends b<SearchResultLocalAd>
  implements f
{
  public d(Activity paramActivity)
  {
    super(paramActivity);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (((LocalAd)getItem(paramInt)).f()) {
      b(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.RATING });
    }
    for (;;)
    {
      return super.getView(paramInt, paramView, paramViewGroup);
      a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.RATING });
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */