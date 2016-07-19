package com.yelp.android.w;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

class i$d
{
  private static final i.a a = new i.a();
  private final i.a b;
  private i.c c;
  
  public i$d(i.a parama, i.c paramc)
  {
    b = parama;
    c = paramc;
  }
  
  public i$d(i.c paramc)
  {
    this(a, paramc);
  }
  
  private Uri a(Cursor paramCursor)
  {
    Object localObject1 = null;
    Object localObject2 = paramCursor.getString(0);
    paramCursor = (Cursor)localObject1;
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject2 = b.a((String)localObject2);
      paramCursor = (Cursor)localObject1;
      if (b.a((File)localObject2))
      {
        paramCursor = (Cursor)localObject1;
        if (b.b((File)localObject2) > 0L) {
          paramCursor = Uri.fromFile((File)localObject2);
        }
      }
    }
    return paramCursor;
  }
  
  /* Error */
  public int a(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore 4
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 5
    //   9: aload_1
    //   10: invokevirtual 68	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   13: aload_2
    //   14: invokevirtual 74	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   17: astore_1
    //   18: aload_1
    //   19: astore 5
    //   21: aload_1
    //   22: astore 6
    //   24: new 76	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser
    //   27: dup
    //   28: aload_1
    //   29: invokespecial 79	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:<init>	(Ljava/io/InputStream;)V
    //   32: invokevirtual 82	com/bumptech/glide/load/resource/bitmap/ImageHeaderParser:c	()I
    //   35: istore_3
    //   36: iload_3
    //   37: istore 4
    //   39: aload_1
    //   40: ifnull +10 -> 50
    //   43: aload_1
    //   44: invokevirtual 87	java/io/InputStream:close	()V
    //   47: iload_3
    //   48: istore 4
    //   50: iload 4
    //   52: ireturn
    //   53: astore_1
    //   54: aload 5
    //   56: astore 6
    //   58: ldc 89
    //   60: iconst_3
    //   61: invokestatic 95	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   64: ifeq +33 -> 97
    //   67: aload 5
    //   69: astore 6
    //   71: ldc 89
    //   73: new 97	java/lang/StringBuilder
    //   76: dup
    //   77: invokespecial 98	java/lang/StringBuilder:<init>	()V
    //   80: ldc 100
    //   82: invokevirtual 104	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: aload_2
    //   86: invokevirtual 107	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: aload_1
    //   93: invokestatic 114	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   96: pop
    //   97: aload 5
    //   99: ifnull -49 -> 50
    //   102: aload 5
    //   104: invokevirtual 87	java/io/InputStream:close	()V
    //   107: iconst_m1
    //   108: ireturn
    //   109: astore_1
    //   110: iconst_m1
    //   111: ireturn
    //   112: astore_1
    //   113: aload 6
    //   115: ifnull +8 -> 123
    //   118: aload 6
    //   120: invokevirtual 87	java/io/InputStream:close	()V
    //   123: aload_1
    //   124: athrow
    //   125: astore_1
    //   126: iload_3
    //   127: ireturn
    //   128: astore_2
    //   129: goto -6 -> 123
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	132	0	this	d
    //   0	132	1	paramContext	Context
    //   0	132	2	paramUri	Uri
    //   35	92	3	i	int
    //   1	50	4	j	int
    //   7	96	5	localContext	Context
    //   4	115	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   9	18	53	java/io/IOException
    //   24	36	53	java/io/IOException
    //   102	107	109	java/io/IOException
    //   9	18	112	finally
    //   24	36	112	finally
    //   58	67	112	finally
    //   71	97	112	finally
    //   43	47	125	java/io/IOException
    //   118	123	128	java/io/IOException
  }
  
  public InputStream b(Context paramContext, Uri paramUri)
    throws FileNotFoundException
  {
    InputStream localInputStream = null;
    Cursor localCursor = c.a(paramContext, paramUri);
    if (localCursor != null) {}
    for (;;)
    {
      try
      {
        if (localCursor.moveToFirst())
        {
          paramUri = a(localCursor);
          if (localCursor != null) {
            localCursor.close();
          }
          if (paramUri != null) {
            localInputStream = paramContext.getContentResolver().openInputStream(paramUri);
          }
          return localInputStream;
        }
      }
      finally
      {
        if (localCursor != null) {
          localCursor.close();
        }
      }
      paramUri = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.w.i.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */