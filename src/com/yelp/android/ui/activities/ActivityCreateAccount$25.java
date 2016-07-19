package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import java.util.HashMap;

class ActivityCreateAccount$25
  implements View.OnClickListener
{
  ActivityCreateAccount$25(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onClick(View paramView)
  {
    paramView = new HashMap();
    paramView.put(ImageInputHelper.ImageSource.FRONT_CAMERA, EventIri.SignUpPhotoTakePhoto);
    paramView.put(ImageInputHelper.ImageSource.GALLERY, EventIri.SignUpPhotoGallery);
    paramView.put(ImageInputHelper.ImageSource.FACEBOOK_PROFILE_PHOTO, EventIri.SignUpPhotoFacebook);
    paramView = ActivityCreateAccount.b(a).a(2131165464, paramView, a);
    paramView.a(ActivityCreateAccount.b(a).b(a));
    paramView.show(a.getSupportFragmentManager(), "photo_add_dialog");
    ActivityCreateAccount.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.25
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */