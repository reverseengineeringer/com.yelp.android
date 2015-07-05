package com.yelp.android.ui.activities.feed;

import android.text.Spannable;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.x;
import com.yelp.android.ui.widgets.SpannableWidget;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.ui.widgets.j;
import com.yelp.android.util.StringUtils;

public class bl
  extends v<TipFeedEntry>
  implements at<TipFeedEntry>
{
  private final View.OnClickListener a;
  private final View.OnClickListener b;
  private final View.OnClickListener c;
  private final j d;
  private final x<TipFeedEntry, Spannable> e = new bq(this);
  
  public bl(br parambr)
  {
    if (parambr == null) {
      throw new NullPointerException("Callback cannot be null");
    }
    a = new bm(this, parambr);
    b = new bn(this, parambr);
    c = new bo(this, parambr);
    d = new bp(this, parambr);
  }
  
  private void a(View paramView, int paramInt, FeedEntry paramFeedEntry)
  {
    paramView.setTag(2131492911, Integer.valueOf(paramInt));
    paramView.setTag(2131492902, paramFeedEntry);
  }
  
  public View b(FeedEntry paramFeedEntry, FeedType paramFeedType, int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject1;
    label240:
    int i;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903376, paramViewGroup, false);
      paramFeedType = new bs(this, paramFeedType, paramView);
      paramView.setTag(paramFeedType);
      bs.a(paramFeedType).setOnClickListener(a);
      bs.b(paramFeedType).setOnClickListener(b);
      bs.c(paramFeedType).setOnClickListener(c);
      bs.d(paramFeedType).setOnCheckedChangeListener(d);
      bs.a(paramFeedType).setBackgroundResource(2130837805);
      localObject1 = (RelativeLayout.LayoutParams)bs.a(paramFeedType).getLayoutParams();
      ((RelativeLayout.LayoutParams)localObject1).addRule(3, bs.e(paramFeedType).getId());
      ((RelativeLayout.LayoutParams)localObject1).addRule(5, bs.e(paramFeedType).getId());
      topMargin = ao.j;
      paramFeedType.a(paramFeedEntry, paramInt, paramViewGroup.getContext());
      localObject1 = (TipFeedEntry)paramFeedEntry;
      Object localObject2 = ((TipFeedEntry)localObject1).getTip().getCountsText(paramViewGroup.getContext());
      bs.a(paramFeedType).setText(StringUtils.a(SpannableString.valueOf((CharSequence)localObject2)));
      a(bs.a(paramFeedType), paramInt, paramFeedEntry);
      a(bs.b(paramFeedType), paramInt, paramFeedEntry);
      if (((TipFeedEntry)localObject1).getContentPhoto() == null) {
        break label415;
      }
      bs.f(paramFeedType).setImageUrl(((TipFeedEntry)localObject1).getContentPhoto().getThumbnailUrl());
      bs.f(paramFeedType).setVisibility(0);
      localObject2 = bs.g(paramFeedType);
      if (!((TipFeedEntry)localObject1).getTip().isFirstTip()) {
        break label427;
      }
      i = 0;
      label260:
      ((View)localObject2).setVisibility(i);
      cr.a(bs.h(paramFeedType), (Spannable)e.a(paramInt, paramViewGroup.getContext(), localObject1), ((TipFeedEntry)localObject1).getTip());
      if ((!AppData.b().m().c()) || (!((TipFeedEntry)localObject1).isFromLoggedInUser())) {
        break label434;
      }
      bs.c(paramFeedType).setVisibility(0);
      bs.a(paramFeedType).setHint(2131166830);
    }
    for (;;)
    {
      a(bs.c(paramFeedType), paramInt, paramFeedEntry);
      bs.d(paramFeedType).setOnCheckedChangeListener(null);
      bs.d(paramFeedType).setChecked(((TipFeedEntry)localObject1).getTip().getFeedback().isLikedByUser());
      bs.d(paramFeedType).setOnCheckedChangeListener(d);
      a((View)bs.d(paramFeedType), paramInt, paramFeedEntry);
      return paramView;
      paramFeedType = (bs)paramView.getTag();
      break;
      label415:
      bs.f(paramFeedType).setVisibility(8);
      break label240;
      label427:
      i = 8;
      break label260;
      label434:
      bs.c(paramFeedType).setVisibility(8);
      bs.a(paramFeedType).setHint(2131166012);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */