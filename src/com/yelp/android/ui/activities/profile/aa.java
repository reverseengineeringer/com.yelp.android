package com.yelp.android.ui.activities.profile;

import android.app.Activity;
import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.photoviewer.UserMediaViewer;
import com.yelp.android.ui.util.ImageInputHelper;

class aa
  extends d
{
  aa(UserProfileView paramUserProfileView, EventIri paramEventIri, User paramUser)
  {
    super(paramEventIri);
  }
  
  public void a(View paramView)
  {
    if (a.getUserPhotoCount() > 0)
    {
      paramView = UserMediaViewer.b(b.getContext(), a.getPhotos(), 0);
      ((Activity)b.getContext()).startActivityForResult(paramView, 1028);
      return;
    }
    paramView = new ImageInputHelper(AppData.b().h(), 1037);
    AppData.a(ViewIri.UserImageUpload);
    paramView.a((Activity)b.getContext());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */