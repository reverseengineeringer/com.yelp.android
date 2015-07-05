package com.yelp.android.ui.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.widget.ImageView;
import com.yelp.android.util.YelpLog;
import java.lang.ref.SoftReference;

class at
  implements Runnable
{
  at(as paramas) {}
  
  public void run()
  {
    ImageView localImageView = (ImageView)as.a(a).get();
    if ((!as.b(a)) || (localImageView == null))
    {
      as.a(a, false);
      return;
    }
    if (localImageView.isShown())
    {
      int i = as.c(a);
      if (as.d(a) != null) {}
      for (;;)
      {
        try
        {
          Bitmap localBitmap = BitmapFactory.decodeResource(localImageView.getResources(), i, as.e(a));
          if (localBitmap != null)
          {
            localImageView.setImageBitmap(localBitmap);
            as.h(a).postDelayed(this, as.g(a));
            return;
          }
        }
        catch (Exception localException)
        {
          YelpLog.e(as.f(a), "Exception creating bitmap for animation", localException);
          Object localObject = null;
          continue;
          localImageView.setImageResource(i);
          as.d(a).recycle();
          as.a(a, null);
          continue;
        }
        localImageView.setImageResource(i);
      }
    }
    as.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */