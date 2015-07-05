package com.yelp.android.ui.map;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Message;
import android.widget.ImageView;
import com.yelp.android.webimageview.ImageLoaderHandler;
import java.lang.ref.WeakReference;

class o
  extends ImageLoaderHandler
{
  private WeakReference<p> a;
  
  public o(ImageView paramImageView, p paramp)
  {
    super(paramImageView);
    a = new WeakReference(paramp);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 0)
    {
      paramMessage = (Bitmap)paramMessage.getData().getParcelable("droidfu:extra_bitmap");
      p localp = (p)a.get();
      if (localp != null) {
        localp.a(paramMessage);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */