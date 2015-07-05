package com.yelp.android.ui.activities.camera;

import android.view.View;
import android.view.View.OnClickListener;

class m
  implements View.OnClickListener
{
  m(TakePhoto paramTakePhoto) {}
  
  public void onClick(View paramView)
  {
    TakePhoto.a(a).c();
    a.startActivityForResult(ActivityVideoCapture.a(a, TakePhoto.b(a)), 1054);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */