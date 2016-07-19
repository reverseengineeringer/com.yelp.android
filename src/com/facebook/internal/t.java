package com.facebook.internal;

import android.net.Uri;
import java.io.IOException;
import java.io.OutputStream;

class t
{
  static final String a = t.class.getSimpleName();
  private static final String b = a + "_Redirect";
  private static volatile i c;
  
  /* Error */
  static Uri a(Uri paramUri)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: ifnonnull +5 -> 8
    //   6: aconst_null
    //   7: areturn
    //   8: aload_0
    //   9: invokevirtual 43	android/net/Uri:toString	()Ljava/lang/String;
    //   12: astore_2
    //   13: invokestatic 46	com/facebook/internal/t:a	()Lcom/facebook/internal/i;
    //   16: astore 4
    //   18: aconst_null
    //   19: astore_0
    //   20: aload 4
    //   22: aload_2
    //   23: getstatic 35	com/facebook/internal/t:b	Ljava/lang/String;
    //   26: invokevirtual 51	com/facebook/internal/i:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    //   29: astore_3
    //   30: aload_3
    //   31: ifnull +75 -> 106
    //   34: new 53	java/io/InputStreamReader
    //   37: dup
    //   38: aload_3
    //   39: invokespecial 56	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   42: astore_2
    //   43: sipush 128
    //   46: newarray <illegal type>
    //   48: astore_0
    //   49: new 21	java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial 24	java/lang/StringBuilder:<init>	()V
    //   56: astore_3
    //   57: aload_2
    //   58: aload_0
    //   59: iconst_0
    //   60: aload_0
    //   61: arraylength
    //   62: invokevirtual 60	java/io/InputStreamReader:read	([CII)I
    //   65: istore_1
    //   66: iload_1
    //   67: ifle +21 -> 88
    //   70: aload_3
    //   71: aload_0
    //   72: iconst_0
    //   73: iload_1
    //   74: invokevirtual 63	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   77: pop
    //   78: goto -21 -> 57
    //   81: astore_0
    //   82: aload_2
    //   83: invokestatic 68	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   86: aconst_null
    //   87: areturn
    //   88: aload_2
    //   89: invokestatic 68	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   92: aload_3
    //   93: invokevirtual 33	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: astore_3
    //   97: aload_2
    //   98: astore_0
    //   99: iconst_1
    //   100: istore_1
    //   101: aload_3
    //   102: astore_2
    //   103: goto -83 -> 20
    //   106: iload_1
    //   107: ifeq +14 -> 121
    //   110: aload_2
    //   111: invokestatic 72	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   114: astore_2
    //   115: aload_0
    //   116: invokestatic 68	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   119: aload_2
    //   120: areturn
    //   121: aload_0
    //   122: invokestatic 68	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   125: aconst_null
    //   126: areturn
    //   127: astore_0
    //   128: aconst_null
    //   129: astore_2
    //   130: aload_2
    //   131: invokestatic 68	com/facebook/internal/u:a	(Ljava/io/Closeable;)V
    //   134: aload_0
    //   135: athrow
    //   136: astore_0
    //   137: goto -7 -> 130
    //   140: astore_3
    //   141: aload_0
    //   142: astore_2
    //   143: aload_3
    //   144: astore_0
    //   145: goto -15 -> 130
    //   148: astore_0
    //   149: aconst_null
    //   150: astore_2
    //   151: goto -69 -> 82
    //   154: astore_2
    //   155: aload_0
    //   156: astore_2
    //   157: goto -75 -> 82
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	160	0	paramUri	Uri
    //   1	106	1	i	int
    //   12	139	2	localObject1	Object
    //   154	1	2	localIOException	IOException
    //   156	1	2	localUri	Uri
    //   29	73	3	localObject2	Object
    //   140	4	3	localObject3	Object
    //   16	5	4	locali	i
    // Exception table:
    //   from	to	target	type
    //   43	57	81	java/io/IOException
    //   57	66	81	java/io/IOException
    //   70	78	81	java/io/IOException
    //   88	97	81	java/io/IOException
    //   13	18	127	finally
    //   43	57	136	finally
    //   57	66	136	finally
    //   70	78	136	finally
    //   88	97	136	finally
    //   20	30	140	finally
    //   34	43	140	finally
    //   110	115	140	finally
    //   13	18	148	java/io/IOException
    //   20	30	154	java/io/IOException
    //   34	43	154	java/io/IOException
    //   110	115	154	java/io/IOException
  }
  
  static i a()
    throws IOException
  {
    try
    {
      if (c == null) {
        c = new i(a, new i.d());
      }
      i locali = c;
      return locali;
    }
    finally {}
  }
  
  static void a(Uri paramUri1, Uri paramUri2)
  {
    if ((paramUri1 == null) || (paramUri2 == null)) {
      return;
    }
    localUri = null;
    try
    {
      paramUri1 = a().b(paramUri1.toString(), b);
      localUri = paramUri1;
      u.a(localUri);
    }
    catch (IOException paramUri1)
    {
      try
      {
        paramUri1.write(paramUri2.toString().getBytes());
        u.a(paramUri1);
        return;
      }
      finally
      {
        localUri = paramUri1;
      }
      paramUri1 = paramUri1;
      u.a(localUri);
      return;
    }
    finally
    {
      paramUri1 = finally;
      localUri = null;
      paramUri2 = paramUri1;
    }
    throw paramUri2;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */