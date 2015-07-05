package com.yelp.android.ui.activities.gallery;

import android.net.Uri;
import com.yelp.android.appdata.r;
import com.yelp.android.util.l;

class d
  implements r
{
  d(c paramc, Uri paramUri) {}
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      ActivityChooseFromGallery.b(b.a, l.a(a, b.a.getContentResolver()));
      return;
    }
    ActivityChooseFromGallery.h(b.a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */