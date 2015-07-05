package com.yelp.android.o;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class a
  implements Closeable
{
  final ThreadPoolExecutor a = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
  private final File b;
  private final File c;
  private final File d;
  private final File e;
  private final int f;
  private long g;
  private final int h;
  private long i = 0L;
  private Writer j;
  private final LinkedHashMap<String, d> k = new LinkedHashMap(0, 0.75F, true);
  private int l;
  private long m = 0L;
  private final Callable<Void> n = new b(this);
  
  private a(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    b = paramFile;
    f = paramInt1;
    c = new File(paramFile, "journal");
    d = new File(paramFile, "journal.tmp");
    e = new File(paramFile, "journal.bkp");
    h = paramInt2;
    g = paramLong;
  }
  
  public static a a(File paramFile, int paramInt1, int paramInt2, long paramLong)
  {
    if (paramLong <= 0L) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("valueCount <= 0");
    }
    Object localObject = new File(paramFile, "journal.bkp");
    File localFile;
    if (((File)localObject).exists())
    {
      localFile = new File(paramFile, "journal");
      if (!localFile.exists()) {
        break label113;
      }
      ((File)localObject).delete();
    }
    for (;;)
    {
      localObject = new a(paramFile, paramInt1, paramInt2, paramLong);
      if (!c.exists()) {
        break label174;
      }
      try
      {
        ((a)localObject).b();
        ((a)localObject).c();
        return (a)localObject;
      }
      catch (IOException localIOException)
      {
        label113:
        System.out.println("DiskLruCache " + paramFile + " is corrupt: " + localIOException.getMessage() + ", removing");
        ((a)localObject).a();
      }
      a((File)localObject, localFile, false);
    }
    label174:
    paramFile.mkdirs();
    paramFile = new a(paramFile, paramInt1, paramInt2, paramLong);
    paramFile.d();
    return paramFile;
  }
  
  private c a(String paramString, long paramLong)
  {
    for (;;)
    {
      c localc;
      try
      {
        f();
        d locald = (d)k.get(paramString);
        if (paramLong != -1L) {
          if (locald != null)
          {
            long l1 = d.e(locald);
            if (l1 == paramLong) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if (locald == null)
        {
          locald = new d(this, paramString, null);
          k.put(paramString, locald);
          localc = new c(this, locald, null);
          d.a(locald, localc);
          j.append("DIRTY");
          j.append(' ');
          j.append(paramString);
          j.append('\n');
          j.flush();
          paramString = localc;
          continue;
        }
        localc = d.a(locald);
      }
      finally {}
      if (localc != null) {
        paramString = null;
      }
    }
  }
  
  private void a(c paramc, boolean paramBoolean)
  {
    int i3 = 0;
    d locald;
    try
    {
      locald = c.a(paramc);
      if (d.a(locald) != paramc) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    if (paramBoolean)
    {
      i2 = i3;
      if (!d.d(locald))
      {
        int i1 = 0;
        for (;;)
        {
          i2 = i3;
          if (i1 >= h) {
            break;
          }
          if (c.b(paramc)[i1] == 0)
          {
            paramc.b();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i1);
          }
          if (!locald.b(i1).exists())
          {
            paramc.b();
            return;
          }
          i1 += 1;
        }
      }
    }
    for (;;)
    {
      long l1;
      if (i2 < h)
      {
        paramc = locald.b(i2);
        if (paramBoolean)
        {
          if (paramc.exists())
          {
            File localFile = locald.a(i2);
            paramc.renameTo(localFile);
            l1 = d.b(locald)[i2];
            long l2 = localFile.length();
            d.b(locald)[i2] = l2;
            i = (i - l1 + l2);
          }
        }
        else {
          a(paramc);
        }
      }
      else
      {
        l += 1;
        d.a(locald, null);
        if ((d.d(locald) | paramBoolean))
        {
          d.a(locald, true);
          j.append("CLEAN");
          j.append(' ');
          j.append(d.c(locald));
          j.append(locald.a());
          j.append('\n');
          if (paramBoolean)
          {
            l1 = m;
            m = (1L + l1);
            d.a(locald, l1);
          }
        }
        for (;;)
        {
          j.flush();
          if ((i <= g) && (!e())) {
            break;
          }
          a.submit(n);
          break;
          k.remove(d.c(locald));
          j.append("REMOVE");
          j.append(' ');
          j.append(d.c(locald));
          j.append('\n');
        }
      }
      i2 += 1;
    }
  }
  
  private static void a(File paramFile)
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private void b()
  {
    f localf = new f(new FileInputStream(c), h.a);
    label234:
    try
    {
      String str1 = localf.a();
      String str2 = localf.a();
      String str3 = localf.a();
      String str4 = localf.a();
      String str5 = localf.a();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(str2)) || (!Integer.toString(f).equals(str3)) || (!Integer.toString(h).equals(str4)) || (!"".equals(str5))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + str2 + ", " + str4 + ", " + str5 + "]");
      }
    }
    finally
    {
      h.a(localf);
      throw ((Throwable)localObject);
      int i1 = 0;
      try
      {
        for (;;)
        {
          d(localf.a());
          i1 += 1;
        }
        d();
      }
      catch (EOFException localEOFException)
      {
        l = (i1 - k.size());
        if (!localf.b()) {
          break label234;
        }
      }
      h.a(localf);
      return;
    }
  }
  
  private void c()
  {
    a(d);
    Iterator localIterator = k.values().iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      int i1;
      if (d.a(locald) == null)
      {
        i1 = 0;
        while (i1 < h)
        {
          i += d.b(locald)[i1];
          i1 += 1;
        }
      }
      else
      {
        d.a(locald, null);
        i1 = 0;
        while (i1 < h)
        {
          a(locald.a(i1));
          a(locald.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void d()
  {
    for (;;)
    {
      try
      {
        if (j != null) {
          j.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d), h.a));
        d locald;
        try
        {
          localBufferedWriter.write("libcore.io.DiskLruCache");
          localBufferedWriter.write("\n");
          localBufferedWriter.write("1");
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(f));
          localBufferedWriter.write("\n");
          localBufferedWriter.write(Integer.toString(h));
          localBufferedWriter.write("\n");
          localBufferedWriter.write("\n");
          Iterator localIterator = k.values().iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          locald = (d)localIterator.next();
          if (d.a(locald) != null)
          {
            localBufferedWriter.write("DIRTY " + d.c(locald) + '\n');
            continue;
            localObject1 = finally;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
        ((Writer)localObject1).write("CLEAN " + d.c(locald) + locald.a() + '\n');
      }
      finally {}
    }
    ((Writer)localObject1).close();
    if (c.exists()) {
      a(c, e, true);
    }
    a(d, c, false);
    e.delete();
    j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(c, true), h.a));
  }
  
  private void d(String paramString)
  {
    int i1 = paramString.indexOf(' ');
    if (i1 == -1) {
      throw new IOException("unexpected journal line: " + paramString);
    }
    int i2 = i1 + 1;
    int i3 = paramString.indexOf(' ', i2);
    String str;
    if (i3 == -1)
    {
      str = paramString.substring(i2);
      if ((i1 == "REMOVE".length()) && (paramString.startsWith("REMOVE"))) {
        k.remove(str);
      }
    }
    else
    {
      str = paramString.substring(i2, i3);
    }
    for (;;)
    {
      d locald2 = (d)k.get(str);
      d locald1 = locald2;
      if (locald2 == null)
      {
        locald1 = new d(this, str, null);
        k.put(str, locald1);
      }
      if ((i3 != -1) && (i1 == "CLEAN".length()) && (paramString.startsWith("CLEAN")))
      {
        paramString = paramString.substring(i3 + 1).split(" ");
        d.a(locald1, true);
        d.a(locald1, null);
        d.a(locald1, paramString);
        return;
      }
      if ((i3 == -1) && (i1 == "DIRTY".length()) && (paramString.startsWith("DIRTY")))
      {
        d.a(locald1, new c(this, locald1, null));
        return;
      }
      if ((i3 == -1) && (i1 == "READ".length()) && (paramString.startsWith("READ"))) {
        break;
      }
      throw new IOException("unexpected journal line: " + paramString);
    }
  }
  
  private boolean e()
  {
    return (l >= 2000) && (l >= k.size());
  }
  
  private void f()
  {
    if (j == null) {
      throw new IllegalStateException("cache is closed");
    }
  }
  
  private void g()
  {
    while (i > g) {
      c((String)((Map.Entry)k.entrySet().iterator().next()).getKey());
    }
  }
  
  /* Error */
  public e a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: invokespecial 172	com/yelp/android/o/a:f	()V
    //   9: aload_0
    //   10: getfield 44	com/yelp/android/o/a:k	Ljava/util/LinkedHashMap;
    //   13: aload_1
    //   14: invokevirtual 176	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   17: checkcast 178	com/yelp/android/o/d
    //   20: astore 6
    //   22: aload 6
    //   24: ifnonnull +12 -> 36
    //   27: aload 5
    //   29: astore 4
    //   31: aload_0
    //   32: monitorexit
    //   33: aload 4
    //   35: areturn
    //   36: aload 5
    //   38: astore 4
    //   40: aload 6
    //   42: invokestatic 230	com/yelp/android/o/d:d	(Lcom/yelp/android/o/d;)Z
    //   45: ifeq -14 -> 31
    //   48: aload 6
    //   50: getfield 445	com/yelp/android/o/d:a	[Ljava/io/File;
    //   53: astore 7
    //   55: aload 7
    //   57: arraylength
    //   58: istore_3
    //   59: iconst_0
    //   60: istore_2
    //   61: iload_2
    //   62: iload_3
    //   63: if_icmpge +24 -> 87
    //   66: aload 5
    //   68: astore 4
    //   70: aload 7
    //   72: iload_2
    //   73: aaload
    //   74: invokevirtual 116	java/io/File:exists	()Z
    //   77: ifeq -46 -> 31
    //   80: iload_2
    //   81: iconst_1
    //   82: iadd
    //   83: istore_2
    //   84: goto -23 -> 61
    //   87: aload_0
    //   88: aload_0
    //   89: getfield 100	com/yelp/android/o/a:l	I
    //   92: iconst_1
    //   93: iadd
    //   94: putfield 100	com/yelp/android/o/a:l	I
    //   97: aload_0
    //   98: getfield 200	com/yelp/android/o/a:j	Ljava/io/Writer;
    //   101: ldc_w 423
    //   104: invokevirtual 207	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   107: pop
    //   108: aload_0
    //   109: getfield 200	com/yelp/android/o/a:j	Ljava/io/Writer;
    //   112: bipush 32
    //   114: invokevirtual 210	java/io/Writer:append	(C)Ljava/io/Writer;
    //   117: pop
    //   118: aload_0
    //   119: getfield 200	com/yelp/android/o/a:j	Ljava/io/Writer;
    //   122: aload_1
    //   123: invokevirtual 207	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   126: pop
    //   127: aload_0
    //   128: getfield 200	com/yelp/android/o/a:j	Ljava/io/Writer;
    //   131: bipush 10
    //   133: invokevirtual 210	java/io/Writer:append	(C)Ljava/io/Writer;
    //   136: pop
    //   137: aload_0
    //   138: invokespecial 274	com/yelp/android/o/a:e	()Z
    //   141: ifeq +15 -> 156
    //   144: aload_0
    //   145: getfield 64	com/yelp/android/o/a:a	Ljava/util/concurrent/ThreadPoolExecutor;
    //   148: aload_0
    //   149: getfield 71	com/yelp/android/o/a:n	Ljava/util/concurrent/Callable;
    //   152: invokevirtual 278	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   155: pop
    //   156: new 447	com/yelp/android/o/e
    //   159: dup
    //   160: aload_0
    //   161: aload_1
    //   162: aload 6
    //   164: invokestatic 183	com/yelp/android/o/d:e	(Lcom/yelp/android/o/d;)J
    //   167: aload 6
    //   169: getfield 445	com/yelp/android/o/d:a	[Ljava/io/File;
    //   172: aload 6
    //   174: invokestatic 252	com/yelp/android/o/d:b	(Lcom/yelp/android/o/d;)[J
    //   177: aconst_null
    //   178: invokespecial 450	com/yelp/android/o/e:<init>	(Lcom/yelp/android/o/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/yelp/android/o/b;)V
    //   181: astore 4
    //   183: goto -152 -> 31
    //   186: astore_1
    //   187: aload_0
    //   188: monitorexit
    //   189: aload_1
    //   190: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	a
    //   0	191	1	paramString	String
    //   60	24	2	i1	int
    //   58	6	3	i2	int
    //   29	153	4	localObject1	Object
    //   1	66	5	localObject2	Object
    //   20	153	6	locald	d
    //   53	18	7	arrayOfFile	File[]
    // Exception table:
    //   from	to	target	type
    //   5	22	186	finally
    //   40	59	186	finally
    //   70	80	186	finally
    //   87	156	186	finally
    //   156	183	186	finally
  }
  
  public void a()
  {
    close();
    h.a(b);
  }
  
  public c b(String paramString)
  {
    return a(paramString, -1L);
  }
  
  public boolean c(String paramString)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        f();
        d locald = (d)k.get(paramString);
        Object localObject;
        if (locald != null)
        {
          localObject = d.a(locald);
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
          i -= d.b(locald)[i1];
          d.b(locald)[i1] = 0L;
          i1 += 1;
        }
        if (i1 < h)
        {
          localObject = locald.a(i1);
          if ((!((File)localObject).exists()) || (((File)localObject).delete())) {
            continue;
          }
          throw new IOException("failed to delete " + localObject);
        }
      }
      finally {}
      l += 1;
      j.append("REMOVE");
      j.append(' ');
      j.append(paramString);
      j.append('\n');
      k.remove(paramString);
      if (e()) {
        a.submit(n);
      }
      boolean bool = true;
    }
  }
  
  public void close()
  {
    for (;;)
    {
      try
      {
        Object localObject1 = j;
        if (localObject1 == null) {
          return;
        }
        localObject1 = new ArrayList(k.values()).iterator();
        if (((Iterator)localObject1).hasNext())
        {
          d locald = (d)((Iterator)localObject1).next();
          if (d.a(locald) == null) {
            continue;
          }
          d.a(locald).b();
          continue;
        }
        g();
      }
      finally {}
      j.close();
      j = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.o.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */