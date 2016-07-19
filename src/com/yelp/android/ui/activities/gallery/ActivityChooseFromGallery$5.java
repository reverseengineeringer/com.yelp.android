package com.yelp.android.ui.activities.gallery;

import android.net.Uri;
import android.os.AsyncTask;
import com.yelp.android.ui.activities.videotrim.ActivityVideoTrim;
import com.yelp.android.util.ffmpeg.FFmpeg;
import java.io.File;

class ActivityChooseFromGallery$5
  extends AsyncTask<Void, Void, Void>
{
  ActivityChooseFromGallery$5(ActivityChooseFromGallery paramActivityChooseFromGallery, String paramString, Uri paramUri) {}
  
  protected Void a(Void... paramVarArgs)
  {
    if (FFmpeg.a(new File(a))) {
      if (ActivityChooseFromGallery.f(c) == 1) {
        c.startActivityForResult(ActivityVideoTrim.a(c, a, ActivityChooseFromGallery.i(c)), 1068);
      }
    }
    for (;;)
    {
      return null;
      ActivityChooseFromGallery.b(c, b);
    }
  }
  
  protected void a(Void paramVoid)
  {
    ActivityChooseFromGallery.j(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.ActivityChooseFromGallery.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */