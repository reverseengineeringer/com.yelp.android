package com.yelp.android.ui.activities.gallery;

import com.yelp.android.ui.activities.camera.ActivityVideoCapture;
import com.yelp.android.ui.activities.camera.TakePhoto;

class b
  implements i
{
  b(ActivityChooseFromGallery paramActivityChooseFromGallery) {}
  
  public void a(ContributionButtonAdapter.ContributionButton paramContributionButton)
  {
    if (ContributionButtonAdapter.ContributionButton.TAKE_PHOTO == paramContributionButton)
    {
      paramContributionButton = TakePhoto.a(a, ActivityChooseFromGallery.d(a), true, true, ActivityChooseFromGallery.e(a));
      a.startActivityForResult(paramContributionButton, 1053);
    }
    while (ContributionButtonAdapter.ContributionButton.TAKE_VIDEO != paramContributionButton) {
      return;
    }
    paramContributionButton = ActivityVideoCapture.a(a, ActivityChooseFromGallery.d(a), true);
    a.startActivityForResult(paramContributionButton, 1054);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */