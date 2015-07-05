package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.a;
import com.yelp.android.s.b;

class c<DataType>
  implements b
{
  private final a<DataType> b;
  private final DataType c;
  
  public c(a<DataType> parama, DataType paramDataType)
  {
    b = paramDataType;
    Object localObject;
    c = localObject;
  }
  
  /* Error */
  public boolean a(java.io.File paramFile)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aconst_null
    //   3: astore 5
    //   5: aconst_null
    //   6: astore 4
    //   8: aload_0
    //   9: getfield 19	com/bumptech/glide/load/engine/c:a	Lcom/bumptech/glide/load/engine/a;
    //   12: invokestatic 39	com/bumptech/glide/load/engine/a:a	(Lcom/bumptech/glide/load/engine/a;)Lcom/bumptech/glide/load/engine/b;
    //   15: aload_1
    //   16: invokevirtual 44	com/bumptech/glide/load/engine/b:a	(Ljava/io/File;)Ljava/io/OutputStream;
    //   19: astore_1
    //   20: aload_1
    //   21: astore 4
    //   23: aload_1
    //   24: astore 5
    //   26: aload_0
    //   27: getfield 24	com/bumptech/glide/load/engine/c:b	Lcom/bumptech/glide/load/a;
    //   30: aload_0
    //   31: getfield 26	com/bumptech/glide/load/engine/c:c	Ljava/lang/Object;
    //   34: aload_1
    //   35: invokeinterface 49 3 0
    //   40: istore_2
    //   41: iload_2
    //   42: istore_3
    //   43: aload_1
    //   44: ifnull +9 -> 53
    //   47: aload_1
    //   48: invokevirtual 54	java/io/OutputStream:close	()V
    //   51: iload_2
    //   52: istore_3
    //   53: iload_3
    //   54: ireturn
    //   55: astore_1
    //   56: aload 4
    //   58: astore 5
    //   60: ldc 56
    //   62: iconst_3
    //   63: invokestatic 62	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   66: ifeq +16 -> 82
    //   69: aload 4
    //   71: astore 5
    //   73: ldc 56
    //   75: ldc 64
    //   77: aload_1
    //   78: invokestatic 68	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   81: pop
    //   82: aload 4
    //   84: ifnull -31 -> 53
    //   87: aload 4
    //   89: invokevirtual 54	java/io/OutputStream:close	()V
    //   92: iconst_0
    //   93: ireturn
    //   94: astore_1
    //   95: iconst_0
    //   96: ireturn
    //   97: astore_1
    //   98: aload 5
    //   100: ifnull +8 -> 108
    //   103: aload 5
    //   105: invokevirtual 54	java/io/OutputStream:close	()V
    //   108: aload_1
    //   109: athrow
    //   110: astore_1
    //   111: iload_2
    //   112: ireturn
    //   113: astore 4
    //   115: goto -7 -> 108
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	c
    //   0	118	1	paramFile	java.io.File
    //   40	72	2	bool1	boolean
    //   1	53	3	bool2	boolean
    //   6	82	4	localFile	java.io.File
    //   113	1	4	localIOException	java.io.IOException
    //   3	101	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   8	20	55	java/io/FileNotFoundException
    //   26	41	55	java/io/FileNotFoundException
    //   87	92	94	java/io/IOException
    //   8	20	97	finally
    //   26	41	97	finally
    //   60	69	97	finally
    //   73	82	97	finally
    //   47	51	110	java/io/IOException
    //   103	108	113	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */