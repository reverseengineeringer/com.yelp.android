package com.yelp.android.aa;

import java.io.File;
import java.io.InputStream;

public class c<T>
  implements com.bumptech.glide.load.d<File, T>
{
  private static final d a = new d();
  private com.bumptech.glide.load.d<InputStream, T> b;
  private final d c;
  
  public c(com.bumptech.glide.load.d<InputStream, T> paramd)
  {
    this(paramd, a);
  }
  
  c(com.bumptech.glide.load.d<InputStream, T> paramd, d paramd1)
  {
    b = paramd;
    c = paramd1;
  }
  
  /* Error */
  public com.bumptech.glide.load.engine.t<T> a(File paramFile, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 34	com/yelp/android/aa/c:c	Lcom/yelp/android/aa/d;
    //   7: aload_1
    //   8: invokevirtual 41	com/yelp/android/aa/d:a	(Ljava/io/File;)Ljava/io/InputStream;
    //   11: astore_1
    //   12: aload_1
    //   13: astore 4
    //   15: aload_0
    //   16: getfield 32	com/yelp/android/aa/c:b	Lcom/bumptech/glide/load/d;
    //   19: aload_1
    //   20: iload_2
    //   21: iload_3
    //   22: invokeinterface 44 4 0
    //   27: astore 5
    //   29: aload_1
    //   30: ifnull +7 -> 37
    //   33: aload_1
    //   34: invokevirtual 49	java/io/InputStream:close	()V
    //   37: aload 5
    //   39: areturn
    //   40: astore_1
    //   41: aload 4
    //   43: ifnull +8 -> 51
    //   46: aload 4
    //   48: invokevirtual 49	java/io/InputStream:close	()V
    //   51: aload_1
    //   52: athrow
    //   53: astore_1
    //   54: aload 5
    //   56: areturn
    //   57: astore 4
    //   59: goto -8 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	c
    //   0	62	1	paramFile	File
    //   0	62	2	paramInt1	int
    //   0	62	3	paramInt2	int
    //   1	46	4	localFile	File
    //   57	1	4	localIOException	java.io.IOException
    //   27	28	5	localt	com.bumptech.glide.load.engine.t
    // Exception table:
    //   from	to	target	type
    //   3	12	40	finally
    //   15	29	40	finally
    //   33	37	53	java/io/IOException
    //   46	51	57	java/io/IOException
  }
  
  public String a()
  {
    return "";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */