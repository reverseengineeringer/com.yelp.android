package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.yelp.android.ao.h;
import com.yelp.android.x.c;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;

public abstract class f
  implements a<InputStream>
{
  public static final f a = new f()
  {
    protected int a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      return Math.min(paramAnonymousInt2 / paramAnonymousInt4, paramAnonymousInt1 / paramAnonymousInt3);
    }
    
    public String a()
    {
      return "AT_LEAST.com.bumptech.glide.load.data.bitmap";
    }
  };
  public static final f b = new f()
  {
    protected int a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      int i = 1;
      paramAnonymousInt1 = (int)Math.ceil(Math.max(paramAnonymousInt2 / paramAnonymousInt4, paramAnonymousInt1 / paramAnonymousInt3));
      paramAnonymousInt2 = Math.max(1, Integer.highestOneBit(paramAnonymousInt1));
      if (paramAnonymousInt2 < paramAnonymousInt1) {}
      for (paramAnonymousInt1 = i;; paramAnonymousInt1 = 0) {
        return paramAnonymousInt2 << paramAnonymousInt1;
      }
    }
    
    public String a()
    {
      return "AT_MOST.com.bumptech.glide.load.data.bitmap";
    }
  };
  public static final f c = new f()
  {
    protected int a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      return 0;
    }
    
    public String a()
    {
      return "NONE.com.bumptech.glide.load.data.bitmap";
    }
  };
  private static final Set<ImageHeaderParser.ImageType> d = EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG);
  private static final Queue<BitmapFactory.Options> e = h.a(0);
  
  private int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int i = paramInt5;
    if (paramInt5 == Integer.MIN_VALUE) {
      i = paramInt3;
    }
    paramInt5 = paramInt4;
    if (paramInt4 == Integer.MIN_VALUE) {
      paramInt5 = paramInt2;
    }
    if ((paramInt1 == 90) || (paramInt1 == 270))
    {
      paramInt1 = a(paramInt3, paramInt2, paramInt5, i);
      if (paramInt1 != 0) {
        break label78;
      }
    }
    label78:
    for (paramInt1 = 0;; paramInt1 = Integer.highestOneBit(paramInt1))
    {
      return Math.max(1, paramInt1);
      paramInt1 = a(paramInt2, paramInt3, paramInt5, i);
      break;
    }
  }
  
  private static Bitmap.Config a(InputStream paramInputStream, DecodeFormat paramDecodeFormat)
  {
    if ((paramDecodeFormat == DecodeFormat.ALWAYS_ARGB_8888) || (paramDecodeFormat == DecodeFormat.PREFER_ARGB_8888) || (Build.VERSION.SDK_INT == 16)) {
      return Bitmap.Config.ARGB_8888;
    }
    paramInputStream.mark(1024);
    for (;;)
    {
      try
      {
        bool2 = new ImageHeaderParser(paramInputStream).a();
      }
      catch (IOException localIOException)
      {
        boolean bool2;
        boolean bool1;
        if (!Log.isLoggable("Downsampler", 5)) {
          continue;
        }
        Log.w("Downsampler", "Cannot determine whether the image has alpha or not from header for format " + paramDecodeFormat, localIOException);
        try
        {
          paramInputStream.reset();
          bool1 = false;
        }
        catch (IOException paramInputStream)
        {
          if (Log.isLoggable("Downsampler", 5)) {
            Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
          }
          bool1 = false;
        }
        continue;
      }
      finally
      {
        try
        {
          paramInputStream.reset();
          throw paramDecodeFormat;
        }
        catch (IOException paramInputStream)
        {
          if (!Log.isLoggable("Downsampler", 5)) {
            continue;
          }
          Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
          continue;
        }
      }
      try
      {
        paramInputStream.reset();
        bool1 = bool2;
      }
      catch (IOException paramInputStream)
      {
        bool1 = bool2;
        if (!Log.isLoggable("Downsampler", 5)) {
          continue;
        }
        Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
        bool1 = bool2;
      }
    }
    if (bool1) {
      return Bitmap.Config.ARGB_8888;
    }
    return Bitmap.Config.RGB_565;
  }
  
  private Bitmap a(com.yelp.android.ao.f paramf, RecyclableBufferedInputStream paramRecyclableBufferedInputStream, BitmapFactory.Options paramOptions, c paramc, int paramInt1, int paramInt2, int paramInt3, DecodeFormat paramDecodeFormat)
  {
    paramDecodeFormat = a(paramf, paramDecodeFormat);
    inSampleSize = paramInt3;
    inPreferredConfig = paramDecodeFormat;
    if (((inSampleSize == 1) || (19 <= Build.VERSION.SDK_INT)) && (a(paramf))) {
      a(paramOptions, paramc.b((int)Math.ceil(paramInt1 / paramInt3), (int)Math.ceil(paramInt2 / paramInt3), paramDecodeFormat));
    }
    return b(paramf, paramRecyclableBufferedInputStream, paramOptions);
  }
  
  private static void a(BitmapFactory.Options paramOptions)
  {
    b(paramOptions);
    synchronized (e)
    {
      e.offer(paramOptions);
      return;
    }
  }
  
  @TargetApi(11)
  private static void a(BitmapFactory.Options paramOptions, Bitmap paramBitmap)
  {
    if (11 <= Build.VERSION.SDK_INT) {
      inBitmap = paramBitmap;
    }
  }
  
  private static boolean a(InputStream paramInputStream)
  {
    boolean bool1;
    if (19 <= Build.VERSION.SDK_INT) {
      bool1 = true;
    }
    for (;;)
    {
      return bool1;
      paramInputStream.mark(1024);
      try
      {
        ImageHeaderParser.ImageType localImageType = new ImageHeaderParser(paramInputStream).b();
        boolean bool2 = d.contains(localImageType);
        try
        {
          paramInputStream.reset();
          return bool2;
        }
        catch (IOException paramInputStream)
        {
          bool1 = bool2;
        }
        if (Log.isLoggable("Downsampler", 5))
        {
          Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
          return bool2;
        }
      }
      catch (IOException localIOException)
      {
        localIOException = localIOException;
        if (Log.isLoggable("Downsampler", 5)) {
          Log.w("Downsampler", "Cannot determine the image type from header", localIOException);
        }
        try
        {
          paramInputStream.reset();
          return false;
        }
        catch (IOException paramInputStream)
        {
          for (;;)
          {
            if (Log.isLoggable("Downsampler", 5)) {
              Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
            }
          }
        }
      }
      finally {}
    }
    try
    {
      paramInputStream.reset();
      throw ((Throwable)localObject);
    }
    catch (IOException paramInputStream)
    {
      for (;;)
      {
        if (Log.isLoggable("Downsampler", 5)) {
          Log.w("Downsampler", "Cannot reset the input stream", paramInputStream);
        }
      }
    }
  }
  
  private static Bitmap b(com.yelp.android.ao.f paramf, RecyclableBufferedInputStream paramRecyclableBufferedInputStream, BitmapFactory.Options paramOptions)
  {
    if (inJustDecodeBounds) {
      paramf.mark(5242880);
    }
    for (;;)
    {
      paramRecyclableBufferedInputStream = BitmapFactory.decodeStream(paramf, null, paramOptions);
      try
      {
        if (inJustDecodeBounds) {
          paramf.reset();
        }
        return paramRecyclableBufferedInputStream;
        paramRecyclableBufferedInputStream.a();
      }
      catch (IOException paramf)
      {
        while (!Log.isLoggable("Downsampler", 6)) {}
        Log.e("Downsampler", "Exception loading inDecodeBounds=" + inJustDecodeBounds + " sample=" + inSampleSize, paramf);
      }
    }
    return paramRecyclableBufferedInputStream;
  }
  
  /* Error */
  @TargetApi(11)
  private static BitmapFactory.Options b()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 52	com/bumptech/glide/load/resource/bitmap/f:e	Ljava/util/Queue;
    //   6: astore_0
    //   7: aload_0
    //   8: monitorenter
    //   9: getstatic 52	com/bumptech/glide/load/resource/bitmap/f:e	Ljava/util/Queue;
    //   12: invokeinterface 248 1 0
    //   17: checkcast 161	android/graphics/BitmapFactory$Options
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: astore_0
    //   25: aload_1
    //   26: ifnonnull +15 -> 41
    //   29: new 161	android/graphics/BitmapFactory$Options
    //   32: dup
    //   33: invokespecial 249	android/graphics/BitmapFactory$Options:<init>	()V
    //   36: astore_0
    //   37: aload_0
    //   38: invokestatic 188	com/bumptech/glide/load/resource/bitmap/f:b	(Landroid/graphics/BitmapFactory$Options;)V
    //   41: ldc 2
    //   43: monitorexit
    //   44: aload_0
    //   45: areturn
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    //   51: astore_0
    //   52: ldc 2
    //   54: monitorexit
    //   55: aload_0
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   51	5	0	localObject2	Object
    //   20	6	1	localOptions	BitmapFactory.Options
    //   46	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   9	23	46	finally
    //   47	49	46	finally
    //   3	9	51	finally
    //   29	41	51	finally
    //   49	51	51	finally
  }
  
  @TargetApi(11)
  private static void b(BitmapFactory.Options paramOptions)
  {
    inTempStorage = null;
    inDither = false;
    inScaled = false;
    inSampleSize = 1;
    inPreferredConfig = null;
    inJustDecodeBounds = false;
    outWidth = 0;
    outHeight = 0;
    outMimeType = null;
    if (11 <= Build.VERSION.SDK_INT)
    {
      inBitmap = null;
      inMutable = true;
    }
  }
  
  protected abstract int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  /* Error */
  public Bitmap a(InputStream paramInputStream, c paramc, int paramInt1, int paramInt2, DecodeFormat paramDecodeFormat)
  {
    // Byte code:
    //   0: invokestatic 278	com/yelp/android/ao/a:a	()Lcom/yelp/android/ao/a;
    //   3: astore 9
    //   5: aload 9
    //   7: invokevirtual 281	com/yelp/android/ao/a:b	()[B
    //   10: astore 10
    //   12: aload 9
    //   14: invokevirtual 281	com/yelp/android/ao/a:b	()[B
    //   17: astore 11
    //   19: invokestatic 283	com/bumptech/glide/load/resource/bitmap/f:b	()Landroid/graphics/BitmapFactory$Options;
    //   22: astore 12
    //   24: new 229	com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream
    //   27: dup
    //   28: aload_1
    //   29: aload 11
    //   31: invokespecial 286	com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream:<init>	(Ljava/io/InputStream;[B)V
    //   34: astore_1
    //   35: aload_1
    //   36: invokestatic 291	com/yelp/android/ao/c:a	(Ljava/io/InputStream;)Lcom/yelp/android/ao/c;
    //   39: astore 13
    //   41: new 219	com/yelp/android/ao/f
    //   44: dup
    //   45: aload 13
    //   47: invokespecial 292	com/yelp/android/ao/f:<init>	(Ljava/io/InputStream;)V
    //   50: astore 14
    //   52: aload 13
    //   54: ldc -39
    //   56: invokevirtual 293	com/yelp/android/ao/c:mark	(I)V
    //   59: new 114	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
    //   62: dup
    //   63: aload 13
    //   65: invokespecial 117	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:<init>	(Ljava/io/InputStream;)V
    //   68: invokevirtual 296	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:c	()I
    //   71: istore 6
    //   73: aload 13
    //   75: invokevirtual 297	com/yelp/android/ao/c:reset	()V
    //   78: aload 12
    //   80: aload 10
    //   82: putfield 253	android/graphics/BitmapFactory$Options:inTempStorage	[B
    //   85: aload_0
    //   86: aload 14
    //   88: aload_1
    //   89: aload 12
    //   91: invokevirtual 300	com/bumptech/glide/load/resource/bitmap/f:a	(Lcom/yelp/android/ao/f;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;)[I
    //   94: astore 15
    //   96: aload 15
    //   98: iconst_0
    //   99: iaload
    //   100: istore 7
    //   102: aload 15
    //   104: iconst_1
    //   105: iaload
    //   106: istore 8
    //   108: aload_0
    //   109: aload 14
    //   111: aload_1
    //   112: aload 12
    //   114: aload_2
    //   115: iload 7
    //   117: iload 8
    //   119: aload_0
    //   120: iload 6
    //   122: invokestatic 304	com/bumptech/glide/load/resource/bitmap/p:a	(I)I
    //   125: iload 7
    //   127: iload 8
    //   129: iload_3
    //   130: iload 4
    //   132: invokespecial 306	com/bumptech/glide/load/resource/bitmap/f:a	(IIIII)I
    //   135: aload 5
    //   137: invokespecial 308	com/bumptech/glide/load/resource/bitmap/f:a	(Lcom/yelp/android/ao/f;Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Landroid/graphics/BitmapFactory$Options;Lcom/yelp/android/x/c;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    //   140: astore 14
    //   142: aload 13
    //   144: invokevirtual 311	com/yelp/android/ao/c:a	()Ljava/io/IOException;
    //   147: astore_1
    //   148: aload_1
    //   149: ifnull +155 -> 304
    //   152: new 313	java/lang/RuntimeException
    //   155: dup
    //   156: aload_1
    //   157: invokespecial 316	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   160: athrow
    //   161: astore_1
    //   162: aload 9
    //   164: aload 10
    //   166: invokevirtual 319	com/yelp/android/ao/a:a	([B)Z
    //   169: pop
    //   170: aload 9
    //   172: aload 11
    //   174: invokevirtual 319	com/yelp/android/ao/a:a	([B)Z
    //   177: pop
    //   178: aload 13
    //   180: invokevirtual 321	com/yelp/android/ao/c:b	()V
    //   183: aload 12
    //   185: invokestatic 323	com/bumptech/glide/load/resource/bitmap/f:a	(Landroid/graphics/BitmapFactory$Options;)V
    //   188: aload_1
    //   189: athrow
    //   190: astore 15
    //   192: ldc 125
    //   194: iconst_5
    //   195: invokestatic 131	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   198: ifeq +13 -> 211
    //   201: ldc 125
    //   203: ldc -123
    //   205: aload 15
    //   207: invokestatic 137	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   210: pop
    //   211: goto -133 -> 78
    //   214: astore 15
    //   216: ldc 125
    //   218: iconst_5
    //   219: invokestatic 131	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   222: ifeq +14 -> 236
    //   225: ldc 125
    //   227: ldc_w 325
    //   230: aload 15
    //   232: invokestatic 137	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   235: pop
    //   236: aload 13
    //   238: invokevirtual 297	com/yelp/android/ao/c:reset	()V
    //   241: iconst_0
    //   242: istore 6
    //   244: goto -166 -> 78
    //   247: astore 15
    //   249: ldc 125
    //   251: iconst_5
    //   252: invokestatic 131	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   255: ifeq +13 -> 268
    //   258: ldc 125
    //   260: ldc -123
    //   262: aload 15
    //   264: invokestatic 137	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   267: pop
    //   268: iconst_0
    //   269: istore 6
    //   271: goto -193 -> 78
    //   274: astore_1
    //   275: aload 13
    //   277: invokevirtual 297	com/yelp/android/ao/c:reset	()V
    //   280: aload_1
    //   281: athrow
    //   282: astore_2
    //   283: ldc 125
    //   285: iconst_5
    //   286: invokestatic 131	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   289: ifeq -9 -> 280
    //   292: ldc 125
    //   294: ldc -123
    //   296: aload_2
    //   297: invokestatic 137	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   300: pop
    //   301: goto -21 -> 280
    //   304: aconst_null
    //   305: astore_1
    //   306: aload 14
    //   308: ifnull +48 -> 356
    //   311: aload 14
    //   313: aload_2
    //   314: iload 6
    //   316: invokestatic 328	com/bumptech/glide/load/resource/bitmap/p:a	(Landroid/graphics/Bitmap;Lcom/yelp/android/x/c;I)Landroid/graphics/Bitmap;
    //   319: astore 5
    //   321: aload 5
    //   323: astore_1
    //   324: aload 14
    //   326: aload 5
    //   328: invokevirtual 331	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   331: ifne +25 -> 356
    //   334: aload 5
    //   336: astore_1
    //   337: aload_2
    //   338: aload 14
    //   340: invokeinterface 334 2 0
    //   345: ifne +11 -> 356
    //   348: aload 14
    //   350: invokevirtual 339	android/graphics/Bitmap:recycle	()V
    //   353: aload 5
    //   355: astore_1
    //   356: aload 9
    //   358: aload 10
    //   360: invokevirtual 319	com/yelp/android/ao/a:a	([B)Z
    //   363: pop
    //   364: aload 9
    //   366: aload 11
    //   368: invokevirtual 319	com/yelp/android/ao/a:a	([B)Z
    //   371: pop
    //   372: aload 13
    //   374: invokevirtual 321	com/yelp/android/ao/c:b	()V
    //   377: aload 12
    //   379: invokestatic 323	com/bumptech/glide/load/resource/bitmap/f:a	(Landroid/graphics/BitmapFactory$Options;)V
    //   382: aload_1
    //   383: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	384	0	this	f
    //   0	384	1	paramInputStream	InputStream
    //   0	384	2	paramc	c
    //   0	384	3	paramInt1	int
    //   0	384	4	paramInt2	int
    //   0	384	5	paramDecodeFormat	DecodeFormat
    //   71	244	6	i	int
    //   100	26	7	j	int
    //   106	22	8	k	int
    //   3	362	9	locala	com.yelp.android.ao.a
    //   10	349	10	arrayOfByte1	byte[]
    //   17	350	11	arrayOfByte2	byte[]
    //   22	356	12	localOptions	BitmapFactory.Options
    //   39	334	13	localc	com.yelp.android.ao.c
    //   50	299	14	localObject	Object
    //   94	9	15	arrayOfInt	int[]
    //   190	16	15	localIOException1	IOException
    //   214	17	15	localIOException2	IOException
    //   247	16	15	localIOException3	IOException
    // Exception table:
    //   from	to	target	type
    //   52	59	161	finally
    //   73	78	161	finally
    //   78	96	161	finally
    //   108	148	161	finally
    //   152	161	161	finally
    //   192	211	161	finally
    //   236	241	161	finally
    //   249	268	161	finally
    //   275	280	161	finally
    //   280	282	161	finally
    //   283	301	161	finally
    //   311	321	161	finally
    //   324	334	161	finally
    //   337	353	161	finally
    //   73	78	190	java/io/IOException
    //   59	73	214	java/io/IOException
    //   236	241	247	java/io/IOException
    //   59	73	274	finally
    //   216	236	274	finally
    //   275	280	282	java/io/IOException
  }
  
  public int[] a(com.yelp.android.ao.f paramf, RecyclableBufferedInputStream paramRecyclableBufferedInputStream, BitmapFactory.Options paramOptions)
  {
    inJustDecodeBounds = true;
    b(paramf, paramRecyclableBufferedInputStream, paramOptions);
    inJustDecodeBounds = false;
    return new int[] { outWidth, outHeight };
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */