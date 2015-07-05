package com.yelp.android.ui.activities.gallery;

import android.os.AsyncTask;
import com.yelp.android.ui.activities.videotrim.ActivityVideoTrim;
import com.yelp.android.util.ffmpeg.FFmpeg;
import java.io.File;

class e
  extends AsyncTask<Void, Void, Void>
{
  e(ActivityChooseFromGallery paramActivityChooseFromGallery, String paramString) {}
  
  protected Void a(Void... paramVarArgs)
  {
    if (FFmpeg.a(new File(a))) {
      b.startActivityForResult(ActivityVideoTrim.a(b, a, ActivityChooseFromGallery.d(b)), 1059);
    }
    for (;;)
    {
      return null;
      ActivityChooseFromGallery.h(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.gallery.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */