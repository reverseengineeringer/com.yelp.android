package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.yelp.android.ui.util.cp;

class f
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  f(ActivityPhotoPrompt paramActivityPhotoPrompt, View paramView) {}
  
  public void onGlobalLayout()
  {
    a.setPadding(0, 0, 0, cp.b(b.getApplicationContext()) / 8);
    cp.a(a, this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */