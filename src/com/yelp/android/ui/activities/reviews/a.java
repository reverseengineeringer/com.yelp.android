package com.yelp.android.ui.activities.reviews;

import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.widget.LinearLayout.LayoutParams;
import com.yelp.android.ui.util.cp;

class a
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  a(ActivityElitePrompt paramActivityElitePrompt, View paramView) {}
  
  public void onGlobalLayout()
  {
    View localView1 = b.findViewById(2131493185);
    View localView2 = b.findViewById(2131493184);
    int i = b.getWindowManager().getDefaultDisplay().getHeight();
    if (i < localView1.getMeasuredHeight() + ActivityElitePrompt.a(b, localView2))
    {
      b.findViewById(2131493182).setLayoutParams(new LinearLayout.LayoutParams(-1, a.getMeasuredHeight()));
      localView2.setVisibility(8);
      localView1.setVisibility(0);
    }
    for (;;)
    {
      b.findViewById(2131493180).setPadding(0, 0, 0, i - ActivityElitePrompt.a(b, a) - a.getMeasuredHeight() * 3 / 4);
      cp.a(a, this);
      return;
      localView2.setVisibility(0);
      localView1.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */