package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.yelp.android.ui.util.ar;

class ActivityMenuWebView$2
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ActivityMenuWebView$2(ActivityMenuWebView paramActivityMenuWebView) {}
  
  public void onGlobalLayout()
  {
    View localView = a.findViewById(2131689892);
    ar.a(localView, this);
    a.findViewById(2131689890).setPadding(0, 0, 0, localView.getHeight());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ActivityMenuWebView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */