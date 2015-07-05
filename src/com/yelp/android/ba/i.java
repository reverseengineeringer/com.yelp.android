package com.yelp.android.ba;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.util.cp;

public class i
{
  private final ImageView a;
  private final TextView b;
  private final TextView c;
  private final ImageView d;
  private final TextView e;
  private final ImageView f;
  
  public i(View paramView, int paramInt)
  {
    paramView = paramView.findViewById(paramInt);
    e = ((TextView)paramView.findViewById(2131493526));
    f = ((ImageView)paramView.findViewById(2131493685));
    a = ((ImageView)paramView.findViewById(2131493684));
    b = ((TextView)paramView.findViewById(2131493528));
    c = ((TextView)paramView.findViewById(2131493527));
    d = ((ImageView)paramView.findViewById(2131493686));
  }
  
  public void a(ReviewFeedEntry paramReviewFeedEntry, Context paramContext)
  {
    cp.a(a, paramReviewFeedEntry.getRating());
    b.setText(paramReviewFeedEntry.getReview().getText().replace('\n', ' ').replace('\t', ' '));
    int i = paramReviewFeedEntry.getPhotoCount();
    if (i > 0)
    {
      c.setVisibility(0);
      d.setVisibility(0);
      c.setText(Integer.toString(i));
    }
    for (;;)
    {
      i = paramReviewFeedEntry.getReview().getUserCheckInCount();
      if (i <= 0) {
        break;
      }
      e.setText(Integer.toString(i));
      f.setImageDrawable(paramContext.getResources().getDrawable(paramReviewFeedEntry.getReview().getUserLocationRank().getRankIcon()));
      f.setVisibility(0);
      e.setVisibility(0);
      return;
      c.setVisibility(8);
      d.setVisibility(8);
    }
    f.setVisibility(8);
    e.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ba.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */