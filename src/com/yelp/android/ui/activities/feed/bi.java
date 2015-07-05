package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.yelp.android.ba.d;
import com.yelp.android.ba.f;
import com.yelp.android.ba.j;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.ui.util.cw;
import com.yelp.android.util.StringUtils;

class bi
{
  private final TextView b;
  private final CompoundButton c;
  private f d;
  private d e;
  private j f;
  private int g;
  private TipFeedEntry h;
  
  public bi(bg parambg, FeedType paramFeedType, View paramView)
  {
    d = new f(paramFeedType, paramView, 2131493692);
    e = new d(paramView, 2131493674);
    f = new j(paramView, 2131493687);
    paramFeedType = paramView.findViewById(2131493689);
    b = ((TextView)paramFeedType.findViewById(2131493690));
    c = ((CompoundButton)paramFeedType.findViewById(2131493691));
    c.setOnCheckedChangeListener(new bj(this, parambg));
    paramFeedType = AnimationUtils.loadAnimation(paramView.getContext(), 2130968590);
    paramFeedType.setDuration(cw.f);
    paramFeedType.setFillAfter(true);
    paramView = AnimationUtils.loadAnimation(paramView.getContext(), 2130968589);
    paramView.setDuration(cw.f);
    paramView.setFillAfter(true);
    c.setOnTouchListener(new bk(this, parambg, paramFeedType, paramView));
  }
  
  public void a(Context paramContext)
  {
    Feedback localFeedback = h.getTip().getFeedback();
    g = localFeedback.getPositiveFeedbackCount();
    if (g > 0)
    {
      b.setText(StringUtils.a(paramContext, 2131623996, g, new Object[0]));
      b.setVisibility(0);
    }
    for (;;)
    {
      c.setChecked(localFeedback.isLikedByUser());
      return;
      b.setVisibility(4);
    }
  }
  
  public void a(TipFeedEntry paramTipFeedEntry, int paramInt, Context paramContext)
  {
    h = paramTipFeedEntry;
    d.a(paramTipFeedEntry, paramInt, paramContext);
    e.a(paramTipFeedEntry, paramContext);
    f.a(h, paramContext);
    a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */