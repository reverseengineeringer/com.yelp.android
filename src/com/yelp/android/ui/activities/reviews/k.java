package com.yelp.android.ui.activities.reviews;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.ui.activities.search.SearchOverlay;
import java.util.Collections;

class k
  implements View.OnClickListener
{
  k(ActivityReviewSuggestions paramActivityReviewSuggestions) {}
  
  public void onClick(View paramView)
  {
    paramView = SearchOverlay.a(a, Collections.singletonList(a.getResources().getString(2131165670)), ActivityReviewSuggestions.a(a), ActivityReviewSuggestions.b(a), false, BusinessContributionType.REVIEW);
    a.startActivityForResult(paramView, 1048);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */