package com.yelp.android.ui.activities.camera;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import java.util.Collection;
import java.util.EnumSet;

class n
  implements View.OnClickListener
{
  n(TakePhoto paramTakePhoto) {}
  
  public void onClick(View paramView)
  {
    EnumSet localEnumSet = TakePhoto.a(a).e();
    localEnumSet.remove(CameraWrangler.FlashMode.TORCH);
    CameraWrangler.FlashMode localFlashMode = TakePhoto.a(a).g();
    CameraWrangler.FlashMode[] arrayOfFlashMode = CameraWrangler.FlashMode.values();
    for (int i = localFlashMode.ordinal() + 1 % arrayOfFlashMode.length;; i = (i + 1) % arrayOfFlashMode.length) {
      if (i != localFlashMode.ordinal())
      {
        if (localEnumSet.contains(arrayOfFlashMode[i]))
        {
          TakePhoto.a(a).f().a(arrayOfFlashMode[i]).a();
          ((ImageView)paramView).setImageLevel(arrayOfFlashMode[i].ordinal());
        }
      }
      else {
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */