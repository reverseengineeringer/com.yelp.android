package com.yelp.android.ui.activities.reviews;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.ui.activities.search.SearchOverlay;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import java.util.Collections;

class ActivityReviewSuggestions$1
  implements View.OnClickListener
{
  ActivityReviewSuggestions$1(ActivityReviewSuggestions paramActivityReviewSuggestions) {}
  
  public void onClick(View paramView)
  {
    paramView = SearchOverlay.a(a, Collections.singletonList(a.getResources().getString(2131165745)), ActivityReviewSuggestions.a(a), ActivityReviewSuggestions.b(a), false, BusinessContributionType.REVIEW, SuggestionFilter.SuggestionType.CONTRIBUTION);
    a.startActivityForResult(paramView, 1055);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityReviewSuggestions.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */