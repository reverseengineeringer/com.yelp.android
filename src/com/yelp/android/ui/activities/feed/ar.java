package com.yelp.android.ui.activities.feed;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.yelp.android.ui.util.cp;

@SuppressLint({"ViewConstructor"})
class ar
  extends LinearLayout
{
  private View a;
  
  public ar(Context paramContext, View paramView)
  {
    super(paramContext);
    a = paramView;
    paramView = new View(paramContext);
    paramView.setLayoutParams(new LinearLayout.LayoutParams(-1, cp.a(paramContext, 2130772042)));
    paramView.setBackgroundResource(2131361878);
    paramView.setOnTouchListener(new as(this));
    setOrientation(1);
    addView(a);
    addView(paramView);
  }
  
  private void a(View paramView)
  {
    a = paramView;
    removeViewAt(0);
    addView(a, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */