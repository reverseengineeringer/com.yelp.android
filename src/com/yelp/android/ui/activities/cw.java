package com.yelp.android.ui.activities;

import android.widget.ImageView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.j;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.util.cu;
import com.yelp.android.util.RemoteImageExceptionCallback;

class cw
  implements cu<ImageView>
{
  cw(cv paramcv, Media paramMedia) {}
  
  public void a(ImageView paramImageView, int paramInt1, int paramInt2)
  {
    String str2 = a.getThumbnailUrl();
    String str1 = str2;
    if (a.isMediaType(Media.MediaType.PHOTO))
    {
      str1 = str2;
      if (paramInt1 > 200) {
        str1 = ((Photo)a).getLargeSquareUrl();
      }
    }
    cv.a(b).a(str1).a(RemoteImageExceptionCallback.INSTANCE).a(2130838259).c().a(paramInt1, paramInt2).a(paramImageView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */