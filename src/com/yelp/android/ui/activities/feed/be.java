package com.yelp.android.ui.activities.feed;

import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.widgets.AwardBanner;

public class be
  extends v<ReviewFeedEntry>
{
  public View b(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramFeedType = (ViewGroup)super.b(paramFeedEntry, paramFeedType, paramInt, paramView, paramViewGroup);
    boolean bool = ((ReviewFeedEntry)paramFeedEntry).getReview().isFirstReview();
    paramFeedEntry = paramFeedType.findViewById(2131492900);
    if (bool) {
      if (paramFeedEntry == null)
      {
        paramFeedEntry = new AwardBanner(paramFeedType.getContext(), null, 2131689478);
        paramFeedEntry.setId(2131492900);
        ((ViewGroup)paramFeedType.findViewById(2131493702)).addView(paramFeedEntry);
      }
    }
    while (paramFeedEntry == null)
    {
      return paramFeedType;
      paramFeedEntry.setVisibility(0);
      return paramFeedType;
    }
    paramFeedEntry.setVisibility(8);
    return paramFeedType;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */