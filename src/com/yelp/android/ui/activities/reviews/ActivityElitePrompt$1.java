package com.yelp.android.ui.activities.reviews;

import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.widget.LinearLayout.LayoutParams;
import com.yelp.android.ui.util.ar;

class ActivityElitePrompt$1
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ActivityElitePrompt$1(ActivityElitePrompt paramActivityElitePrompt, View paramView) {}
  
  public void onGlobalLayout()
  {
    View localView1 = b.findViewById(2131689854);
    View localView2 = b.findViewById(2131689853);
    int i = b.getWindowManager().getDefaultDisplay().getHeight();
    if (i < localView1.getMeasuredHeight() + ActivityElitePrompt.a(b, localView2))
    {
      b.findViewById(2131689851).setLayoutParams(new LinearLayout.LayoutParams(-1, a.getMeasuredHeight()));
      localView2.setVisibility(8);
      localView1.setVisibility(0);
    }
    for (;;)
    {
      b.findViewById(2131689849).setPadding(0, 0, 0, i - ActivityElitePrompt.a(b, a) - a.getMeasuredHeight() * 3 / 4);
      ar.a(a, this);
      return;
      localView2.setVisibility(0);
      localView1.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityElitePrompt.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */