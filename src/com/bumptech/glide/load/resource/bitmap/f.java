package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.os.Build.VERSION;
import android.util.Log;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.yelp.android.ai.b;
import java.io.IOException;
import java.io.InputStream;
import java.util.EnumSet;
import java.util.Queue;
import java.util.Set;

public abstract class f
  implements a<InputStream>
{
  public static final f a = new g();
  public static final f b = new h();
  public static final f c = new i();
  private static final Set<ImageHeaderParser.ImageType> d = EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG);
  private static final Queue<BitmapFactory.Options> e = com.yelp.android.ai.f.a(0);
  
  private int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if ((paramInt1 == 90) || (paramInt1 == 270))
    {
      paramInt1 = a(paramInt3, paramInt2, paramInt4, paramInt5);
      if (paramInt1 != 0) {
        break label50;
      }
    }
    label50:
    for (paramInt1 = 0;; paramInt1 = Integer.highestOneBit(paramInt1 - 1))
    {
      return Math.max(1, paramInt1);
      paramInt1 = a(paramInt2, paramInt3, paramInt4, paramInt5);
      break;
    }
  }
  
  private static Bitmap.Config a(InputStream paramInputStream, DecodeFormat paramDecodeFormat)
  {
    if ((paramDecodeFormat == DecodeFormat.ALWAYS_ARGB_8888) || (Build.VERSION.SDK_INT == 16)) {
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
  
  private Bitmap a(b paramb, BitmapFactory.Options paramOptions, e parame, int paramInt1, int paramInt2, int paramInt3, DecodeFormat paramDecodeFormat)
  {
    paramDecodeFormat = a(paramb, paramDecodeFormat);
    inSampleSize = paramInt3;
    inPreferredConfig = paramDecodeFormat;
    if (((inSampleSize == 1) || (19 <= Build.VERSION.SDK_INT)) && (a(paramb))) {
      a(paramOptions, parame.b((int)Math.ceil(paramInt1 / paramInt3), (int)Math.ceil(paramInt2 / paramInt3), paramDecodeFormat));
    }
    return b(paramb, paramOptions);
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
  
  private static Bitmap b(b paramb, BitmapFactory.Options paramOptions)
  {
    if (inJustDecodeBounds) {
      paramb.mark(5242880);
    }
    Bitmap localBitmap;
    for (;;)
    {
      localBitmap = BitmapFactory.decodeStream(paramb, null, paramOptions);
      try
      {
        if (inJustDecodeBounds) {
          paramb.reset();
        }
        return localBitmap;
        paramb.a();
      }
      catch (IOException paramb)
      {
        while (!Log.isLoggable("Downsampler", 6)) {}
        Log.e("Downsampler", "Exception loading inDecodeBounds=" + inJustDecodeBounds + " sample=" + inSampleSize, paramb);
      }
    }
    return localBitmap;
  }
  
  /* Error */
  @TargetApi(11)
  private static BitmapFactory.Options b()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 46	com/bumptech/glide/load/resource/bitmap/f:e	Ljava/util/Queue;
    //   6: astore_0
    //   7: aload_0
    //   8: monitorenter
    //   9: getstatic 46	com/bumptech/glide/load/resource/bitmap/f:e	Ljava/util/Queue;
    //   12: invokeinterface 242 1 0
    //   17: checkcast 157	android/graphics/BitmapFactory$Options
    //   20: astore_1
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: astore_0
    //   25: aload_1
    //   26: ifnonnull +15 -> 41
    //   29: new 157	android/graphics/BitmapFactory$Options
    //   32: dup
    //   33: invokespecial 243	android/graphics/BitmapFactory$Options:<init>	()V
    //   36: astore_0
    //   37: aload_0
    //   38: invokestatic 184	com/bumptech/glide/load/resource/bitmap/f:b	(Landroid/graphics/BitmapFactory$Options;)V
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
    if (11 <= Build.VERSION.SDK_INT)
    {
      inBitmap = null;
      inMutable = true;
    }
  }
  
  protected abstract int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  /* Error */
  public Bitmap a(InputStream paramInputStream, e parame, int paramInt1, int paramInt2, DecodeFormat paramDecodeFormat)
  {
    // Byte code:
    //   0: invokestatic 262	com/yelp/android/ai/a:a	()Lcom/yelp/android/ai/a;
    //   3: astore 9
    //   5: aload 9
    //   7: invokevirtual 265	com/yelp/android/ai/a:b	()[B
    //   10: astore 10
    //   12: aload 9
    //   14: invokevirtual 265	com/yelp/android/ai/a:b	()[B
    //   17: astore 11
    //   19: invokestatic 267	com/bumptech/glide/load/resource/bitmap/f:b	()Landroid/graphics/BitmapFactory$Options;
    //   22: astore 12
    //   24: new 269	com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream
    //   27: dup
    //   28: aload_1
    //   29: aload 11
    //   31: invokespecial 272	com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream:<init>	(Ljava/io/InputStream;[B)V
    //   34: invokestatic 275	com/yelp/android/ai/b:a	(Lcom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;)Lcom/yelp/android/ai/b;
    //   37: astore 13
    //   39: aload 13
    //   41: ldc -43
    //   43: invokevirtual 216	com/yelp/android/ai/b:mark	(I)V
    //   46: new 110	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
    //   49: dup
    //   50: aload 13
    //   52: invokespecial 113	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:<init>	(Ljava/io/InputStream;)V
    //   55: invokevirtual 278	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:c	()I
    //   58: istore 6
    //   60: aload 13
    //   62: invokevirtual 223	com/yelp/android/ai/b:reset	()V
    //   65: aload 12
    //   67: aload 10
    //   69: putfield 247	android/graphics/BitmapFactory$Options:inTempStorage	[B
    //   72: aload_0
    //   73: aload 13
    //   75: aload 12
    //   77: invokevirtual 281	com/bumptech/glide/load/resource/bitmap/f:a	(Lcom/yelp/android/ai/b;Landroid/graphics/BitmapFactory$Options;)[I
    //   80: astore_1
    //   81: aload_1
    //   82: iconst_0
    //   83: iaload
    //   84: istore 7
    //   86: aload_1
    //   87: iconst_1
    //   88: iaload
    //   89: istore 8
    //   91: aload_0
    //   92: aload 13
    //   94: aload 12
    //   96: aload_2
    //   97: iload 7
    //   99: iload 8
    //   101: aload_0
    //   102: iload 6
    //   104: invokestatic 285	com/bumptech/glide/load/resource/bitmap/v:a	(I)I
    //   107: iload 7
    //   109: iload 8
    //   111: iload_3
    //   112: iload 4
    //   114: invokespecial 287	com/bumptech/glide/load/resource/bitmap/f:a	(IIIII)I
    //   117: aload 5
    //   119: invokespecial 289	com/bumptech/glide/load/resource/bitmap/f:a	(Lcom/yelp/android/ai/b;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;IIILcom/bumptech/glide/load/DecodeFormat;)Landroid/graphics/Bitmap;
    //   122: astore 14
    //   124: aload 13
    //   126: invokevirtual 292	com/yelp/android/ai/b:b	()Ljava/io/IOException;
    //   129: astore_1
    //   130: aload_1
    //   131: ifnull +149 -> 280
    //   134: new 294	java/lang/RuntimeException
    //   137: dup
    //   138: aload_1
    //   139: invokespecial 297	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   142: athrow
    //   143: astore_1
    //   144: aload 9
    //   146: aload 10
    //   148: invokevirtual 300	com/yelp/android/ai/a:a	([B)Z
    //   151: pop
    //   152: aload 9
    //   154: aload 11
    //   156: invokevirtual 300	com/yelp/android/ai/a:a	([B)Z
    //   159: pop
    //   160: aload 13
    //   162: invokevirtual 302	com/yelp/android/ai/b:c	()V
    //   165: aload 12
    //   167: invokestatic 304	com/bumptech/glide/load/resource/bitmap/f:a	(Landroid/graphics/BitmapFactory$Options;)V
    //   170: aload_1
    //   171: athrow
    //   172: astore_1
    //   173: ldc 121
    //   175: iconst_5
    //   176: invokestatic 127	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   179: ifeq +12 -> 191
    //   182: ldc 121
    //   184: ldc -127
    //   186: aload_1
    //   187: invokestatic 133	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   190: pop
    //   191: goto -126 -> 65
    //   194: astore_1
    //   195: ldc 121
    //   197: iconst_5
    //   198: invokestatic 127	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   201: ifeq +13 -> 214
    //   204: ldc 121
    //   206: ldc_w 306
    //   209: aload_1
    //   210: invokestatic 133	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   213: pop
    //   214: aload 13
    //   216: invokevirtual 223	com/yelp/android/ai/b:reset	()V
    //   219: iconst_0
    //   220: istore 6
    //   222: goto -157 -> 65
    //   225: astore_1
    //   226: ldc 121
    //   228: iconst_5
    //   229: invokestatic 127	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   232: ifeq +12 -> 244
    //   235: ldc 121
    //   237: ldc -127
    //   239: aload_1
    //   240: invokestatic 133	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   243: pop
    //   244: iconst_0
    //   245: istore 6
    //   247: goto -182 -> 65
    //   250: astore_1
    //   251: aload 13
    //   253: invokevirtual 223	com/yelp/android/ai/b:reset	()V
    //   256: aload_1
    //   257: athrow
    //   258: astore_2
    //   259: ldc 121
    //   261: iconst_5
    //   262: invokestatic 127	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   265: ifeq -9 -> 256
    //   268: ldc 121
    //   270: ldc -127
    //   272: aload_2
    //   273: invokestatic 133	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   276: pop
    //   277: goto -21 -> 256
    //   280: aconst_null
    //   281: astore_1
    //   282: aload 14
    //   284: ifnull +48 -> 332
    //   287: aload 14
    //   289: aload_2
    //   290: iload 6
    //   292: invokestatic 309	com/bumptech/glide/load/resource/bitmap/v:a	(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;I)Landroid/graphics/Bitmap;
    //   295: astore 5
    //   297: aload 5
    //   299: astore_1
    //   300: aload 14
    //   302: aload 5
    //   304: invokevirtual 312	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   307: ifne +25 -> 332
    //   310: aload 5
    //   312: astore_1
    //   313: aload_2
    //   314: aload 14
    //   316: invokeinterface 315 2 0
    //   321: ifne +11 -> 332
    //   324: aload 14
    //   326: invokevirtual 320	android/graphics/Bitmap:recycle	()V
    //   329: aload 5
    //   331: astore_1
    //   332: aload 9
    //   334: aload 10
    //   336: invokevirtual 300	com/yelp/android/ai/a:a	([B)Z
    //   339: pop
    //   340: aload 9
    //   342: aload 11
    //   344: invokevirtual 300	com/yelp/android/ai/a:a	([B)Z
    //   347: pop
    //   348: aload 13
    //   350: invokevirtual 302	com/yelp/android/ai/b:c	()V
    //   353: aload 12
    //   355: invokestatic 304	com/bumptech/glide/load/resource/bitmap/f:a	(Landroid/graphics/BitmapFactory$Options;)V
    //   358: aload_1
    //   359: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	360	0	this	f
    //   0	360	1	paramInputStream	InputStream
    //   0	360	2	parame	e
    //   0	360	3	paramInt1	int
    //   0	360	4	paramInt2	int
    //   0	360	5	paramDecodeFormat	DecodeFormat
    //   58	233	6	i	int
    //   84	24	7	j	int
    //   89	21	8	k	int
    //   3	338	9	locala	com.yelp.android.ai.a
    //   10	325	10	arrayOfByte1	byte[]
    //   17	326	11	arrayOfByte2	byte[]
    //   22	332	12	localOptions	BitmapFactory.Options
    //   37	312	13	localb	b
    //   122	203	14	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   39	46	143	finally
    //   60	65	143	finally
    //   65	81	143	finally
    //   91	130	143	finally
    //   134	143	143	finally
    //   173	191	143	finally
    //   214	219	143	finally
    //   226	244	143	finally
    //   251	256	143	finally
    //   256	258	143	finally
    //   259	277	143	finally
    //   287	297	143	finally
    //   300	310	143	finally
    //   313	329	143	finally
    //   60	65	172	java/io/IOException
    //   46	60	194	java/io/IOException
    //   214	219	225	java/io/IOException
    //   46	60	250	finally
    //   195	214	250	finally
    //   251	256	258	java/io/IOException
  }
  
  public int[] a(b paramb, BitmapFactory.Options paramOptions)
  {
    inJustDecodeBounds = true;
    b(paramb, paramOptions);
    inJustDecodeBounds = false;
    return new int[] { outWidth, outHeight };
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */