package com.yelp.android.ui.activities.camera;

import android.content.res.Resources;
import com.yelp.android.ui.widgets.PieProgress;

class w
  implements Runnable
{
  w(VideoCaptureFragment paramVideoCaptureFragment) {}
  
  public void run()
  {
    VideoCaptureFragment.k(a).a();
    if (VideoCaptureFragment.k(a).getProgress() == 25) {
      VideoCaptureFragment.k(a).setProgressColor(a.getResources().getColor(2131361931));
    }
    if (VideoCaptureFragment.k(a).getProgress() < VideoCaptureFragment.k(a).getMax())
    {
      VideoCaptureFragment.k(a).postDelayed(this, 120L);
      return;
    }
    VideoCaptureFragment.e(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */