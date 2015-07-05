package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.bs;
import java.util.ArrayList;

class bb
  implements View.OnClickListener
{
  bb(ReviewSuggestionsPageFragment paramReviewSuggestionsPageFragment) {}
  
  public void onClick(View paramView)
  {
    int i = ReviewSuggestionsPageFragment.a(a).size();
    int j = ReviewSuggestionsPageFragment.b(a).size() - i;
    int k = Math.min(3, j);
    ReviewSuggestionsPageFragment.a(a).addAll(ReviewSuggestionsPageFragment.b(a).subList(i, i + k));
    if (j == k) {
      paramView.setVisibility(8);
    }
    ReviewSuggestionsPageFragment.c(a).notifyDataSetChanged();
    AppData.a(EventIri.ReviewSuggestionLoadedMore);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */