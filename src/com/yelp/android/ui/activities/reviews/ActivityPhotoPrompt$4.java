package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.yelp.android.ui.util.ar;

class ActivityPhotoPrompt$4
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ActivityPhotoPrompt$4(ActivityPhotoPrompt paramActivityPhotoPrompt, View paramView) {}
  
  public void onGlobalLayout()
  {
    a.setPadding(0, 0, 0, ar.b(b.getApplicationContext()) / 8);
    ar.a(a, this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityPhotoPrompt.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */