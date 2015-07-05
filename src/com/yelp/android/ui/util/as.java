package com.yelp.android.ui.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.widget.ImageView;
import java.lang.ref.SoftReference;

@SuppressLint({"NewApi"})
public class as
{
  private int[] a;
  private int b;
  private boolean c;
  private boolean d;
  private SoftReference<ImageView> e;
  private Handler f;
  private int g;
  private Bitmap h = null;
  private BitmapFactory.Options i;
  private Context j;
  
  public as(Context paramContext, ImageView paramImageView, int[] paramArrayOfInt, int paramInt)
  {
    j = paramContext;
    f = new Handler();
    a = paramArrayOfInt;
    b = -1;
    e = new SoftReference(paramImageView);
    c = false;
    d = false;
    g = (1000 / paramInt);
    paramImageView.setImageResource(a[0]);
    paramContext = ((BitmapDrawable)paramImageView.getDrawable()).getBitmap();
    h = Bitmap.createBitmap(paramContext.getWidth(), paramContext.getHeight(), paramContext.getConfig());
    i = new BitmapFactory.Options();
    i.inBitmap = h;
    i.inMutable = true;
    i.inSampleSize = 1;
  }
  
  private int c()
  {
    b += 1;
    if (b >= a.length) {
      b = 0;
    }
    return a[b];
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 53	com/yelp/android/ui/util/as:c	Z
    //   7: aload_0
    //   8: getfield 55	com/yelp/android/ui/util/as:d	Z
    //   11: istore_1
    //   12: iload_1
    //   13: ifeq +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: new 118	com/yelp/android/ui/util/at
    //   22: dup
    //   23: aload_0
    //   24: invokespecial 121	com/yelp/android/ui/util/at:<init>	(Lcom/yelp/android/ui/util/as;)V
    //   27: astore_2
    //   28: aload_0
    //   29: iconst_1
    //   30: putfield 55	com/yelp/android/ui/util/as:d	Z
    //   33: aload_0
    //   34: getfield 40	com/yelp/android/ui/util/as:f	Landroid/os/Handler;
    //   37: aload_2
    //   38: invokevirtual 125	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   41: pop
    //   42: goto -26 -> 16
    //   45: astore_2
    //   46: aload_0
    //   47: monitorexit
    //   48: aload_2
    //   49: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	this	as
    //   11	2	1	bool	boolean
    //   27	11	2	localat	at
    //   45	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	12	45	finally
    //   19	42	45	finally
  }
  
  public void a(int paramInt)
  {
    if ((c) && (!d) && (paramInt == 0)) {
      a();
    }
  }
  
  public void b()
  {
    try
    {
      c = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */