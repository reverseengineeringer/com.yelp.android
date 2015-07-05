package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import java.util.HashMap;

class bv
  implements View.OnClickListener
{
  bv(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void onClick(View paramView)
  {
    paramView = new HashMap();
    paramView.put(ImageInputHelper.ImageSource.FRONT_CAMERA, EventIri.SignUpPhotoTakePhoto);
    paramView.put(ImageInputHelper.ImageSource.GALLERY, EventIri.SignUpPhotoGallery);
    paramView.put(ImageInputHelper.ImageSource.FACEBOOK_PROFILE_PHOTO, EventIri.SignUpPhotoFacebook);
    paramView = ActivityCreateAccount.c(a).a(2131165338, paramView, a);
    paramView.a(ActivityCreateAccount.c(a).b(a));
    paramView.show(a.getSupportFragmentManager(), "photo_add_dialog");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */