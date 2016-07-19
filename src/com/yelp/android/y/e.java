package com.yelp.android.y;

import android.util.Log;
import com.bumptech.glide.load.b;
import com.yelp.android.t.a.c;
import java.io.File;
import java.io.IOException;

public class e
  implements a
{
  private static e a = null;
  private final c b = new c();
  private final j c;
  private final File d;
  private final int e;
  private com.yelp.android.t.a f;
  
  protected e(File paramFile, int paramInt)
  {
    d = paramFile;
    e = paramInt;
    c = new j();
  }
  
  private com.yelp.android.t.a a()
    throws IOException
  {
    try
    {
      if (f == null) {
        f = com.yelp.android.t.a.a(d, 1, 1, e);
      }
      com.yelp.android.t.a locala = f;
      return locala;
    }
    finally {}
  }
  
  public static a a(File paramFile, int paramInt)
  {
    try
    {
      if (a == null) {
        a = new e(paramFile, paramInt);
      }
      paramFile = a;
      return paramFile;
    }
    finally {}
  }
  
  public File a(b paramb)
  {
    paramb = c.a(paramb);
    Object localObject = null;
    try
    {
      a.c localc = a().a(paramb);
      paramb = (b)localObject;
      if (localc != null) {
        paramb = localc.a(0);
      }
    }
    catch (IOException localIOException)
    {
      do
      {
        paramb = (b)localObject;
      } while (!Log.isLoggable("DiskLruCacheWrapper", 5));
      Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", localIOException);
    }
    return paramb;
    return null;
  }
  
  /* Error */
  public void a(b paramb, a.b paramb1)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 41	com/yelp/android/y/e:c	Lcom/yelp/android/y/j;
    //   4: aload_1
    //   5: invokevirtual 59	com/yelp/android/y/j:a	(Lcom/bumptech/glide/load/b;)Ljava/lang/String;
    //   8: astore_3
    //   9: aload_0
    //   10: getfield 32	com/yelp/android/y/e:b	Lcom/yelp/android/y/c;
    //   13: aload_1
    //   14: invokevirtual 87	com/yelp/android/y/c:a	(Lcom/bumptech/glide/load/b;)V
    //   17: aload_0
    //   18: invokespecial 61	com/yelp/android/y/e:a	()Lcom/yelp/android/t/a;
    //   21: aload_3
    //   22: invokevirtual 90	com/yelp/android/t/a:b	(Ljava/lang/String;)Lcom/yelp/android/t/a$a;
    //   25: astore_3
    //   26: aload_3
    //   27: ifnull +25 -> 52
    //   30: aload_2
    //   31: aload_3
    //   32: iconst_0
    //   33: invokevirtual 93	com/yelp/android/t/a$a:a	(I)Ljava/io/File;
    //   36: invokeinterface 98 2 0
    //   41: ifeq +7 -> 48
    //   44: aload_3
    //   45: invokevirtual 100	com/yelp/android/t/a$a:a	()V
    //   48: aload_3
    //   49: invokevirtual 102	com/yelp/android/t/a$a:c	()V
    //   52: aload_0
    //   53: getfield 32	com/yelp/android/y/e:b	Lcom/yelp/android/y/c;
    //   56: aload_1
    //   57: invokevirtual 104	com/yelp/android/y/c:b	(Lcom/bumptech/glide/load/b;)V
    //   60: return
    //   61: astore_2
    //   62: aload_3
    //   63: invokevirtual 102	com/yelp/android/t/a$a:c	()V
    //   66: aload_2
    //   67: athrow
    //   68: astore_2
    //   69: ldc 71
    //   71: iconst_5
    //   72: invokestatic 77	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   75: ifeq +12 -> 87
    //   78: ldc 71
    //   80: ldc 106
    //   82: aload_2
    //   83: invokestatic 83	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   86: pop
    //   87: aload_0
    //   88: getfield 32	com/yelp/android/y/e:b	Lcom/yelp/android/y/c;
    //   91: aload_1
    //   92: invokevirtual 104	com/yelp/android/y/c:b	(Lcom/bumptech/glide/load/b;)V
    //   95: return
    //   96: astore_2
    //   97: aload_0
    //   98: getfield 32	com/yelp/android/y/e:b	Lcom/yelp/android/y/c;
    //   101: aload_1
    //   102: invokevirtual 104	com/yelp/android/y/c:b	(Lcom/bumptech/glide/load/b;)V
    //   105: aload_2
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	e
    //   0	107	1	paramb	b
    //   0	107	2	paramb1	a.b
    //   8	55	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   30	48	61	finally
    //   17	26	68	java/io/IOException
    //   48	52	68	java/io/IOException
    //   62	68	68	java/io/IOException
    //   17	26	96	finally
    //   48	52	96	finally
    //   62	68	96	finally
    //   69	87	96	finally
  }
  
  public void b(b paramb)
  {
    paramb = c.a(paramb);
    try
    {
      a().c(paramb);
      return;
    }
    catch (IOException paramb)
    {
      while (!Log.isLoggable("DiskLruCacheWrapper", 5)) {}
      Log.w("DiskLruCacheWrapper", "Unable to delete from disk cache", paramb);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.y.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */