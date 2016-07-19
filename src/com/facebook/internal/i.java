package com.facebook.internal;

import com.facebook.LoggingBehavior;
import com.facebook.g;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public final class i
{
  static final String a = i.class.getSimpleName();
  private static final AtomicLong b = new AtomicLong();
  private final String c;
  private final d d;
  private final File e;
  private boolean f;
  private boolean g;
  private final Object h;
  private AtomicLong i = new AtomicLong(0L);
  
  public i(String paramString, d paramd)
  {
    c = paramString;
    d = paramd;
    e = new File(g.k(), paramString);
    h = new Object();
    if ((e.mkdirs()) || (e.isDirectory())) {
      a.a(e);
    }
  }
  
  private void a(String paramString, File paramFile)
  {
    if (!paramFile.renameTo(new File(e, u.b(paramString)))) {
      paramFile.delete();
    }
    c();
  }
  
  private void c()
  {
    synchronized (h)
    {
      if (!f)
      {
        f = true;
        g.d().execute(new Runnable()
        {
          public void run()
          {
            i.b(i.this);
          }
        });
      }
      return;
    }
  }
  
  private void d()
  {
    synchronized (h)
    {
      f = false;
      g = true;
    }
    for (;;)
    {
      try
      {
        n.a(LoggingBehavior.CACHE, a, "trim started");
        ??? = new PriorityQueue();
        l1 = 0L;
        long l3 = 0L;
        File[] arrayOfFile = e.listFiles(a.a());
        l2 = l3;
        l4 = l1;
        if (arrayOfFile == null) {
          continue;
        }
        int k = arrayOfFile.length;
        int j = 0;
        l2 = l3;
        l4 = l1;
        if (j >= k) {
          continue;
        }
        File localFile2 = arrayOfFile[j];
        e locale = new e(localFile2);
        ((PriorityQueue)???).add(locale);
        n.a(LoggingBehavior.CACHE, a, "  trim considering time=" + Long.valueOf(locale.b()) + " name=" + locale.a().getName());
        l2 = localFile2.length();
        j += 1;
        l3 = 1L + l3;
        l1 = l2 + l1;
        continue;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      finally
      {
        long l1;
        long l2;
        synchronized (h)
        {
          long l4;
          File localFile1;
          g = false;
          h.notifyAll();
          throw ((Throwable)localObject4);
        }
      }
      if ((l4 <= d.a()) && (l1 <= d.b())) {
        continue;
      }
      localFile1 = ((e)((PriorityQueue)???).remove()).a();
      n.a(LoggingBehavior.CACHE, a, "  trim removing " + localFile1.getName());
      l4 -= localFile1.length();
      localFile1.delete();
      l1 -= 1L;
    }
    synchronized (h)
    {
      g = false;
      h.notifyAll();
      return;
    }
  }
  
  public InputStream a(String paramString)
    throws IOException
  {
    return a(paramString, null);
  }
  
  public InputStream a(String paramString, InputStream paramInputStream)
    throws IOException
  {
    return new c(paramInputStream, b(paramString));
  }
  
  public InputStream a(String paramString1, String paramString2)
    throws IOException
  {
    File localFile = new File(e, u.b(paramString1));
    try
    {
      Object localObject = new FileInputStream(localFile);
      localObject = new BufferedInputStream((InputStream)localObject, 8192);
      try
      {
        JSONObject localJSONObject = g.a((InputStream)localObject);
        if (localJSONObject == null) {
          return null;
        }
        String str = localJSONObject.optString("key");
        boolean bool;
        if (str != null)
        {
          bool = str.equals(paramString1);
          if (bool) {}
        }
        else
        {
          return null;
        }
        paramString1 = localJSONObject.optString("tag", null);
        if ((paramString2 != null) || (paramString1 == null))
        {
          if (paramString2 != null)
          {
            bool = paramString2.equals(paramString1);
            if (bool) {}
          }
        }
        else {
          return null;
        }
        long l = new Date().getTime();
        n.a(LoggingBehavior.CACHE, a, "Setting lastModified to " + Long.valueOf(l) + " for " + localFile.getName());
        localFile.setLastModified(l);
        return (InputStream)localObject;
      }
      finally
      {
        ((BufferedInputStream)localObject).close();
      }
      return null;
    }
    catch (IOException paramString1) {}
  }
  
  public void a()
  {
    final File[] arrayOfFile = e.listFiles(a.a());
    i.set(System.currentTimeMillis());
    if (arrayOfFile != null) {
      g.d().execute(new Runnable()
      {
        public void run()
        {
          File[] arrayOfFile = arrayOfFile;
          int j = arrayOfFile.length;
          int i = 0;
          while (i < j)
          {
            arrayOfFile[i].delete();
            i += 1;
          }
        }
      });
    }
  }
  
  public OutputStream b(String paramString)
    throws IOException
  {
    return b(paramString, null);
  }
  
  /* Error */
  public OutputStream b(final String paramString1, String paramString2)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 85	com/facebook/internal/i:e	Ljava/io/File;
    //   4: invokestatic 292	com/facebook/internal/i$a:b	(Ljava/io/File;)Ljava/io/File;
    //   7: astore_3
    //   8: aload_3
    //   9: invokevirtual 114	java/io/File:delete	()Z
    //   12: pop
    //   13: aload_3
    //   14: invokevirtual 295	java/io/File:createNewFile	()Z
    //   17: ifne +34 -> 51
    //   20: new 215	java/io/IOException
    //   23: dup
    //   24: new 166	java/lang/StringBuilder
    //   27: dup
    //   28: invokespecial 167	java/lang/StringBuilder:<init>	()V
    //   31: ldc_w 297
    //   34: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: aload_3
    //   38: invokevirtual 300	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   41: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 195	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokespecial 303	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   50: athrow
    //   51: new 305	java/io/FileOutputStream
    //   54: dup
    //   55: aload_3
    //   56: invokespecial 306	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   59: astore 4
    //   61: new 308	java/io/BufferedOutputStream
    //   64: dup
    //   65: new 19	com/facebook/internal/i$b
    //   68: dup
    //   69: aload 4
    //   71: new 6	com/facebook/internal/i$1
    //   74: dup
    //   75: aload_0
    //   76: invokestatic 276	java/lang/System:currentTimeMillis	()J
    //   79: aload_3
    //   80: aload_1
    //   81: invokespecial 311	com/facebook/internal/i$1:<init>	(Lcom/facebook/internal/i;JLjava/io/File;Ljava/lang/String;)V
    //   84: invokespecial 314	com/facebook/internal/i$b:<init>	(Ljava/io/OutputStream;Lcom/facebook/internal/i$f;)V
    //   87: sipush 8192
    //   90: invokespecial 317	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   93: astore_3
    //   94: new 244	org/json/JSONObject
    //   97: dup
    //   98: invokespecial 318	org/json/JSONObject:<init>	()V
    //   101: astore 4
    //   103: aload 4
    //   105: ldc -14
    //   107: aload_1
    //   108: invokevirtual 322	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   111: pop
    //   112: aload_2
    //   113: invokestatic 325	com/facebook/internal/u:a	(Ljava/lang/String;)Z
    //   116: ifne +12 -> 128
    //   119: aload 4
    //   121: ldc -2
    //   123: aload_2
    //   124: invokevirtual 322	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   127: pop
    //   128: aload_3
    //   129: aload 4
    //   131: invokestatic 328	com/facebook/internal/i$g:a	(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    //   134: aload_3
    //   135: areturn
    //   136: astore_1
    //   137: getstatic 141	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   140: iconst_5
    //   141: getstatic 53	com/facebook/internal/i:a	Ljava/lang/String;
    //   144: new 166	java/lang/StringBuilder
    //   147: dup
    //   148: invokespecial 167	java/lang/StringBuilder:<init>	()V
    //   151: ldc_w 330
    //   154: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: aload_1
    //   158: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   161: invokevirtual 195	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   164: invokestatic 333	com/facebook/internal/n:a	(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    //   167: new 215	java/io/IOException
    //   170: dup
    //   171: aload_1
    //   172: invokevirtual 336	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   175: invokespecial 303	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   178: athrow
    //   179: astore_1
    //   180: getstatic 141	com/facebook/LoggingBehavior:CACHE	Lcom/facebook/LoggingBehavior;
    //   183: iconst_5
    //   184: getstatic 53	com/facebook/internal/i:a	Ljava/lang/String;
    //   187: new 166	java/lang/StringBuilder
    //   190: dup
    //   191: invokespecial 167	java/lang/StringBuilder:<init>	()V
    //   194: ldc_w 338
    //   197: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: aload_1
    //   201: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   204: invokevirtual 195	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   207: invokestatic 333	com/facebook/internal/n:a	(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    //   210: new 215	java/io/IOException
    //   213: dup
    //   214: aload_1
    //   215: invokevirtual 339	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   218: invokespecial 303	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   221: athrow
    //   222: astore_1
    //   223: aload_3
    //   224: invokevirtual 340	java/io/BufferedOutputStream:close	()V
    //   227: aload_1
    //   228: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	0	this	i
    //   0	229	1	paramString1	String
    //   0	229	2	paramString2	String
    //   7	217	3	localObject1	Object
    //   59	71	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   51	61	136	java/io/FileNotFoundException
    //   94	128	179	org/json/JSONException
    //   128	134	179	org/json/JSONException
    //   94	128	222	finally
    //   128	134	222	finally
    //   180	222	222	finally
  }
  
  public String toString()
  {
    return "{FileLruCache: tag:" + c + " file:" + e.getName() + "}";
  }
  
  private static class a
  {
    private static final FilenameFilter a = new FilenameFilter()
    {
      public boolean accept(File paramAnonymousFile, String paramAnonymousString)
      {
        return !paramAnonymousString.startsWith("buffer");
      }
    };
    private static final FilenameFilter b = new FilenameFilter()
    {
      public boolean accept(File paramAnonymousFile, String paramAnonymousString)
      {
        return paramAnonymousString.startsWith("buffer");
      }
    };
    
    static FilenameFilter a()
    {
      return a;
    }
    
    static void a(File paramFile)
    {
      paramFile = paramFile.listFiles(b());
      if (paramFile != null)
      {
        int j = paramFile.length;
        int i = 0;
        while (i < j)
        {
          paramFile[i].delete();
          i += 1;
        }
      }
    }
    
    static File b(File paramFile)
    {
      return new File(paramFile, "buffer" + Long.valueOf(i.b().incrementAndGet()).toString());
    }
    
    static FilenameFilter b()
    {
      return b;
    }
  }
  
  private static class b
    extends OutputStream
  {
    final OutputStream a;
    final i.f b;
    
    b(OutputStream paramOutputStream, i.f paramf)
    {
      a = paramOutputStream;
      b = paramf;
    }
    
    public void close()
      throws IOException
    {
      try
      {
        a.close();
        return;
      }
      finally
      {
        b.a();
      }
    }
    
    public void flush()
      throws IOException
    {
      a.flush();
    }
    
    public void write(int paramInt)
      throws IOException
    {
      a.write(paramInt);
    }
    
    public void write(byte[] paramArrayOfByte)
      throws IOException
    {
      a.write(paramArrayOfByte);
    }
    
    public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      a.write(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
  
  private static final class c
    extends InputStream
  {
    final InputStream a;
    final OutputStream b;
    
    c(InputStream paramInputStream, OutputStream paramOutputStream)
    {
      a = paramInputStream;
      b = paramOutputStream;
    }
    
    public int available()
      throws IOException
    {
      return a.available();
    }
    
    public void close()
      throws IOException
    {
      try
      {
        a.close();
        return;
      }
      finally
      {
        b.close();
      }
    }
    
    public void mark(int paramInt)
    {
      throw new UnsupportedOperationException();
    }
    
    public boolean markSupported()
    {
      return false;
    }
    
    public int read()
      throws IOException
    {
      int i = a.read();
      if (i >= 0) {
        b.write(i);
      }
      return i;
    }
    
    public int read(byte[] paramArrayOfByte)
      throws IOException
    {
      int i = a.read(paramArrayOfByte);
      if (i > 0) {
        b.write(paramArrayOfByte, 0, i);
      }
      return i;
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      paramInt2 = a.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt2 > 0) {
        b.write(paramArrayOfByte, paramInt1, paramInt2);
      }
      return paramInt2;
    }
    
    public void reset()
    {
      try
      {
        throw new UnsupportedOperationException();
      }
      finally {}
    }
    
    public long skip(long paramLong)
      throws IOException
    {
      byte[] arrayOfByte = new byte['Ѐ'];
      int i;
      for (long l = 0L;; l += i) {
        if (l < paramLong)
        {
          i = read(arrayOfByte, 0, (int)Math.min(paramLong - l, arrayOfByte.length));
          if (i >= 0) {}
        }
        else
        {
          return l;
        }
      }
    }
  }
  
  public static final class d
  {
    private int a = 1048576;
    private int b = 1024;
    
    int a()
    {
      return a;
    }
    
    int b()
    {
      return b;
    }
  }
  
  private static final class e
    implements Comparable<e>
  {
    private final File a;
    private final long b;
    
    e(File paramFile)
    {
      a = paramFile;
      b = paramFile.lastModified();
    }
    
    public int a(e parame)
    {
      if (b() < parame.b()) {
        return -1;
      }
      if (b() > parame.b()) {
        return 1;
      }
      return a().compareTo(parame.a());
    }
    
    File a()
    {
      return a;
    }
    
    long b()
    {
      return b;
    }
    
    public boolean equals(Object paramObject)
    {
      return ((paramObject instanceof e)) && (a((e)paramObject) == 0);
    }
    
    public int hashCode()
    {
      return (a.hashCode() + 1073) * 37 + (int)(b % 2147483647L);
    }
  }
  
  private static abstract interface f
  {
    public abstract void a();
  }
  
  private static final class g
  {
    static JSONObject a(InputStream paramInputStream)
      throws IOException
    {
      int k = 0;
      if (paramInputStream.read() != 0) {
        return null;
      }
      int i = 0;
      int j = 0;
      while (i < 3)
      {
        int m = paramInputStream.read();
        if (m == -1)
        {
          n.a(LoggingBehavior.CACHE, i.a, "readHeader: stream.read returned -1 while reading header size");
          return null;
        }
        j = (j << 8) + (m & 0xFF);
        i += 1;
      }
      byte[] arrayOfByte = new byte[j];
      i = k;
      while (i < arrayOfByte.length)
      {
        j = paramInputStream.read(arrayOfByte, i, arrayOfByte.length - i);
        if (j < 1)
        {
          n.a(LoggingBehavior.CACHE, i.a, "readHeader: stream.read stopped at " + Integer.valueOf(i) + " when expected " + arrayOfByte.length);
          return null;
        }
        i += j;
      }
      paramInputStream = new JSONTokener(new String(arrayOfByte));
      try
      {
        paramInputStream = paramInputStream.nextValue();
        if (!(paramInputStream instanceof JSONObject))
        {
          n.a(LoggingBehavior.CACHE, i.a, "readHeader: expected JSONObject, got " + paramInputStream.getClass().getCanonicalName());
          return null;
        }
        paramInputStream = (JSONObject)paramInputStream;
        return paramInputStream;
      }
      catch (JSONException paramInputStream)
      {
        throw new IOException(paramInputStream.getMessage());
      }
    }
    
    static void a(OutputStream paramOutputStream, JSONObject paramJSONObject)
      throws IOException
    {
      paramJSONObject = paramJSONObject.toString().getBytes();
      paramOutputStream.write(0);
      paramOutputStream.write(paramJSONObject.length >> 16 & 0xFF);
      paramOutputStream.write(paramJSONObject.length >> 8 & 0xFF);
      paramOutputStream.write(paramJSONObject.length >> 0 & 0xFF);
      paramOutputStream.write(paramJSONObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */