package com.yelp.android.t;

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
import java.util.Arrays;
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
  private final LinkedHashMap<String, b> k = new LinkedHashMap(0, 0.75F, true);
  private int l;
  private long m = 0L;
  private final Callable<Void> n = new Callable()
  {
    public Void a()
      throws Exception
    {
      synchronized (a.this)
      {
        if (a.a(a.this) == null) {
          return null;
        }
        a.b(a.this);
        if (a.c(a.this))
        {
          a.d(a.this);
          a.a(a.this, 0);
        }
        return null;
      }
    }
  };
  
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
  
  private a a(String paramString, long paramLong)
    throws IOException
  {
    for (;;)
    {
      a locala;
      try
      {
        f();
        b localb = (b)k.get(paramString);
        if (paramLong != -1L) {
          if (localb != null)
          {
            long l1 = b.e(localb);
            if (l1 == paramLong) {}
          }
          else
          {
            paramString = null;
            return paramString;
          }
        }
        if (localb == null)
        {
          localb = new b(paramString, null);
          k.put(paramString, localb);
          locala = new a(localb, null);
          b.a(localb, locala);
          j.append("DIRTY");
          j.append(' ');
          j.append(paramString);
          j.append('\n');
          j.flush();
          paramString = locala;
          continue;
        }
        locala = b.a(localb);
      }
      finally {}
      if (locala != null) {
        paramString = null;
      }
    }
  }
  
  public static a a(File paramFile, int paramInt1, int paramInt2, long paramLong)
    throws IOException
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
  
  private void a(a parama, boolean paramBoolean)
    throws IOException
  {
    int i3 = 0;
    b localb;
    try
    {
      localb = a.a(parama);
      if (b.a(localb) != parama) {
        throw new IllegalStateException();
      }
    }
    finally {}
    int i2 = i3;
    if (paramBoolean)
    {
      i2 = i3;
      if (!b.d(localb))
      {
        int i1 = 0;
        for (;;)
        {
          i2 = i3;
          if (i1 >= h) {
            break;
          }
          if (a.b(parama)[i1] == 0)
          {
            parama.b();
            throw new IllegalStateException("Newly created entry didn't create value for index " + i1);
          }
          if (!localb.b(i1).exists())
          {
            parama.b();
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
        parama = localb.b(i2);
        if (paramBoolean)
        {
          if (parama.exists())
          {
            File localFile = localb.a(i2);
            parama.renameTo(localFile);
            l1 = b.b(localb)[i2];
            long l2 = localFile.length();
            b.b(localb)[i2] = l2;
            i = (i - l1 + l2);
          }
        }
        else {
          a(parama);
        }
      }
      else
      {
        l += 1;
        b.a(localb, null);
        if ((b.d(localb) | paramBoolean))
        {
          b.a(localb, true);
          j.append("CLEAN");
          j.append(' ');
          j.append(b.c(localb));
          j.append(localb.a());
          j.append('\n');
          if (paramBoolean)
          {
            l1 = m;
            m = (1L + l1);
            b.a(localb, l1);
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
          k.remove(b.c(localb));
          j.append("REMOVE");
          j.append(' ');
          j.append(b.c(localb));
          j.append('\n');
        }
      }
      i2 += 1;
    }
  }
  
  private static void a(File paramFile)
    throws IOException
  {
    if ((paramFile.exists()) && (!paramFile.delete())) {
      throw new IOException();
    }
  }
  
  private static void a(File paramFile1, File paramFile2, boolean paramBoolean)
    throws IOException
  {
    if (paramBoolean) {
      a(paramFile2);
    }
    if (!paramFile1.renameTo(paramFile2)) {
      throw new IOException();
    }
  }
  
  private void b()
    throws IOException
  {
    b localb = new b(new FileInputStream(c), c.a);
    label234:
    try
    {
      String str1 = localb.a();
      String str2 = localb.a();
      String str3 = localb.a();
      String str4 = localb.a();
      String str5 = localb.a();
      if ((!"libcore.io.DiskLruCache".equals(str1)) || (!"1".equals(str2)) || (!Integer.toString(f).equals(str3)) || (!Integer.toString(h).equals(str4)) || (!"".equals(str5))) {
        throw new IOException("unexpected journal header: [" + str1 + ", " + str2 + ", " + str4 + ", " + str5 + "]");
      }
    }
    finally
    {
      c.a(localb);
      throw ((Throwable)localObject);
      int i1 = 0;
      try
      {
        for (;;)
        {
          d(localb.a());
          i1 += 1;
        }
        d();
      }
      catch (EOFException localEOFException)
      {
        l = (i1 - k.size());
        if (!localb.b()) {
          break label234;
        }
      }
      c.a(localb);
      return;
    }
  }
  
  private void c()
    throws IOException
  {
    a(d);
    Iterator localIterator = k.values().iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      int i1;
      if (b.a(localb) == null)
      {
        i1 = 0;
        while (i1 < h)
        {
          i += b.b(localb)[i1];
          i1 += 1;
        }
      }
      else
      {
        b.a(localb, null);
        i1 = 0;
        while (i1 < h)
        {
          a(localb.a(i1));
          a(localb.b(i1));
          i1 += 1;
        }
        localIterator.remove();
      }
    }
  }
  
  private void d()
    throws IOException
  {
    for (;;)
    {
      try
      {
        if (j != null) {
          j.close();
        }
        BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d), c.a));
        b localb;
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
          localb = (b)localIterator.next();
          if (b.a(localb) != null)
          {
            localBufferedWriter.write("DIRTY " + b.c(localb) + '\n');
            continue;
            localObject1 = finally;
          }
        }
        finally
        {
          localBufferedWriter.close();
        }
        ((Writer)localObject1).write("CLEAN " + b.c(localb) + localb.a() + '\n');
      }
      finally {}
    }
    ((Writer)localObject1).close();
    if (c.exists()) {
      a(c, e, true);
    }
    a(d, c, false);
    e.delete();
    j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(c, true), c.a));
  }
  
  private void d(String paramString)
    throws IOException
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
      b localb2 = (b)k.get(str);
      b localb1 = localb2;
      if (localb2 == null)
      {
        localb1 = new b(str, null);
        k.put(str, localb1);
      }
      if ((i3 != -1) && (i1 == "CLEAN".length()) && (paramString.startsWith("CLEAN")))
      {
        paramString = paramString.substring(i3 + 1).split(" ");
        b.a(localb1, true);
        b.a(localb1, null);
        b.a(localb1, paramString);
        return;
      }
      if ((i3 == -1) && (i1 == "DIRTY".length()) && (paramString.startsWith("DIRTY")))
      {
        b.a(localb1, new a(localb1, null));
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
    throws IOException
  {
    while (i > g) {
      c((String)((Map.Entry)k.entrySet().iterator().next()).getKey());
    }
  }
  
  /* Error */
  public c a(String paramString)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: invokespecial 111	com/yelp/android/t/a:f	()V
    //   9: aload_0
    //   10: getfield 52	com/yelp/android/t/a:k	Ljava/util/LinkedHashMap;
    //   13: aload_1
    //   14: invokevirtual 115	java/util/LinkedHashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   17: checkcast 13	com/yelp/android/t/a$b
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
    //   42: invokestatic 230	com/yelp/android/t/a$b:d	(Lcom/yelp/android/t/a$b;)Z
    //   45: ifeq -14 -> 31
    //   48: aload 6
    //   50: getfield 448	com/yelp/android/t/a$b:a	[Ljava/io/File;
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
    //   74: invokevirtual 167	java/io/File:exists	()Z
    //   77: ifeq -46 -> 31
    //   80: iload_2
    //   81: iconst_1
    //   82: iadd
    //   83: istore_2
    //   84: goto -23 -> 61
    //   87: aload_0
    //   88: aload_0
    //   89: getfield 106	com/yelp/android/t/a:l	I
    //   92: iconst_1
    //   93: iadd
    //   94: putfield 106	com/yelp/android/t/a:l	I
    //   97: aload_0
    //   98: getfield 135	com/yelp/android/t/a:j	Ljava/io/Writer;
    //   101: ldc_w 426
    //   104: invokevirtual 143	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   107: pop
    //   108: aload_0
    //   109: getfield 135	com/yelp/android/t/a:j	Ljava/io/Writer;
    //   112: bipush 32
    //   114: invokevirtual 146	java/io/Writer:append	(C)Ljava/io/Writer;
    //   117: pop
    //   118: aload_0
    //   119: getfield 135	com/yelp/android/t/a:j	Ljava/io/Writer;
    //   122: aload_1
    //   123: invokevirtual 143	java/io/Writer:append	(Ljava/lang/CharSequence;)Ljava/io/Writer;
    //   126: pop
    //   127: aload_0
    //   128: getfield 135	com/yelp/android/t/a:j	Ljava/io/Writer;
    //   131: bipush 10
    //   133: invokevirtual 146	java/io/Writer:append	(C)Ljava/io/Writer;
    //   136: pop
    //   137: aload_0
    //   138: invokespecial 274	com/yelp/android/t/a:e	()Z
    //   141: ifeq +15 -> 156
    //   144: aload_0
    //   145: getfield 72	com/yelp/android/t/a:a	Ljava/util/concurrent/ThreadPoolExecutor;
    //   148: aload_0
    //   149: getfield 77	com/yelp/android/t/a:n	Ljava/util/concurrent/Callable;
    //   152: invokevirtual 278	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   155: pop
    //   156: new 16	com/yelp/android/t/a$c
    //   159: dup
    //   160: aload_0
    //   161: aload_1
    //   162: aload 6
    //   164: invokestatic 120	com/yelp/android/t/a$b:e	(Lcom/yelp/android/t/a$b;)J
    //   167: aload 6
    //   169: getfield 448	com/yelp/android/t/a$b:a	[Ljava/io/File;
    //   172: aload 6
    //   174: invokestatic 252	com/yelp/android/t/a$b:b	(Lcom/yelp/android/t/a$b;)[J
    //   177: aconst_null
    //   178: invokespecial 451	com/yelp/android/t/a$c:<init>	(Lcom/yelp/android/t/a;Ljava/lang/String;J[Ljava/io/File;[JLcom/yelp/android/t/a$1;)V
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
    //   20	153	6	localb	b
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
    throws IOException
  {
    close();
    c.a(b);
  }
  
  public a b(String paramString)
    throws IOException
  {
    return a(paramString, -1L);
  }
  
  public boolean c(String paramString)
    throws IOException
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        f();
        b localb = (b)k.get(paramString);
        Object localObject;
        if (localb != null)
        {
          localObject = b.a(localb);
          if (localObject == null) {}
        }
        else
        {
          bool = false;
          return bool;
          i -= b.b(localb)[i1];
          b.b(localb)[i1] = 0L;
          i1 += 1;
        }
        if (i1 < h)
        {
          localObject = localb.a(i1);
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
    throws IOException
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
          b localb = (b)((Iterator)localObject1).next();
          if (b.a(localb) == null) {
            continue;
          }
          b.a(localb).b();
          continue;
        }
        g();
      }
      finally {}
      j.close();
      j = null;
    }
  }
  
  public final class a
  {
    private final a.b b;
    private final boolean[] c;
    private boolean d;
    
    private a(a.b paramb)
    {
      b = paramb;
      if (a.b.d(paramb)) {}
      for (this$1 = null;; this$1 = new boolean[a.e(a.this)])
      {
        c = a.this;
        return;
      }
    }
    
    public File a(int paramInt)
      throws IOException
    {
      synchronized (a.this)
      {
        if (a.b.a(b) != this) {
          throw new IllegalStateException();
        }
      }
      if (!a.b.d(b)) {
        c[paramInt] = true;
      }
      File localFile = b.b(paramInt);
      if (!a.f(a.this).exists()) {
        a.f(a.this).mkdirs();
      }
      return localFile;
    }
    
    public void a()
      throws IOException
    {
      a.a(a.this, this, true);
      d = true;
    }
    
    public void b()
      throws IOException
    {
      a.a(a.this, this, false);
    }
    
    public void c()
    {
      if (!d) {}
      try
      {
        b();
        return;
      }
      catch (IOException localIOException) {}
    }
  }
  
  private final class b
  {
    File[] a;
    File[] b;
    private final String d;
    private final long[] e;
    private boolean f;
    private a.a g;
    private long h;
    
    private b(String paramString)
    {
      d = paramString;
      e = new long[a.e(a.this)];
      a = new File[a.e(a.this)];
      b = new File[a.e(a.this)];
      paramString = new StringBuilder(paramString).append('.');
      int j = paramString.length();
      int i = 0;
      while (i < a.e(a.this))
      {
        paramString.append(i);
        a[i] = new File(a.f(a.this), paramString.toString());
        paramString.append(".tmp");
        b[i] = new File(a.f(a.this), paramString.toString());
        paramString.setLength(j);
        i += 1;
      }
    }
    
    private void a(String[] paramArrayOfString)
      throws IOException
    {
      if (paramArrayOfString.length != a.e(a.this)) {
        throw b(paramArrayOfString);
      }
      int i = 0;
      try
      {
        while (i < paramArrayOfString.length)
        {
          e[i] = Long.parseLong(paramArrayOfString[i]);
          i += 1;
        }
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw b(paramArrayOfString);
      }
    }
    
    private IOException b(String[] paramArrayOfString)
      throws IOException
    {
      throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
    }
    
    public File a(int paramInt)
    {
      return a[paramInt];
    }
    
    public String a()
      throws IOException
    {
      StringBuilder localStringBuilder = new StringBuilder();
      long[] arrayOfLong = e;
      int j = arrayOfLong.length;
      int i = 0;
      while (i < j)
      {
        long l = arrayOfLong[i];
        localStringBuilder.append(' ').append(l);
        i += 1;
      }
      return localStringBuilder.toString();
    }
    
    public File b(int paramInt)
    {
      return b[paramInt];
    }
  }
  
  public final class c
  {
    private final String b;
    private final long c;
    private final long[] d;
    private final File[] e;
    
    private c(String paramString, long paramLong, File[] paramArrayOfFile, long[] paramArrayOfLong)
    {
      b = paramString;
      c = paramLong;
      e = paramArrayOfFile;
      d = paramArrayOfLong;
    }
    
    public File a(int paramInt)
    {
      return e[paramInt];
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.t.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */