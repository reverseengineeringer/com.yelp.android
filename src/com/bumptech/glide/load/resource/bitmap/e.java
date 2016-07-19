package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.yelp.android.x.c;

public class e
  extends d
{
  public e(c paramc)
  {
    super(paramc);
  }
  
  protected Bitmap a(c paramc, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if (paramBitmap.getConfig() != null) {}
    for (Object localObject = paramBitmap.getConfig();; localObject = Bitmap.Config.ARGB_8888)
    {
      localObject = paramc.a(paramInt1, paramInt2, (Bitmap.Config)localObject);
      paramBitmap = p.a((Bitmap)localObject, paramBitmap, paramInt1, paramInt2);
      if ((localObject != null) && (localObject != paramBitmap) && (!paramc.a((Bitmap)localObject))) {
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