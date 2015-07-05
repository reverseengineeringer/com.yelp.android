package com.yelp.android.ui.activities.reviews;

import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.ui.panels.ak;
import com.yelp.android.ui.panels.at;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cw;

class bf
  implements at
{
  bf(ReviewSuggestionsPageFragment paramReviewSuggestionsPageFragment) {}
  
  public void a()
  {
    a.m().setSendTouchesView(null);
  }
  
  public void a(ak paramak)
  {
    ReviewSuggestionsPageFragment.a(a, true);
  }
  
  public void b(ak paramak)
  {
    a.m().setSendTouchesView(paramak);
  }
  
  public void c(ak paramak)
  {
    ReviewSuggestion localReviewSuggestion = paramak.getSuggestion();
    cw.a(paramak, cw.c, true, new bg(this, localReviewSuggestion));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */