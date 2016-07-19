package com.google.android.gms.internal;

import android.os.SystemClock;
import java.io.EOFException;
import java.io.File;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class lx
  implements u
{
  private final Map<String, a> a = new LinkedHashMap(16, 0.75F, true);
  private long b = 0L;
  private final File c;
  private final int d;
  
  public lx(File paramFile)
  {
    this(paramFile, 5242880);
  }
  
  public lx(File paramFile, int paramInt)
  {
    c = paramFile;
    d = paramInt;
  }
  
  static int a(InputStream paramInputStream)
    throws IOException
  {
    return 0x0 | e(paramInputStream) << 0 | e(paramInputStream) << 8 | e(paramInputStream) << 16 | e(paramInputStream) << 24;
  }
  
  private void a(int paramInt)
  {
    if (b + paramInt < d) {}
    label119:
    label229:
    label233:
    for (;;)
    {
      return;
      if (li.b) {
        li.a("Pruning old cache entries.", new Object[0]);
      }
      long l1 = b;
      long l2 = SystemClock.elapsedRealtime();
      Iterator localIterator = a.entrySet().iterator();
      int i = 0;
      a locala;
      if (localIterator.hasNext())
      {
        locala = (a)((Map.Entry)localIterator.next()).getValue();
        if (c(b).delete())
        {
          b -= a;
          localIterator.remove();
          i += 1;
          if ((float)(b + paramInt) >= d * 0.9F) {
            break label229;
          }
        }
      }
      for (;;)
      {
        if (!li.b) {
          break label233;
        }
        li.a("pruned %d files, %d bytes, %d ms", new Object[] { Integer.valueOf(i), Long.valueOf(b - l1), Long.valueOf(SystemClock.elapsedRealtime() - l2) });
        return;
        li.b("Could not delete cache entry for key=%s, filename=%s", new Object[] { b, d(b) });
        break label119;
        break;
      }
    }
  }
  
  static void a(OutputStream paramOutputStream, int paramInt)
    throws IOException
  {
    paramOutputStream.write(paramInt >> 0 & 0xFF);
    paramOutputStream.write(paramInt >> 8 & 0xFF);
    paramOutputStream.write(paramInt >> 16 & 0xFF);
    paramOutputStream.write(paramInt >> 24 & 0xFF);
  }
  
  static void a(OutputStream paramOutputStream, long paramLong)
    throws IOException
  {
    paramOutputStream.write((byte)(int)(paramLong >>> 0));
    paramOutputStream.write((byte)(int)(paramLong >>> 8));
    paramOutputStream.write((byte)(int)(paramLong >>> 16));
    paramOutputStream.write((byte)(int)(paramLong >>> 24));
    paramOutputStream.write((byte)(int)(paramLong >>> 32));
    paramOutputStream.write((byte)(int)(paramLong >>> 40));
    paramOutputStream.write((byte)(int)(paramLong >>> 48));
    paramOutputStream.write((byte)(int)(paramLong >>> 56));
  }
  
  static void a(OutputStream paramOutputStream, String paramString)
    throws IOException
  {
    paramString = paramString.getBytes("UTF-8");
    a(paramOutputStream, paramString.length);
    paramOutputStream.write(paramString, 0, paramString.length);
  }
  
  private void a(String paramString, a parama)
  {
    if (!a.containsKey(paramString)) {}
    a locala;
    long l;
    for (b += a;; b = (a - a + l))
    {
      a.put(paramString, parama);
      return;
      locala = (a)a.get(paramString);
      l = b;
    }
  }
  
  static void a(Map<String, String> paramMap, OutputStream paramOutputStream)
    throws IOException
  {
    if (paramMap != null)
    {
      a(paramOutputStream, paramMap.size());
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        a(paramOutputStream, (String)localEntry.getKey());
        a(paramOutputStream, (String)localEntry.getValue());
      }
    }
    a(paramOutputStream, 0);
  }
  
  private static byte[] a(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      int j = paramInputStream.read(arrayOfByte, i, paramInt - i);
      if (j == -1) {
        break;
      }
      i += j;
    }
    if (i != paramInt) {
      throw new IOException("Expected " + paramInt + " bytes, read " + i + " bytes");
    }
    return arrayOfByte;
  }
  
  static long b(InputStream paramInputStream)
    throws IOException
  {
    return 0L | (e(paramInputStream) & 0xFF) << 0 | (e(paramInputStream) & 0xFF) << 8 | (e(paramInputStream) & 0xFF) << 16 | (e(paramInputStream) & 0xFF) << 24 | (e(paramInputStream) & 0xFF) << 32 | (e(paramInputStream) & 0xFF) << 40 | (e(paramInputStream) & 0xFF) << 48 | (e(paramInputStream) & 0xFF) << 56;
  }
  
  static String c(InputStream paramInputStream)
    throws IOException
  {
    return new String(a(paramInputStream, (int)b(paramInputStream)), "UTF-8");
  }
  
  private String d(String paramString)
  {
    int i = paramString.length() / 2;
    int j = paramString.substring(0, i).hashCode();
    return String.valueOf(j) + String.valueOf(paramString.substring(i).hashCode());
  }
  
  static Map<String, String> d(InputStream paramInputStream)
    throws IOException
  {
    int j = a(paramInputStream);
    if (j == 0) {}
    for (Object localObject = Collections.emptyMap();; localObject = new HashMap(j))
    {
      int i = 0;
      while (i < j)
      {
        ((Map)localObject).put(c(paramInputStream).intern(), c(paramInputStream).intern());
        i += 1;
      }
    }
    return (Map<String, String>)localObject;
  }
  
  private static int e(InputStream paramInputStream)
    throws IOException
  {
    int i = paramInputStream.read();
    if (i == -1) {
      throw new EOFException();
    }
    return i;
  }
  
  private void e(String paramString)
  {
    a locala = (a)a.get(paramString);
    if (locala != null)
    {
      b -= a;
      a.remove(paramString);
    }
  }
  
  /* Error */
  public u.a a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 39	com/google/android/gms/internal/lx:a	Ljava/util/Map;
    //   6: aload_1
    //   7: invokeinterface 167 2 0
    //   12: checkcast 10	com/google/android/gms/internal/lx$a
    //   15: astore 4
    //   17: aload 4
    //   19: ifnonnull +9 -> 28
    //   22: aconst_null
    //   23: astore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_1
    //   27: areturn
    //   28: aload_0
    //   29: aload_1
    //   30: invokevirtual 102	com/google/android/gms/internal/lx:c	(Ljava/lang/String;)Ljava/io/File;
    //   33: astore 5
    //   35: new 13	com/google/android/gms/internal/lx$b
    //   38: dup
    //   39: new 266	java/io/FileInputStream
    //   42: dup
    //   43: aload 5
    //   45: invokespecial 268	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   48: aconst_null
    //   49: invokespecial 271	com/google/android/gms/internal/lx$b:<init>	(Ljava/io/InputStream;Lcom/google/android/gms/internal/lx$1;)V
    //   52: astore_3
    //   53: aload_3
    //   54: astore_2
    //   55: aload_3
    //   56: invokestatic 274	com/google/android/gms/internal/lx$a:a	(Ljava/io/InputStream;)Lcom/google/android/gms/internal/lx$a;
    //   59: pop
    //   60: aload_3
    //   61: astore_2
    //   62: aload 4
    //   64: aload_3
    //   65: aload 5
    //   67: invokevirtual 276	java/io/File:length	()J
    //   70: aload_3
    //   71: invokestatic 279	com/google/android/gms/internal/lx$b:a	(Lcom/google/android/gms/internal/lx$b;)I
    //   74: i2l
    //   75: lsub
    //   76: l2i
    //   77: invokestatic 219	com/google/android/gms/internal/lx:a	(Ljava/io/InputStream;I)[B
    //   80: invokevirtual 282	com/google/android/gms/internal/lx$a:a	([B)Lcom/google/android/gms/internal/u$a;
    //   83: astore 4
    //   85: aload 4
    //   87: astore_2
    //   88: aload_2
    //   89: astore_1
    //   90: aload_3
    //   91: ifnull -67 -> 24
    //   94: aload_3
    //   95: invokevirtual 285	com/google/android/gms/internal/lx$b:close	()V
    //   98: aload_2
    //   99: astore_1
    //   100: goto -76 -> 24
    //   103: astore_1
    //   104: aconst_null
    //   105: astore_1
    //   106: goto -82 -> 24
    //   109: astore 4
    //   111: aconst_null
    //   112: astore_3
    //   113: aload_3
    //   114: astore_2
    //   115: ldc_w 287
    //   118: iconst_2
    //   119: anewarray 4	java/lang/Object
    //   122: dup
    //   123: iconst_0
    //   124: aload 5
    //   126: invokevirtual 290	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   129: aastore
    //   130: dup
    //   131: iconst_1
    //   132: aload 4
    //   134: invokevirtual 291	java/io/IOException:toString	()Ljava/lang/String;
    //   137: aastore
    //   138: invokestatic 133	com/google/android/gms/internal/li:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   141: aload_3
    //   142: astore_2
    //   143: aload_0
    //   144: aload_1
    //   145: invokevirtual 293	com/google/android/gms/internal/lx:b	(Ljava/lang/String;)V
    //   148: aload_3
    //   149: ifnull +7 -> 156
    //   152: aload_3
    //   153: invokevirtual 285	com/google/android/gms/internal/lx$b:close	()V
    //   156: aconst_null
    //   157: astore_1
    //   158: goto -134 -> 24
    //   161: astore_1
    //   162: aconst_null
    //   163: astore_1
    //   164: goto -140 -> 24
    //   167: astore_1
    //   168: aconst_null
    //   169: astore_2
    //   170: aload_2
    //   171: ifnull +7 -> 178
    //   174: aload_2
    //   175: invokevirtual 285	com/google/android/gms/internal/lx$b:close	()V
    //   178: aload_1
    //   179: athrow
    //   180: astore_1
    //   181: aload_0
    //   182: monitorexit
    //   183: aload_1
    //   184: athrow
    //   185: astore_1
    //   186: aconst_null
    //   187: astore_1
    //   188: goto -164 -> 24
    //   191: astore_1
    //   192: goto -22 -> 170
    //   195: astore 4
    //   197: goto -84 -> 113
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	200	0	this	lx
    //   0	200	1	paramString	String
    //   54	121	2	localObject1	Object
    //   52	101	3	localb	b
    //   15	71	4	localObject2	Object
    //   109	24	4	localIOException1	IOException
    //   195	1	4	localIOException2	IOException
    //   33	92	5	localFile	File
    // Exception table:
    //   from	to	target	type
    //   94	98	103	java/io/IOException
    //   35	53	109	java/io/IOException
    //   152	156	161	java/io/IOException
    //   35	53	167	finally
    //   2	17	180	finally
    //   28	35	180	finally
    //   94	98	180	finally
    //   152	156	180	finally
    //   174	178	180	finally
    //   178	180	180	finally
    //   174	178	185	java/io/IOException
    //   55	60	191	finally
    //   62	85	191	finally
    //   115	141	191	finally
    //   143	148	191	finally
    //   55	60	195	java/io/IOException
    //   62	85	195	java/io/IOException
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 43	com/google/android/gms/internal/lx:c	Ljava/io/File;
    //   6: invokevirtual 296	java/io/File:exists	()Z
    //   9: ifne +36 -> 45
    //   12: aload_0
    //   13: getfield 43	com/google/android/gms/internal/lx:c	Ljava/io/File;
    //   16: invokevirtual 299	java/io/File:mkdirs	()Z
    //   19: ifne +23 -> 42
    //   22: ldc_w 301
    //   25: iconst_1
    //   26: anewarray 4	java/lang/Object
    //   29: dup
    //   30: iconst_0
    //   31: aload_0
    //   32: getfield 43	com/google/android/gms/internal/lx:c	Ljava/io/File;
    //   35: invokevirtual 290	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   38: aastore
    //   39: invokestatic 303	com/google/android/gms/internal/li:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: getfield 43	com/google/android/gms/internal/lx:c	Ljava/io/File;
    //   49: invokevirtual 307	java/io/File:listFiles	()[Ljava/io/File;
    //   52: astore 5
    //   54: aload 5
    //   56: ifnull -14 -> 42
    //   59: aload 5
    //   61: arraylength
    //   62: istore_2
    //   63: iconst_0
    //   64: istore_1
    //   65: iload_1
    //   66: iload_2
    //   67: if_icmpge -25 -> 42
    //   70: aload 5
    //   72: iload_1
    //   73: aaload
    //   74: astore 6
    //   76: aconst_null
    //   77: astore_3
    //   78: new 309	java/io/BufferedInputStream
    //   81: dup
    //   82: new 266	java/io/FileInputStream
    //   85: dup
    //   86: aload 6
    //   88: invokespecial 268	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   91: invokespecial 312	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   94: astore 4
    //   96: aload 4
    //   98: astore_3
    //   99: aload 4
    //   101: invokestatic 274	com/google/android/gms/internal/lx$a:a	(Ljava/io/InputStream;)Lcom/google/android/gms/internal/lx$a;
    //   104: astore 7
    //   106: aload 4
    //   108: astore_3
    //   109: aload 7
    //   111: aload 6
    //   113: invokevirtual 276	java/io/File:length	()J
    //   116: putfield 109	com/google/android/gms/internal/lx$a:a	J
    //   119: aload 4
    //   121: astore_3
    //   122: aload_0
    //   123: aload 7
    //   125: getfield 99	com/google/android/gms/internal/lx$a:b	Ljava/lang/String;
    //   128: aload 7
    //   130: invokespecial 314	com/google/android/gms/internal/lx:a	(Ljava/lang/String;Lcom/google/android/gms/internal/lx$a;)V
    //   133: aload 4
    //   135: ifnull +8 -> 143
    //   138: aload 4
    //   140: invokevirtual 315	java/io/BufferedInputStream:close	()V
    //   143: iload_1
    //   144: iconst_1
    //   145: iadd
    //   146: istore_1
    //   147: goto -82 -> 65
    //   150: astore_3
    //   151: aconst_null
    //   152: astore 4
    //   154: aload 6
    //   156: ifnull +12 -> 168
    //   159: aload 4
    //   161: astore_3
    //   162: aload 6
    //   164: invokevirtual 107	java/io/File:delete	()Z
    //   167: pop
    //   168: aload 4
    //   170: ifnull -27 -> 143
    //   173: aload 4
    //   175: invokevirtual 315	java/io/BufferedInputStream:close	()V
    //   178: goto -35 -> 143
    //   181: astore_3
    //   182: goto -39 -> 143
    //   185: astore 5
    //   187: aload_3
    //   188: astore 4
    //   190: aload 5
    //   192: astore_3
    //   193: aload 4
    //   195: ifnull +8 -> 203
    //   198: aload 4
    //   200: invokevirtual 315	java/io/BufferedInputStream:close	()V
    //   203: aload_3
    //   204: athrow
    //   205: astore_3
    //   206: aload_0
    //   207: monitorexit
    //   208: aload_3
    //   209: athrow
    //   210: astore_3
    //   211: goto -68 -> 143
    //   214: astore 4
    //   216: goto -13 -> 203
    //   219: astore 5
    //   221: aload_3
    //   222: astore 4
    //   224: aload 5
    //   226: astore_3
    //   227: goto -34 -> 193
    //   230: astore_3
    //   231: goto -77 -> 154
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	234	0	this	lx
    //   64	83	1	i	int
    //   62	6	2	j	int
    //   77	45	3	localObject1	Object
    //   150	1	3	localIOException1	IOException
    //   161	1	3	localObject2	Object
    //   181	7	3	localIOException2	IOException
    //   192	12	3	localObject3	Object
    //   205	4	3	localObject4	Object
    //   210	12	3	localIOException3	IOException
    //   226	1	3	localObject5	Object
    //   230	1	3	localIOException4	IOException
    //   94	105	4	localObject6	Object
    //   214	1	4	localIOException5	IOException
    //   222	1	4	localIOException6	IOException
    //   52	19	5	arrayOfFile	File[]
    //   185	6	5	localObject7	Object
    //   219	6	5	localObject8	Object
    //   74	89	6	localFile	File
    //   104	25	7	locala	a
    // Exception table:
    //   from	to	target	type
    //   78	96	150	java/io/IOException
    //   173	178	181	java/io/IOException
    //   78	96	185	finally
    //   2	42	205	finally
    //   45	54	205	finally
    //   59	63	205	finally
    //   138	143	205	finally
    //   173	178	205	finally
    //   198	203	205	finally
    //   203	205	205	finally
    //   138	143	210	java/io/IOException
    //   198	203	214	java/io/IOException
    //   99	106	219	finally
    //   109	119	219	finally
    //   122	133	219	finally
    //   162	168	219	finally
    //   99	106	230	java/io/IOException
    //   109	119	230	java/io/IOException
    //   122	133	230	java/io/IOException
  }
  
  /* Error */
  public void a(String paramString, u.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_2
    //   4: getfield 321	com/google/android/gms/internal/u$a:a	[B
    //   7: arraylength
    //   8: invokespecial 323	com/google/android/gms/internal/lx:a	(I)V
    //   11: aload_0
    //   12: aload_1
    //   13: invokevirtual 102	com/google/android/gms/internal/lx:c	(Ljava/lang/String;)Ljava/io/File;
    //   16: astore_3
    //   17: new 325	java/io/FileOutputStream
    //   20: dup
    //   21: aload_3
    //   22: invokespecial 326	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   25: astore 4
    //   27: new 10	com/google/android/gms/internal/lx$a
    //   30: dup
    //   31: aload_1
    //   32: aload_2
    //   33: invokespecial 328	com/google/android/gms/internal/lx$a:<init>	(Ljava/lang/String;Lcom/google/android/gms/internal/u$a;)V
    //   36: astore 5
    //   38: aload 5
    //   40: aload 4
    //   42: invokevirtual 331	com/google/android/gms/internal/lx$a:a	(Ljava/io/OutputStream;)Z
    //   45: ifne +61 -> 106
    //   48: aload 4
    //   50: invokevirtual 332	java/io/FileOutputStream:close	()V
    //   53: ldc_w 334
    //   56: iconst_1
    //   57: anewarray 4	java/lang/Object
    //   60: dup
    //   61: iconst_0
    //   62: aload_3
    //   63: invokevirtual 290	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   66: aastore
    //   67: invokestatic 133	com/google/android/gms/internal/li:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   70: new 48	java/io/IOException
    //   73: dup
    //   74: invokespecial 335	java/io/IOException:<init>	()V
    //   77: athrow
    //   78: astore_1
    //   79: aload_3
    //   80: invokevirtual 107	java/io/File:delete	()Z
    //   83: ifne +20 -> 103
    //   86: ldc_w 337
    //   89: iconst_1
    //   90: anewarray 4	java/lang/Object
    //   93: dup
    //   94: iconst_0
    //   95: aload_3
    //   96: invokevirtual 290	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   99: aastore
    //   100: invokestatic 133	com/google/android/gms/internal/li:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   103: aload_0
    //   104: monitorexit
    //   105: return
    //   106: aload 4
    //   108: aload_2
    //   109: getfield 321	com/google/android/gms/internal/u$a:a	[B
    //   112: invokevirtual 340	java/io/FileOutputStream:write	([B)V
    //   115: aload 4
    //   117: invokevirtual 332	java/io/FileOutputStream:close	()V
    //   120: aload_0
    //   121: aload_1
    //   122: aload 5
    //   124: invokespecial 314	com/google/android/gms/internal/lx:a	(Ljava/lang/String;Lcom/google/android/gms/internal/lx$a;)V
    //   127: goto -24 -> 103
    //   130: astore_1
    //   131: aload_0
    //   132: monitorexit
    //   133: aload_1
    //   134: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	135	0	this	lx
    //   0	135	1	paramString	String
    //   0	135	2	parama	u.a
    //   16	80	3	localFile	File
    //   25	91	4	localFileOutputStream	java.io.FileOutputStream
    //   36	87	5	locala	a
    // Exception table:
    //   from	to	target	type
    //   17	78	78	java/io/IOException
    //   106	127	78	java/io/IOException
    //   2	17	130	finally
    //   17	78	130	finally
    //   79	103	130	finally
    //   106	127	130	finally
  }
  
  public void b(String paramString)
  {
    try
    {
      boolean bool = c(paramString).delete();
      e(paramString);
      if (!bool) {
        li.b("Could not delete cache entry for key=%s, filename=%s", new Object[] { paramString, d(paramString) });
      }
      return;
    }
    finally {}
  }
  
  public File c(String paramString)
  {
    return new File(c, d(paramString));
  }
  
  static class a
  {
    public long a;
    public String b;
    public String c;
    public long d;
    public long e;
    public long f;
    public long g;
    public Map<String, String> h;
    
    private a() {}
    
    public a(String paramString, u.a parama)
    {
      b = paramString;
      a = a.length;
      c = b;
      d = c;
      e = d;
      f = e;
      g = f;
      h = g;
    }
    
    public static a a(InputStream paramInputStream)
      throws IOException
    {
      a locala = new a();
      if (lx.a(paramInputStream) != 538247942) {
        throw new IOException();
      }
      b = lx.c(paramInputStream);
      c = lx.c(paramInputStream);
      if (c.equals("")) {
        c = null;
      }
      d = lx.b(paramInputStream);
      e = lx.b(paramInputStream);
      f = lx.b(paramInputStream);
      g = lx.b(paramInputStream);
      h = lx.d(paramInputStream);
      return locala;
    }
    
    public u.a a(byte[] paramArrayOfByte)
    {
      u.a locala = new u.a();
      a = paramArrayOfByte;
      b = c;
      c = d;
      d = e;
      e = f;
      f = g;
      g = h;
      return locala;
    }
    
    public boolean a(OutputStream paramOutputStream)
    {
      try
      {
        lx.a(paramOutputStream, 538247942);
        lx.a(paramOutputStream, b);
        if (c == null) {}
        for (String str = "";; str = c)
        {
          lx.a(paramOutputStream, str);
          lx.a(paramOutputStream, d);
          lx.a(paramOutputStream, e);
          lx.a(paramOutputStream, f);
          lx.a(paramOutputStream, g);
          lx.a(h, paramOutputStream);
          paramOutputStream.flush();
          return true;
        }
        return false;
      }
      catch (IOException paramOutputStream)
      {
        li.b("%s", new Object[] { paramOutputStream.toString() });
      }
    }
  }
  
  private static class b
    extends FilterInputStream
  {
    private int a = 0;
    
    private b(InputStream paramInputStream)
    {
      super();
    }
    
    public int read()
      throws IOException
    {
      int i = super.read();
      if (i != -1) {
        a += 1;
      }
      return i;
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt1 != -1) {
        a += paramInt1;
      }
      return paramInt1;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */