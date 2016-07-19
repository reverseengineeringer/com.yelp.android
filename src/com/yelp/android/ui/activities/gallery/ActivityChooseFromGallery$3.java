package com.yelp.android.ui.activities.gallery;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class ActivityChooseFromGallery$3
  implements ContributionButtonAdapter.a
{
  ActivityChooseFromGallery$3(ActivityChooseFromGallery paramActivityChooseFromGallery) {}
  
  public void a(final ContributionButtonAdapter.ContributionButton paramContributionButton)
  {
    if (ActivityChooseFromGallery.e(a) > 0)
    {
      ActivityChooseFromGallery.a(a, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          ActivityChooseFromGallery.a(a, paramContributionButton);
        }
      });
      return;
    }
    ActivityChooseFromGallery.a(a, paramContributionButton);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */