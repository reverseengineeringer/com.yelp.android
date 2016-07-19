package com.yelp.android.ui.activities.profile;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.ImageInputHelper;

class MoreAboutUser$1
  implements View.OnClickListener
{
  MoreAboutUser$1(MoreAboutUser paramMoreAboutUser, ImageInputHelper paramImageInputHelper) {}
  
  public void onClick(View paramView)
  {
    AppData.a(ViewIri.UserImageUpload);
    a.a(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.MoreAboutUser.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */