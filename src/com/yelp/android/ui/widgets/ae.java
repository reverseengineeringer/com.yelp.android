package com.yelp.android.ui.widgets;

import android.widget.FrameLayout;
import com.yelp.android.ui.util.cw;

class ae
  implements Runnable
{
  ae(ReviewPagerFragment paramReviewPagerFragment) {}
  
  public void run()
  {
    if (ReviewPagerFragment.d(a).getVisibility() == 0) {
      cw.b(ReviewPagerFragment.d(a), 5000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */