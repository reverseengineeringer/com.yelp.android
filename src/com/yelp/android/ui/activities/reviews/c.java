package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.media.ActivityMediaContributionDelegate;

class c
  implements View.OnClickListener
{
  c(ActivityPhotoPrompt paramActivityPhotoPrompt) {}
  
  public void onClick(View paramView)
  {
    a.startActivityForResult(ActivityMediaContributionDelegate.b(a), 1053);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */