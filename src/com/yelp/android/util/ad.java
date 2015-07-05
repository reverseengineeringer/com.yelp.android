package com.yelp.android.util;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Message;
import com.yelp.android.webimageview.ImageLoaderHandler;

class ad
  extends ImageLoaderHandler
{
  ac a;
  
  public ad(ac paramac)
  {
    super(null);
    a = paramac;
  }
  
  public void handleMessage(Message paramMessage)
  {
    if ((paramMessage != null) && (what == 0))
    {
      paramMessage = (Bitmap)paramMessage.getData().getParcelable("droidfu:extra_bitmap");
      BitmapDrawable localBitmapDrawable = new BitmapDrawable(paramMessage);
      Rect localRect = new Rect();
      top = 10;
      left = 0;
      right = ((int)(paramMessage.getWidth() * 0.25F));
      bottom = ((int)(paramMessage.getHeight() * 0.25F));
      localBitmapDrawable.setBounds(localRect);
      a.a(localBitmapDrawable);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */