package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.ui.panels.ak;
import com.yelp.android.ui.panels.at;
import com.yelp.android.ui.util.au;

public class ba
  extends au<ReviewSuggestion>
{
  private at a;
  
  public ba(at paramat)
  {
    a = paramat;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ReviewSuggestion localReviewSuggestion = (ReviewSuggestion)getItem(paramInt);
    if ((paramView == null) || (((ak)paramView).a())) {
      return new ak(paramViewGroup.getContext(), localReviewSuggestion, a, IriSource.AddReviewPage);
    }
    paramView = (ak)paramView;
    paramView.setSuggestion(localReviewSuggestion);
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */