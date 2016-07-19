package com.yelp.android.ui.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.widget.ImageView;
import com.yelp.android.util.YelpLog;
import java.lang.ref.SoftReference;

class v$1
  implements Runnable
{
  v$1(v paramv) {}
  
  public void run()
  {
    ImageView localImageView = (ImageView)v.a(a).get();
    if ((!v.b(a)) || (localImageView == null))
    {
      v.a(a, false);
      return;
    }
    if (localImageView.isShown())
    {
      int i = v.c(a);
      if (v.d(a) != null) {}
      for (;;)
      {
        try
        {
          Bitmap localBitmap = BitmapFactory.decodeResource(localImageView.getResources(), i, v.e(a));
          if (localBitmap != null)
          {
            localImageView.setImageBitmap(localBitmap);
            v.h(a).postDelayed(this, v.g(a));
            return;
          }
        }
        catch (Exception localException)
        {
          YelpLog.e(v.f(a), "Exception creating bitmap for animation", localException);
          Object localObject = null;
          continue;
          localImageView.setImageResource(i);
          v.d(a).recycle();
          v.a(a, null);
          continue;
        }
        localImageView.setImageResource(i);
      }
    }
    v.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.v.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */