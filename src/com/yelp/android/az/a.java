package com.yelp.android.az;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.util.cp;
import com.yelp.android.util.StringUtils;

public abstract class a
{
  public ImageView a;
  public TextView b;
  public ImageView c;
  public TextView d;
  public View e;
  private final j f;
  
  public a(View paramView, int paramInt)
  {
    e = paramView.findViewById(paramInt);
    f = h.c(paramView.getContext());
    a = ((ImageView)paramView.findViewById(2131493144));
    b = ((TextView)paramView.findViewById(2131493675));
    c = ((ImageView)paramView.findViewById(2131493676));
    d = ((TextView)paramView.findViewById(2131493677));
  }
  
  protected abstract String a(YelpBusiness paramYelpBusiness);
  
  public void a(Context paramContext, YelpBusiness paramYelpBusiness, float paramFloat, int paramInt)
  {
    f.a(a(paramYelpBusiness)).b(2130837648).a(a);
    b.setText(paramYelpBusiness.getName());
    if (paramFloat == -1.0F)
    {
      c.setVisibility(8);
      d.setVisibility(8);
    }
    while (paramInt == -1)
    {
      d.setVisibility(8);
      return;
      c.setVisibility(0);
      cp.a(c, paramFloat);
    }
    d.setVisibility(0);
    d.setText(StringUtils.a(paramContext, 2131623970, paramInt, new String[0]));
  }
  
  public void a(FeedEntry paramFeedEntry, Context paramContext)
  {
    a(paramContext, paramFeedEntry.getBusiness(), paramFeedEntry.getBusiness().getAvgRating(), paramFeedEntry.getBusiness().getReviewCount());
    e.setOnClickListener(new b(this, paramFeedEntry, paramContext));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.az.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */