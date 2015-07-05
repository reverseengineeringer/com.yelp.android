package com.yelp.android.ui.activities.reviews;

import android.graphics.Rect;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.EditText;
import android.widget.LinearLayout;

class al
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  al(ReviewComposeFragment paramReviewComposeFragment) {}
  
  public void onGlobalLayout()
  {
    Rect localRect = new Rect();
    ReviewComposeFragment.h(a).getWindowVisibleDisplayFrame(localRect);
    int i = ReviewComposeFragment.i(a) - localRect.height();
    if (((ReviewComposeFragment.j(a) == -1) || (i < ReviewComposeFragment.j(a))) && (i > 0))
    {
      ReviewComposeFragment.b(a, false);
      ReviewComposeFragment.a(a, i);
    }
    if ((!ReviewComposeFragment.k(a)) && (i > 400))
    {
      ReviewComposeFragment.b(a, true);
      ReviewComposeFragment.c(a, true);
      ReviewComposeFragment.b(a, ReviewComposeFragment.b(a).getHeight());
      ReviewComposeFragment.g(a);
      ReviewComposeFragment.a(a, localRect);
    }
    for (;;)
    {
      ReviewComposeFragment.c(a, i);
      return;
      if ((i > 400) && (ReviewComposeFragment.a(a)) && (ReviewComposeFragment.l(a) != i))
      {
        ReviewComposeFragment.a(a, localRect);
      }
      else if ((i == ReviewComposeFragment.j(a)) && (ReviewComposeFragment.a(a)))
      {
        ReviewComposeFragment.c(a, false);
        ReviewComposeFragment.b(a, false);
        ReviewComposeFragment.b(a).setHeight(ReviewComposeFragment.m(a));
        ReviewComposeFragment.g(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */