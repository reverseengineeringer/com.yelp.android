package com.yelp.android.ui.activities.photoviewer;

import android.graphics.drawable.BitmapDrawable;
import com.yelp.android.ui.util.ag;
import com.yelp.android.webimageview.WebImageView;
import com.yelp.android.webimageview.WebImageView.ImageLoadedCallback;

class ao
  implements WebImageView.ImageLoadedCallback
{
  ao(VideoPageFragment paramVideoPageFragment) {}
  
  public void imageLoaded(WebImageView paramWebImageView)
  {
    if (VideoPageFragment.a(a).getDrawable() != null) {
      new ag().b(((BitmapDrawable)VideoPageFragment.a(a).getDrawable()).getBitmap(), VideoPageFragment.a(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */