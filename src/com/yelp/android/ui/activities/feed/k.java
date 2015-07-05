package com.yelp.android.ui.activities.feed;

import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.yelp.android.serializable.CheckInFeedEntry;
import com.yelp.android.serializable.Comment;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.widgets.SpannableWidget;
import com.yelp.android.ui.widgets.j;

public class k
  extends b<CheckInFeedEntry>
{
  private final View.OnClickListener a;
  private final j b;
  
  public k(n paramn)
  {
    if (paramn == null) {
      throw new NullPointerException("Callback cannot be null");
    }
    a = new l(this, paramn);
    b = new m(this, paramn);
  }
  
  private void a(View paramView, int paramInt, FeedEntry paramFeedEntry)
  {
    paramView.setTag(2131492911, Integer.valueOf(paramInt));
    paramView.setTag(2131492902, paramFeedEntry);
  }
  
  public View a(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903281, paramViewGroup, false);
      paramFeedType = new o(paramFeedType, localView);
      localView.setTag(paramFeedType);
      o.a(paramFeedType).setOnClickListener(a);
      ((View)o.b(paramFeedType)).setOnClickListener(a);
      o.c(paramFeedType).setOnCheckedChangeListener(b);
      ((RelativeLayout.LayoutParams)o.a(paramFeedType).getLayoutParams()).addRule(5, i.getId());
      paramView = (RelativeLayout.LayoutParams)j.getLayoutParams();
      paramView.addRule(3, i.getId());
      paramView.addRule(5, i.getId());
    }
    paramFeedType = (o)localView.getTag();
    paramFeedType.a(paramFeedEntry, paramInt, paramViewGroup.getContext());
    paramView = ((CheckInFeedEntry)paramFeedEntry).getCheckIn();
    a(o.a(paramFeedType), paramInt, paramFeedEntry);
    paramViewGroup = SpannableString.valueOf(paramView.getCommentCountLikeCountText(paramViewGroup.getContext()));
    paramViewGroup.setSpan(new StyleSpan(1), 0, paramViewGroup.length(), 18);
    o.a(paramFeedType).setText(paramViewGroup, TextView.BufferType.SPANNABLE);
    a((View)o.b(paramFeedType), paramInt, paramFeedEntry);
    a((View)o.c(paramFeedType), paramInt, paramFeedEntry);
    o.c(paramFeedType).setOnCheckedChangeListener(null);
    o.c(paramFeedType).setChecked(paramView.getFeedback().isLikedByUser());
    o.c(paramFeedType).setOnCheckedChangeListener(b);
    if (paramView.getPrimaryComment() != null)
    {
      h.setText(paramView.getPrimaryComment().getText());
      h.setVisibility(0);
      j.setVisibility(0);
      ((RelativeLayout.LayoutParams)o.a(paramFeedType).getLayoutParams()).addRule(3, h.getId());
      return localView;
    }
    h.setVisibility(8);
    j.setVisibility(8);
    ((RelativeLayout.LayoutParams)o.a(paramFeedType).getLayoutParams()).addRule(3, i.getId());
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */