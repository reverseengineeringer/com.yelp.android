package com.yelp.android.ui.activities.photoviewer;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;

class z
  implements CompoundButton.OnCheckedChangeListener
{
  z(PhotoChrome paramPhotoChrome) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    paramCompoundButton = AppData.b().m();
    if (!paramCompoundButton.e())
    {
      if (paramBoolean) {
        if (!paramCompoundButton.c()) {
          break label42;
        }
      }
      label42:
      for (int i = 2131166776;; i = 2131166044)
      {
        PhotoChrome.b(a).a(i);
        return;
      }
    }
    a.setLikeButtonChecked(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */