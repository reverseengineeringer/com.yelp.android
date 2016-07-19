package com.yelp.android.util;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Message;
import com.yelp.android.webimageview.ImageLoaderHandler;

class StringUtils$a$a
  extends ImageLoaderHandler
{
  StringUtils.a a;
  
  public StringUtils$a$a(StringUtils.a parama)
  {
    super(null);
    a = parama;
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
 * Qualified Name:     com.yelp.android.util.StringUtils.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */