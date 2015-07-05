package com.yelp.android.ui.activities.reviews;

import android.view.animation.Animation;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.dd;
import java.util.ArrayList;

class bg
  extends dd
{
  bg(bf parambf, ReviewSuggestion paramReviewSuggestion) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    ReviewSuggestionsPageFragment.b(b.a).remove(a);
    ReviewSuggestionsPageFragment.a(b.a).remove(a);
    ReviewSuggestionsPageFragment.c(b.a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */