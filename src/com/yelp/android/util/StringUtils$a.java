package com.yelp.android.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import com.yelp.android.webimageview.ImageLoaderHandler;

final class StringUtils$a
  extends Drawable
{
  private Drawable a;
  
  public void a(Drawable paramDrawable)
  {
    a = paramDrawable;
    setBounds(a.copyBounds());
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas)
  {
    a.draw(paramCanvas);
  }
  
  public int getOpacity()
  {
    return a.getOpacity();
  }
  
  public void setAlpha(int paramInt)
  {
    a.setAlpha(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    a.setColorFilter(paramColorFilter);
  }
  
  private static class a
    extends ImageLoaderHandler
  {
    StringUtils.a a;
    
    public a(StringUtils.a parama)
    {
      super();
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
}

/* Location:
 * Qualified Name:     com.yelp.android.util.StringUtils.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */