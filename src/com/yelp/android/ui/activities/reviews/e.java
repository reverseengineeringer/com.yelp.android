package com.yelp.android.ui.activities.reviews;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class e
  implements DialogInterface.OnClickListener
{
  e(ActivityPhotoPrompt paramActivityPhotoPrompt) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -1) {
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */