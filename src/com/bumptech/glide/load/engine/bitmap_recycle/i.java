package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;

public class i
  implements e
{
  private static final Bitmap.Config a = Bitmap.Config.ARGB_8888;
  private final m b;
  private final int c;
  private final k d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  
  public i(int paramInt)
  {
    this(paramInt, d());
  }
  
  i(int paramInt, m paramm)
  {
    c = paramInt;
    e = paramInt;
    b = paramm;
    d = new l(null);
  }
  
  private void b()
  {
    b(e);
  }
  
  private void b(int paramInt)
  {
    try
    {
      while (f > paramInt)
      {
        Bitmap localBitmap = b.a();
        d.b(localBitmap);
        f -= b.c(localBitmap);
        localBitmap.recycle();
        j += 1;
        if (Log.isLoggable("LruBitmapPool", 3)) {
          Log.d("LruBitmapPool", "Evicting bitmap=" + b.b(localBitmap));
        }
        c();
      }
    }
    finally {}
  }
  
  private void c()
  {
    if (Log.isLoggable("LruBitmapPool", 2)) {
      Log.v("LruBitmapPool", "Hits=" + g + " misses=" + h + " puts=" + i + " evictions=" + j + " currentSize=" + f + " maxSize=" + e + "\nStrategy=" + b);
    }
  }
  
  private static m d()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return new SizeStrategy();
    }
    return new a();
  }
  
  public Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    try
    {
      paramConfig = b(paramInt1, paramInt2, paramConfig);
      if (paramConfig != null) {
        paramConfig.eraseColor(0);
      }
      return paramConfig;
    }
    finally {}
  }
  
  public void a()
  {
    b(0);
  }
  
  @SuppressLint({"InlinedApi"})
  public void a(int paramInt)
  {
    if (paramInt >= 60) {
      a();
    }
    while (paramInt < 40) {
      return;
    }
    b(e / 2);
  }
  
  /* Error */
  public boolean a(Bitmap paramBitmap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 163	android/graphics/Bitmap:isMutable	()Z
    //   6: ifeq +20 -> 26
    //   9: aload_0
    //   10: getfield 46	com/bumptech/glide/load/engine/bitmap_recycle/i:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    //   13: aload_1
    //   14: invokeinterface 70 2 0
    //   19: aload_0
    //   20: getfield 44	com/bumptech/glide/load/engine/bitmap_recycle/i:e	I
    //   23: if_icmple +64 -> 87
    //   26: ldc 79
    //   28: iconst_2
    //   29: invokestatic 85	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   32: ifeq +49 -> 81
    //   35: ldc 79
    //   37: new 87	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   44: ldc -91
    //   46: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: aload_0
    //   50: getfield 46	com/bumptech/glide/load/engine/bitmap_recycle/i:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    //   53: aload_1
    //   54: invokeinterface 97 2 0
    //   59: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: ldc -89
    //   64: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_1
    //   68: invokevirtual 163	android/graphics/Bitmap:isMutable	()Z
    //   71: invokevirtual 170	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   74: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: invokestatic 135	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   80: pop
    //   81: iconst_0
    //   82: istore_3
    //   83: aload_0
    //   84: monitorexit
    //   85: iload_3
    //   86: ireturn
    //   87: aload_0
    //   88: getfield 46	com/bumptech/glide/load/engine/bitmap_recycle/i:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    //   91: aload_1
    //   92: invokeinterface 70 2 0
    //   97: istore_2
    //   98: aload_0
    //   99: getfield 46	com/bumptech/glide/load/engine/bitmap_recycle/i:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    //   102: aload_1
    //   103: invokeinterface 172 2 0
    //   108: aload_0
    //   109: getfield 53	com/bumptech/glide/load/engine/bitmap_recycle/i:d	Lcom/bumptech/glide/load/engine/bitmap_recycle/k;
    //   112: aload_1
    //   113: invokeinterface 173 2 0
    //   118: aload_0
    //   119: aload_0
    //   120: getfield 121	com/bumptech/glide/load/engine/bitmap_recycle/i:i	I
    //   123: iconst_1
    //   124: iadd
    //   125: putfield 121	com/bumptech/glide/load/engine/bitmap_recycle/i:i	I
    //   128: aload_0
    //   129: iload_2
    //   130: aload_0
    //   131: getfield 57	com/bumptech/glide/load/engine/bitmap_recycle/i:f	I
    //   134: iadd
    //   135: putfield 57	com/bumptech/glide/load/engine/bitmap_recycle/i:f	I
    //   138: ldc 79
    //   140: iconst_2
    //   141: invokestatic 85	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   144: ifeq +37 -> 181
    //   147: ldc 79
    //   149: new 87	java/lang/StringBuilder
    //   152: dup
    //   153: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   156: ldc -81
    //   158: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_0
    //   162: getfield 46	com/bumptech/glide/load/engine/bitmap_recycle/i:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    //   165: aload_1
    //   166: invokeinterface 97 2 0
    //   171: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   177: invokestatic 135	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   180: pop
    //   181: aload_0
    //   182: invokespecial 106	com/bumptech/glide/load/engine/bitmap_recycle/i:c	()V
    //   185: aload_0
    //   186: invokespecial 177	com/bumptech/glide/load/engine/bitmap_recycle/i:b	()V
    //   189: iconst_1
    //   190: istore_3
    //   191: goto -108 -> 83
    //   194: astore_1
    //   195: aload_0
    //   196: monitorexit
    //   197: aload_1
    //   198: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	this	i
    //   0	199	1	paramBitmap	Bitmap
    //   97	38	2	k	int
    //   82	109	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	26	194	finally
    //   26	81	194	finally
    //   87	181	194	finally
    //   181	189	194	finally
  }
  
  /* Error */
  @android.annotation.TargetApi(12)
  public Bitmap b(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 46	com/bumptech/glide/load/engine/bitmap_recycle/i:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    //   6: astore 5
    //   8: aload_3
    //   9: ifnull +133 -> 142
    //   12: aload_3
    //   13: astore 4
    //   15: aload 5
    //   17: iload_1
    //   18: iload_2
    //   19: aload 4
    //   21: invokeinterface 181 4 0
    //   26: astore 4
    //   28: aload 4
    //   30: ifnonnull +120 -> 150
    //   33: ldc 79
    //   35: iconst_3
    //   36: invokestatic 85	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   39: ifeq +39 -> 78
    //   42: ldc 79
    //   44: new 87	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   51: ldc -73
    //   53: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_0
    //   57: getfield 46	com/bumptech/glide/load/engine/bitmap_recycle/i:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    //   60: iload_1
    //   61: iload_2
    //   62: aload_3
    //   63: invokeinterface 186 4 0
    //   68: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokestatic 104	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   77: pop
    //   78: aload_0
    //   79: aload_0
    //   80: getfield 117	com/bumptech/glide/load/engine/bitmap_recycle/i:h	I
    //   83: iconst_1
    //   84: iadd
    //   85: putfield 117	com/bumptech/glide/load/engine/bitmap_recycle/i:h	I
    //   88: ldc 79
    //   90: iconst_2
    //   91: invokestatic 85	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   94: ifeq +39 -> 133
    //   97: ldc 79
    //   99: new 87	java/lang/StringBuilder
    //   102: dup
    //   103: invokespecial 88	java/lang/StringBuilder:<init>	()V
    //   106: ldc -68
    //   108: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   111: aload_0
    //   112: getfield 46	com/bumptech/glide/load/engine/bitmap_recycle/i:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    //   115: iload_1
    //   116: iload_2
    //   117: aload_3
    //   118: invokeinterface 186 4 0
    //   123: invokevirtual 94	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokestatic 135	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   132: pop
    //   133: aload_0
    //   134: invokespecial 106	com/bumptech/glide/load/engine/bitmap_recycle/i:c	()V
    //   137: aload_0
    //   138: monitorexit
    //   139: aload 4
    //   141: areturn
    //   142: getstatic 29	com/bumptech/glide/load/engine/bitmap_recycle/i:a	Landroid/graphics/Bitmap$Config;
    //   145: astore 4
    //   147: goto -132 -> 15
    //   150: aload_0
    //   151: aload_0
    //   152: getfield 110	com/bumptech/glide/load/engine/bitmap_recycle/i:g	I
    //   155: iconst_1
    //   156: iadd
    //   157: putfield 110	com/bumptech/glide/load/engine/bitmap_recycle/i:g	I
    //   160: aload_0
    //   161: aload_0
    //   162: getfield 57	com/bumptech/glide/load/engine/bitmap_recycle/i:f	I
    //   165: aload_0
    //   166: getfield 46	com/bumptech/glide/load/engine/bitmap_recycle/i:b	Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    //   169: aload 4
    //   171: invokeinterface 70 2 0
    //   176: isub
    //   177: putfield 57	com/bumptech/glide/load/engine/bitmap_recycle/i:f	I
    //   180: aload_0
    //   181: getfield 53	com/bumptech/glide/load/engine/bitmap_recycle/i:d	Lcom/bumptech/glide/load/engine/bitmap_recycle/k;
    //   184: aload 4
    //   186: invokeinterface 67 2 0
    //   191: getstatic 140	android/os/Build$VERSION:SDK_INT	I
    //   194: bipush 12
    //   196: if_icmplt -108 -> 88
    //   199: aload 4
    //   201: iconst_1
    //   202: invokevirtual 192	android/graphics/Bitmap:setHasAlpha	(Z)V
    //   205: goto -117 -> 88
    //   208: astore_3
    //   209: aload_0
    //   210: monitorexit
    //   211: aload_3
    //   212: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	213	0	this	i
    //   0	213	1	paramInt1	int
    //   0	213	2	paramInt2	int
    //   0	213	3	paramConfig	Bitmap.Config
    //   13	187	4	localObject	Object
    //   6	10	5	localm	m
    // Exception table:
    //   from	to	target	type
    //   2	8	208	finally
    //   15	28	208	finally
    //   33	78	208	finally
    //   78	88	208	finally
    //   88	133	208	finally
    //   133	137	208	finally
    //   142	147	208	finally
    //   150	205	208	finally
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.bitmap_recycle.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */