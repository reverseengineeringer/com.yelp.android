package com.yelp.android.x;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public class f
  implements c
{
  private static final Bitmap.Config a = Bitmap.Config.ARGB_8888;
  private final g b;
  private final Set<Bitmap.Config> c;
  private final int d;
  private final a e;
  private int f;
  private int g;
  private int h;
  private int i;
  private int j;
  private int k;
  
  public f(int paramInt)
  {
    this(paramInt, e(), f());
  }
  
  f(int paramInt, g paramg, Set<Bitmap.Config> paramSet)
  {
    d = paramInt;
    f = paramInt;
    b = paramg;
    c = paramSet;
    e = new b(null);
  }
  
  private void b()
  {
    b(f);
  }
  
  /* Error */
  private void b(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 71	com/yelp/android/x/f:g	I
    //   6: iload_1
    //   7: if_icmple +43 -> 50
    //   10: aload_0
    //   11: getfield 58	com/yelp/android/x/f:b	Lcom/yelp/android/x/g;
    //   14: invokeinterface 76 1 0
    //   19: astore_2
    //   20: aload_2
    //   21: ifnonnull +32 -> 53
    //   24: ldc 78
    //   26: iconst_5
    //   27: invokestatic 84	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   30: ifeq +15 -> 45
    //   33: ldc 78
    //   35: ldc 86
    //   37: invokestatic 90	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   40: pop
    //   41: aload_0
    //   42: invokespecial 92	com/yelp/android/x/f:d	()V
    //   45: aload_0
    //   46: iconst_0
    //   47: putfield 71	com/yelp/android/x/f:g	I
    //   50: aload_0
    //   51: monitorexit
    //   52: return
    //   53: aload_0
    //   54: getfield 65	com/yelp/android/x/f:e	Lcom/yelp/android/x/f$a;
    //   57: aload_2
    //   58: invokeinterface 95 2 0
    //   63: aload_0
    //   64: aload_0
    //   65: getfield 71	com/yelp/android/x/f:g	I
    //   68: aload_0
    //   69: getfield 58	com/yelp/android/x/f:b	Lcom/yelp/android/x/g;
    //   72: aload_2
    //   73: invokeinterface 98 2 0
    //   78: isub
    //   79: putfield 71	com/yelp/android/x/f:g	I
    //   82: aload_2
    //   83: invokevirtual 103	android/graphics/Bitmap:recycle	()V
    //   86: aload_0
    //   87: aload_0
    //   88: getfield 105	com/yelp/android/x/f:k	I
    //   91: iconst_1
    //   92: iadd
    //   93: putfield 105	com/yelp/android/x/f:k	I
    //   96: ldc 78
    //   98: iconst_3
    //   99: invokestatic 84	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   102: ifeq +37 -> 139
    //   105: ldc 78
    //   107: new 107	java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   114: ldc 110
    //   116: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload_0
    //   120: getfield 58	com/yelp/android/x/f:b	Lcom/yelp/android/x/g;
    //   123: aload_2
    //   124: invokeinterface 117 2 0
    //   129: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: invokestatic 123	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   138: pop
    //   139: aload_0
    //   140: invokespecial 125	com/yelp/android/x/f:c	()V
    //   143: goto -141 -> 2
    //   146: astore_2
    //   147: aload_0
    //   148: monitorexit
    //   149: aload_2
    //   150: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	f
    //   0	151	1	paramInt	int
    //   19	105	2	localBitmap	Bitmap
    //   146	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	146	finally
    //   24	45	146	finally
    //   45	50	146	finally
    //   53	139	146	finally
    //   139	143	146	finally
  }
  
  private void c()
  {
    if (Log.isLoggable("LruBitmapPool", 2)) {
      d();
    }
  }
  
  private void d()
  {
    Log.v("LruBitmapPool", "Hits=" + h + ", misses=" + i + ", puts=" + j + ", evictions=" + k + ", currentSize=" + g + ", maxSize=" + f + "\nStrategy=" + b);
  }
  
  private static g e()
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return new i();
    }
    return new a();
  }
  
  private static Set<Bitmap.Config> f()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.addAll(Arrays.asList(Bitmap.Config.values()));
    if (Build.VERSION.SDK_INT >= 19) {
      localHashSet.add(null);
    }
    return Collections.unmodifiableSet(localHashSet);
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
    if (Log.isLoggable("LruBitmapPool", 3)) {
      Log.d("LruBitmapPool", "clearMemory");
    }
    b(0);
  }
  
  @SuppressLint({"InlinedApi"})
  public void a(int paramInt)
  {
    if (Log.isLoggable("LruBitmapPool", 3)) {
      Log.d("LruBitmapPool", "trimMemory, level=" + paramInt);
    }
    if (paramInt >= 60) {
      a();
    }
    while (paramInt < 40) {
      return;
    }
    b(f / 2);
  }
  
  public boolean a(Bitmap paramBitmap)
  {
    if (paramBitmap == null) {
      try
      {
        throw new NullPointerException("Bitmap must not be null");
      }
      finally {}
    }
    if ((!paramBitmap.isMutable()) || (b.c(paramBitmap) > f) || (!c.contains(paramBitmap.getConfig()))) {
      if (Log.isLoggable("LruBitmapPool", 2)) {
        Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + b.b(paramBitmap) + ", is mutable: " + paramBitmap.isMutable() + ", is allowed config: " + c.contains(paramBitmap.getConfig()));
      }
    }
    for (boolean bool = false;; bool = true)
    {
      return bool;
      int m = b.c(paramBitmap);
      b.a(paramBitmap);
      e.a(paramBitmap);
      j += 1;
      g = (m + g);
      if (Log.isLoggable("LruBitmapPool", 2)) {
        Log.v("LruBitmapPool", "Put bitmap in pool=" + b.b(paramBitmap));
      }
      c();
      b();
    }
  }
  
  /* Error */
  @android.annotation.TargetApi(12)
  public Bitmap b(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 58	com/yelp/android/x/f:b	Lcom/yelp/android/x/g;
    //   6: astore 5
    //   8: aload_3
    //   9: ifnull +134 -> 143
    //   12: aload_3
    //   13: astore 4
    //   15: aload 5
    //   17: iload_1
    //   18: iload_2
    //   19: aload 4
    //   21: invokeinterface 250 4 0
    //   26: astore 4
    //   28: aload 4
    //   30: ifnonnull +121 -> 151
    //   33: ldc 78
    //   35: iconst_3
    //   36: invokestatic 84	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   39: ifeq +39 -> 78
    //   42: ldc 78
    //   44: new 107	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   51: ldc -4
    //   53: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_0
    //   57: getfield 58	com/yelp/android/x/f:b	Lcom/yelp/android/x/g;
    //   60: iload_1
    //   61: iload_2
    //   62: aload_3
    //   63: invokeinterface 255 4 0
    //   68: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokestatic 123	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   77: pop
    //   78: aload_0
    //   79: aload_0
    //   80: getfield 136	com/yelp/android/x/f:i	I
    //   83: iconst_1
    //   84: iadd
    //   85: putfield 136	com/yelp/android/x/f:i	I
    //   88: ldc 78
    //   90: iconst_2
    //   91: invokestatic 84	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   94: ifeq +40 -> 134
    //   97: ldc 78
    //   99: new 107	java/lang/StringBuilder
    //   102: dup
    //   103: invokespecial 108	java/lang/StringBuilder:<init>	()V
    //   106: ldc_w 257
    //   109: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: aload_0
    //   113: getfield 58	com/yelp/android/x/f:b	Lcom/yelp/android/x/g;
    //   116: iload_1
    //   117: iload_2
    //   118: aload_3
    //   119: invokeinterface 255 4 0
    //   124: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: invokevirtual 121	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   130: invokestatic 154	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   133: pop
    //   134: aload_0
    //   135: invokespecial 125	com/yelp/android/x/f:c	()V
    //   138: aload_0
    //   139: monitorexit
    //   140: aload 4
    //   142: areturn
    //   143: getstatic 38	com/yelp/android/x/f:a	Landroid/graphics/Bitmap$Config;
    //   146: astore 4
    //   148: goto -133 -> 15
    //   151: aload_0
    //   152: aload_0
    //   153: getfield 129	com/yelp/android/x/f:h	I
    //   156: iconst_1
    //   157: iadd
    //   158: putfield 129	com/yelp/android/x/f:h	I
    //   161: aload_0
    //   162: aload_0
    //   163: getfield 71	com/yelp/android/x/f:g	I
    //   166: aload_0
    //   167: getfield 58	com/yelp/android/x/f:b	Lcom/yelp/android/x/g;
    //   170: aload 4
    //   172: invokeinterface 98 2 0
    //   177: isub
    //   178: putfield 71	com/yelp/android/x/f:g	I
    //   181: aload_0
    //   182: getfield 65	com/yelp/android/x/f:e	Lcom/yelp/android/x/f$a;
    //   185: aload 4
    //   187: invokeinterface 95 2 0
    //   192: getstatic 159	android/os/Build$VERSION:SDK_INT	I
    //   195: bipush 12
    //   197: if_icmplt -109 -> 88
    //   200: aload 4
    //   202: iconst_1
    //   203: invokevirtual 261	android/graphics/Bitmap:setHasAlpha	(Z)V
    //   206: goto -118 -> 88
    //   209: astore_3
    //   210: aload_0
    //   211: monitorexit
    //   212: aload_3
    //   213: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	214	0	this	f
    //   0	214	1	paramInt1	int
    //   0	214	2	paramInt2	int
    //   0	214	3	paramConfig	Bitmap.Config
    //   13	188	4	localObject	Object
    //   6	10	5	localg	g
    // Exception table:
    //   from	to	target	type
    //   2	8	209	finally
    //   15	28	209	finally
    //   33	78	209	finally
    //   78	88	209	finally
    //   88	134	209	finally
    //   134	138	209	finally
    //   143	148	209	finally
    //   151	206	209	finally
  }
  
  private static abstract interface a
  {
    public abstract void a(Bitmap paramBitmap);
    
    public abstract void b(Bitmap paramBitmap);
  }
  
  private static class b
    implements f.a
  {
    public void a(Bitmap paramBitmap) {}
    
    public void b(Bitmap paramBitmap) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.x.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */