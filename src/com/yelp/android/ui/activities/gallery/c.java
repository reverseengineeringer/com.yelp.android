package com.yelp.android.ui.activities.gallery;

import android.content.Intent;
import android.net.Uri;
import com.yelp.android.appdata.Features;
import com.yelp.android.ui.activities.media.a;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.util.f;

class c
  implements n
{
  c(ActivityChooseFromGallery paramActivityChooseFromGallery) {}
  
  public void a(Uri paramUri, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (ActivityChooseFromGallery.f(a))
      {
        new a(a, ActivityChooseFromGallery.g(a)).execute(new Uri[] { paramUri });
        return;
      }
      Intent localIntent = new Intent();
      localIntent.setData(paramUri);
      f.a(localIntent, "extra_media_source", ImageInputHelper.ImageSource.GALLERY);
      a.setResult(-1, localIntent);
      a.finish();
      return;
    }
    Features.video_upload_from_gallery.isEnabledAsync(a, new d(this, paramUri));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */