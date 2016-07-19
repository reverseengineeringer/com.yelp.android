package com.yelp.android.ui.activities.gallery;

import android.content.Intent;
import android.net.Uri;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.Features.a;
import com.yelp.android.ui.util.ImageInputHelper.ImageSource;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.d;
import com.yelp.android.util.e;
import java.util.ArrayList;

class ActivityChooseFromGallery$4
  implements a.a
{
  ActivityChooseFromGallery$4(ActivityChooseFromGallery paramActivityChooseFromGallery) {}
  
  public void a(final Uri paramUri, boolean paramBoolean)
  {
    if (ActivityChooseFromGallery.f(a) == 1) {
      if (paramBoolean)
      {
        Intent localIntent = new Intent();
        localIntent.setData(paramUri);
        localIntent.putExtra("extra_file_path", e.a(paramUri, a.getContentResolver()));
        d.a(localIntent, "extra_media_source", ImageInputHelper.ImageSource.GALLERY);
        a.setResult(-1, localIntent);
        a.finish();
      }
    }
    do
    {
      return;
      Features.video_upload_from_gallery.isEnabledAsync(a, new Features.a()
      {
        public void a(boolean paramAnonymousBoolean)
        {
          if (paramAnonymousBoolean)
          {
            ActivityChooseFromGallery.a(a, paramUri);
            return;
          }
          ActivityChooseFromGallery.b(a, paramUri);
        }
      });
      return;
      if ((ActivityChooseFromGallery.e(a) >= ActivityChooseFromGallery.f(a)) && (!ActivityChooseFromGallery.g(a).contains(paramUri)) && (!ActivityChooseFromGallery.h(a).contains(paramUri)))
      {
        as.a(String.format(a.getString(2131166131), new Object[] { Integer.valueOf(ActivityChooseFromGallery.f(a)) }), 0);
        return;
      }
    } while (ActivityChooseFromGallery.a(a, paramUri, paramBoolean));
    ActivityChooseFromGallery.b(a, paramUri, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */