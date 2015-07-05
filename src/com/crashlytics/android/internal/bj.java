package com.crashlytics.android.internal;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class bj
{
  private final File a;
  private final String b;
  private bp c;
  private File d;
  private File e;
  
  public bj(File paramFile, String paramString1, String paramString2)
  {
    a = paramFile;
    b = paramString2;
    d = new File(paramFile, paramString1);
    c = new bp(d);
    e = new File(a, b);
    if (!e.exists()) {
      e.mkdirs();
    }
  }
  
  public int a()
  {
    return c.a();
  }
  
  public List<File> a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    File[] arrayOfFile = e.listFiles();
    int i = arrayOfFile.length;
    paramInt = 0;
    for (;;)
    {
      if (paramInt < i)
      {
        localArrayList.add(arrayOfFile[paramInt]);
        if (localArrayList.size() <= 0) {}
      }
      else
      {
        return localArrayList;
      }
      paramInt += 1;
    }
  }
  
  /* Error */
  public void a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 35	com/crashlytics/android/internal/bj:c	Lcom/crashlytics/android/internal/bp;
    //   6: invokevirtual 71	com/crashlytics/android/internal/bp:close	()V
    //   9: aload_0
    //   10: getfield 28	com/crashlytics/android/internal/bj:d	Ljava/io/File;
    //   13: astore 5
    //   15: new 23	java/io/File
    //   18: dup
    //   19: aload_0
    //   20: getfield 37	com/crashlytics/android/internal/bj:e	Ljava/io/File;
    //   23: aload_1
    //   24: invokespecial 26	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   27: astore_1
    //   28: new 73	java/io/FileInputStream
    //   31: dup
    //   32: aload 5
    //   34: invokespecial 74	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   37: astore_2
    //   38: new 76	java/util/zip/GZIPOutputStream
    //   41: dup
    //   42: new 78	java/io/FileOutputStream
    //   45: dup
    //   46: aload_1
    //   47: invokespecial 79	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   50: invokespecial 82	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   53: astore_1
    //   54: aload_2
    //   55: aload_1
    //   56: sipush 1024
    //   59: newarray <illegal type>
    //   61: invokestatic 87	com/crashlytics/android/internal/bd:a	(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    //   64: aload_2
    //   65: ldc 89
    //   67: invokestatic 92	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   70: aload_1
    //   71: ldc 94
    //   73: invokestatic 92	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   76: aload 5
    //   78: invokevirtual 97	java/io/File:delete	()Z
    //   81: pop
    //   82: aload_0
    //   83: new 30	com/crashlytics/android/internal/bp
    //   86: dup
    //   87: aload_0
    //   88: getfield 28	com/crashlytics/android/internal/bj:d	Ljava/io/File;
    //   91: invokespecial 33	com/crashlytics/android/internal/bp:<init>	(Ljava/io/File;)V
    //   94: putfield 35	com/crashlytics/android/internal/bj:c	Lcom/crashlytics/android/internal/bp;
    //   97: return
    //   98: astore_1
    //   99: aconst_null
    //   100: astore_2
    //   101: aload_2
    //   102: ldc 89
    //   104: invokestatic 92	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   107: aload_3
    //   108: ldc 94
    //   110: invokestatic 92	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   113: aload 5
    //   115: invokevirtual 97	java/io/File:delete	()Z
    //   118: pop
    //   119: aload_1
    //   120: athrow
    //   121: astore_1
    //   122: goto -21 -> 101
    //   125: astore 4
    //   127: aload_1
    //   128: astore_3
    //   129: aload 4
    //   131: astore_1
    //   132: goto -31 -> 101
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	this	bj
    //   0	135	1	paramString	String
    //   37	65	2	localFileInputStream	java.io.FileInputStream
    //   1	128	3	localObject1	Object
    //   125	5	4	localObject2	Object
    //   13	101	5	localFile	File
    // Exception table:
    //   from	to	target	type
    //   28	38	98	finally
    //   38	54	121	finally
    //   54	64	125	finally
  }
  
  public void a(List<File> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      File localFile = (File)paramList.next();
      bd.c(String.format("deleting sent analytics file %s", new Object[] { localFile.getName() }));
      localFile.delete();
    }
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    c.a(paramArrayOfByte);
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    return c.a(paramInt1, paramInt2);
  }
  
  public boolean b()
  {
    return c.b();
  }
  
  public List<File> c()
  {
    return Arrays.asList(e.listFiles());
  }
  
  public void d()
  {
    try
    {
      c.close();
      d.delete();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */