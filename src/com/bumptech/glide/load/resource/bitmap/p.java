package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.Log;
import com.yelp.android.x.c;

public final class p
{
  public static int a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 0;
    case 5: 
    case 6: 
      return 90;
    case 3: 
    case 4: 
      return 180;
    }
    return 270;
  }
  
  private static Bitmap.Config a(Bitmap paramBitmap)
  {
    if (paramBitmap.getConfig() != null) {
      return paramBitmap.getConfig();
    }
    return Bitmap.Config.ARGB_8888;
  }
  
  public static Bitmap a(Bitmap paramBitmap1, Bitmap paramBitmap2, int paramInt1, int paramInt2)
  {
    float f1 = 0.0F;
    if (paramBitmap2 == null) {
      localObject = null;
    }
    do
    {
      return (Bitmap)localObject;
      if (paramBitmap2.getWidth() != paramInt1) {
        break;
      }
      localObject = paramBitmap2;
    } while (paramBitmap2.getHeight() == paramInt2);
    Object localObject = new Matrix();
    float f3;
    float f2;
    if (paramBitmap2.getWidth() * paramInt2 > paramBitmap2.getHeight() * paramInt1)
    {
      f3 = paramInt2 / paramBitmap2.getHeight();
      f2 = (paramInt1 - paramBitmap2.getWidth() * f3) * 0.5F;
      ((Matrix)localObject).setScale(f3, f3);
      ((Matrix)localObject).postTranslate((int)(f2 + 0.5F), (int)(f1 + 0.5F));
      if (paramBitmap1 == null) {
        break label185;
      }
    }
    for (;;)
    {
      a(paramBitmap2, paramBitmap1);
      new Canvas(paramBitmap1).drawBitmap(paramBitmap2, (Matrix)localObject, new Paint(6));
      return paramBitmap1;
      f3 = paramInt1 / paramBitmap2.getWidth();
      f1 = paramInt2;
      float f4 = paramBitmap2.getHeight();
      f2 = 0.0F;
      f1 = (f1 - f4 * f3) * 0.5F;
      break;
      label185:
      paramBitmap1 = Bitmap.createBitmap(paramInt1, paramInt2, a(paramBitmap2));
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap, c paramc, int paramInt)
  {
    Matrix localMatrix = new Matrix();
    a(paramInt, localMatrix);
    if (localMatrix.isIdentity()) {
      return paramBitmap;
    }
    RectF localRectF = new RectF(0.0F, 0.0F, paramBitmap.getWidth(), paramBitmap.getHeight());
    localMatrix.mapRect(localRectF);
    paramInt = Math.round(localRectF.width());
    int i = Math.round(localRectF.height());
    Bitmap.Config localConfig = a(paramBitmap);
    Bitmap localBitmap = paramc.a(paramInt, i, localConfig);
    paramc = localBitmap;
    if (localBitmap == null) {
      paramc = Bitmap.createBitmap(paramInt, i, localConfig);
    }
    localMatrix.postTranslate(-left, -top);
    new Canvas(paramc).drawBitmap(paramBitmap, localMatrix, new Paint(6));
    return paramc;
  }
  
  public static Bitmap a(Bitmap paramBitmap, c paramc, int paramInt1, int paramInt2)
  {
    if ((paramBitmap.getWidth() == paramInt1) && (paramBitmap.getHeight() == paramInt2)) {
      if (Log.isLoggable("TransformationUtils", 2)) {
        Log.v("TransformationUtils", "requested target size matches input, returning input");
      }
    }
    float f;
    int i;
    int j;
    do
    {
      return paramBitmap;
      f = Math.min(paramInt1 / paramBitmap.getWidth(), paramInt2 / paramBitmap.getHeight());
      i = (int)(paramBitmap.getWidth() * f);
      j = (int)(paramBitmap.getHeight() * f);
      if ((paramBitmap.getWidth() != i) || (paramBitmap.getHeight() != j)) {
        break;
      }
    } while (!Log.isLoggable("TransformationUtils", 2));
    Log.v("TransformationUtils", "adjusted target size matches input, returning input");
    return paramBitmap;
    Object localObject2 = a(paramBitmap);
    Object localObject1 = paramc.a(i, j, (Bitmap.Config)localObject2);
    paramc = (c)localObject1;
    if (localObject1 == null) {
      paramc = Bitmap.createBitmap(i, j, (Bitmap.Config)localObject2);
    }
    a(paramBitmap, paramc);
    if (Log.isLoggable("TransformationUtils", 2))
    {
      Log.v("TransformationUtils", "request: " + paramInt1 + "x" + paramInt2);
      Log.v("TransformationUtils", "toFit:   " + paramBitmap.getWidth() + "x" + paramBitmap.getHeight());
      Log.v("TransformationUtils", "toReuse: " + paramc.getWidth() + "x" + paramc.getHeight());
      Log.v("TransformationUtils", "minPct:   " + f);
    }
    localObject1 = new Canvas(paramc);
    localObject2 = new Matrix();
    ((Matrix)localObject2).setScale(f, f);
    ((Canvas)localObject1).drawBitmap(paramBitmap, (Matrix)localObject2, new Paint(6));
    return paramc;
  }
  
  static void a(int paramInt, Matrix paramMatrix)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      paramMatrix.setScale(-1.0F, 1.0F);
      return;
    case 3: 
      paramMatrix.setRotate(180.0F);
      return;
    case 4: 
      paramMatrix.setRotate(180.0F);
      paramMatrix.postScale(-1.0F, 1.0F);
      return;
    case 5: 
      paramMatrix.setRotate(90.0F);
      paramMatrix.postScale(-1.0F, 1.0F);
      return;
    case 6: 
      paramMatrix.setRotate(90.0F);
      return;
    case 7: 
      paramMatrix.setRotate(-90.0F);
      paramMatrix.postScale(-1.0F, 1.0F);
      return;
    }
    paramMatrix.setRotate(-90.0F);
  }
  
  @TargetApi(12)
  public static void a(Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    if ((Build.VERSION.SDK_INT >= 12) && (paramBitmap2 != null)) {
      paramBitmap2.setHasAlpha(paramBitmap1.hasAlpha());
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */