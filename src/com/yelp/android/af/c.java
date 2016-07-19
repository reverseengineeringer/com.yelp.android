package com.yelp.android.af;

import com.bumptech.glide.load.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

public class c<T>
  implements d<File, T>
{
  private static final a a = new a();
  private d<InputStream, T> b;
  private final a c;
  
  public c(d<InputStream, T> paramd)
  {
    this(paramd, a);
  }
  
  c(d<InputStream, T> paramd, a parama)
  {
    b = paramd;
    c = parama;
  }
  
  /* Error */
  public com.bumptech.glide.load.engine.i<T> a(File paramFile, int paramInt1, int paramInt2)
    throws java.io.IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 34	com/yelp/android/af/c:c	Lcom/yelp/android/af/c$a;
    //   7: aload_1
    //   8: invokevirtual 41	com/yelp/android/af/c$a:a	(Ljava/io/File;)Ljava/io/InputStream;
    //   11: astore_1
    //   12: aload_1
    //   13: astore 4
    //   15: aload_0
    //   16: getfield 32	com/yelp/android/af/c:b	Lcom/bumptech/glide/load/d;
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
    //   27	28	5	locali	com.bumptech.glide.load.engine.i
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
  
  static class a
  {
    public InputStream a(File paramFile)
      throws FileNotFoundException
    {
      return new FileInputStream(paramFile);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.af.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */