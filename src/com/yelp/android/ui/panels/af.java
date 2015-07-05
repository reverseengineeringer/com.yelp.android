package com.yelp.android.ui.panels;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.ReviewSuggestion;
import java.util.ArrayList;
import java.util.List;

class af
  implements View.OnClickListener
{
  af(YourNextReviewAwaitsFragment paramYourNextReviewAwaitsFragment, LinearLayout paramLinearLayout, Button paramButton) {}
  
  public void onClick(View paramView)
  {
    if (YourNextReviewAwaitsFragment.a(c).size() < YourNextReviewAwaitsFragment.b(c).size())
    {
      int j = YourNextReviewAwaitsFragment.a(c).size();
      int i = 0;
      while ((i + j < YourNextReviewAwaitsFragment.b(c).size()) && (i < 3))
      {
        YourNextReviewAwaitsFragment.a(c, (ReviewSuggestion)YourNextReviewAwaitsFragment.b(c).get(i + j), a, true);
        i += 1;
      }
      if (YourNextReviewAwaitsFragment.a(c).size() == YourNextReviewAwaitsFragment.b(c).size()) {
        b.setVisibility(8);
      }
      AppData.a(EventIri.ReviewSuggestionLoadedMore);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */