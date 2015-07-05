package com.yelp.android.ui.panels.businesssearch;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.ui.util.i;

public class j
  extends g<SearchResultLocalAd>
  implements i
{
  public j(Context paramContext)
  {
    super(paramContext);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (((LocalAd)getItem(paramInt)).isRatingDisabled()) {
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
 * Qualified Name:     com.yelp.android.ui.panels.businesssearch.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */