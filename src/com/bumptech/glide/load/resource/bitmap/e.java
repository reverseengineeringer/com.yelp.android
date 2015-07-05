package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;

public class e
  extends d
{
  public e(com.bumptech.glide.load.engine.bitmap_recycle.e parame)
  {
    super(parame);
  }
  
  protected Bitmap a(com.bumptech.glide.load.engine.bitmap_recycle.e parame, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if (paramBitmap.getConfig() != null) {}
    for (Object localObject = paramBitmap.getConfig();; localObject = Bitmap.Config.ARGB_8888)
    {
      localObject = parame.a(paramInt1, paramInt2, (Bitmap.Config)localObject);
      paramBitmap = v.a((Bitmap)localObject, paramBitmap, paramInt1, paramInt2);
      if ((localObject != null) && (localObject != paramBitmap) && (!parame.a((Bitmap)localObject))) {
        ((Bitmap)localObject).recycle();
      }
      return paramBitmap;
    }
  }
  
  public String a()
  {
    return "CenterCrop.com.bumptech.glide.load.resource.bitmap";
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */