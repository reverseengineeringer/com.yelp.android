package com.yelp.android.ui.activities.camera;

import android.view.View;
import android.view.View.OnClickListener;

class TakePhoto$2
  implements View.OnClickListener
{
  TakePhoto$2(TakePhoto paramTakePhoto) {}
  
  public void onClick(View paramView)
  {
    TakePhoto.a(a).c();
    a.startActivityForResult(ActivityVideoCapture.a(a, TakePhoto.b(a)), 1063);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.TakePhoto.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */