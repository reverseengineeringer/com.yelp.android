package com.yelp.android.ui.activities.camera;

import android.widget.ImageView;
import com.yelp.android.appdata.r;
import com.yelp.android.ui.activities.media.d;
import com.yelp.android.ui.util.MediaStoreUtil.MediaType;

class u
  implements r
{
  u(VideoCaptureFragment paramVideoCaptureFragment, ImageView paramImageView) {}
  
  public void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      return;
    }
    VideoCaptureFragment.a(b, new d(b.getActivity(), a, MediaStoreUtil.MediaType.VIDEO));
    VideoCaptureFragment.g(b).execute(new Void[0]);
    a.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */