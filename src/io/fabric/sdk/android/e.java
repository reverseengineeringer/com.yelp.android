package io.fabric.sdk.android;

import android.os.SystemClock;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

class e
  implements Callable<Map<String, j>>
{
  final String a;
  
  e(String paramString)
  {
    a = paramString;
  }
  
  /* Error */
  private j a(ZipEntry paramZipEntry, ZipFile paramZipFile)
  {
    // Byte code:
    //   0: aload_2
    //   1: aload_1
    //   2: invokevirtual 26	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   5: astore_3
    //   6: aload_3
    //   7: astore_2
    //   8: new 28	java/util/Properties
    //   11: dup
    //   12: invokespecial 29	java/util/Properties:<init>	()V
    //   15: astore 6
    //   17: aload_3
    //   18: astore_2
    //   19: aload 6
    //   21: aload_3
    //   22: invokevirtual 33	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   25: aload_3
    //   26: astore_2
    //   27: aload 6
    //   29: ldc 35
    //   31: invokevirtual 39	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   34: astore 4
    //   36: aload_3
    //   37: astore_2
    //   38: aload 6
    //   40: ldc 41
    //   42: invokevirtual 39	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   45: astore 5
    //   47: aload_3
    //   48: astore_2
    //   49: aload 6
    //   51: ldc 43
    //   53: invokevirtual 39	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   56: astore 6
    //   58: aload_3
    //   59: astore_2
    //   60: aload 4
    //   62: invokestatic 49	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   65: ifne +13 -> 78
    //   68: aload_3
    //   69: astore_2
    //   70: aload 5
    //   72: invokestatic 49	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   75: ifeq +79 -> 154
    //   78: aload_3
    //   79: astore_2
    //   80: new 51	java/lang/IllegalStateException
    //   83: dup
    //   84: new 53	java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   91: ldc 56
    //   93: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: aload_1
    //   97: invokevirtual 66	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   100: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   106: invokespecial 71	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   109: athrow
    //   110: astore 4
    //   112: aload_3
    //   113: astore_2
    //   114: invokestatic 77	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   117: ldc 79
    //   119: new 53	java/lang/StringBuilder
    //   122: dup
    //   123: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   126: ldc 81
    //   128: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: aload_1
    //   132: invokevirtual 66	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   135: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   141: aload 4
    //   143: invokeinterface 87 4 0
    //   148: aload_3
    //   149: invokestatic 92	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;)V
    //   152: aconst_null
    //   153: areturn
    //   154: aload_3
    //   155: astore_2
    //   156: new 94	io/fabric/sdk/android/j
    //   159: dup
    //   160: aload 4
    //   162: aload 5
    //   164: aload 6
    //   166: invokespecial 97	io/fabric/sdk/android/j:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   169: astore 4
    //   171: aload_3
    //   172: invokestatic 92	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;)V
    //   175: aload 4
    //   177: areturn
    //   178: astore_1
    //   179: aconst_null
    //   180: astore_2
    //   181: aload_2
    //   182: invokestatic 92	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;)V
    //   185: aload_1
    //   186: athrow
    //   187: astore_1
    //   188: goto -7 -> 181
    //   191: astore 4
    //   193: aconst_null
    //   194: astore_3
    //   195: goto -83 -> 112
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	198	0	this	e
    //   0	198	1	paramZipEntry	ZipEntry
    //   0	198	2	paramZipFile	ZipFile
    //   5	190	3	localInputStream	java.io.InputStream
    //   34	27	4	str1	String
    //   110	51	4	localIOException1	IOException
    //   169	7	4	localj	j
    //   191	1	4	localIOException2	IOException
    //   45	118	5	str2	String
    //   15	150	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   8	17	110	java/io/IOException
    //   19	25	110	java/io/IOException
    //   27	36	110	java/io/IOException
    //   38	47	110	java/io/IOException
    //   49	58	110	java/io/IOException
    //   60	68	110	java/io/IOException
    //   70	78	110	java/io/IOException
    //   80	110	110	java/io/IOException
    //   156	171	110	java/io/IOException
    //   0	6	178	finally
    //   8	17	187	finally
    //   19	25	187	finally
    //   27	36	187	finally
    //   38	47	187	finally
    //   49	58	187	finally
    //   60	68	187	finally
    //   70	78	187	finally
    //   80	110	187	finally
    //   114	148	187	finally
    //   156	171	187	finally
    //   0	6	191	java/io/IOException
  }
  
  public Map<String, j> a()
    throws Exception
  {
    HashMap localHashMap = new HashMap();
    long l = SystemClock.elapsedRealtime();
    ZipFile localZipFile = b();
    Enumeration localEnumeration = localZipFile.entries();
    int i = 0;
    while (localEnumeration.hasMoreElements())
    {
      Object localObject = (ZipEntry)localEnumeration.nextElement();
      if (((ZipEntry)localObject).getName().startsWith("fabric/"))
      {
        localObject = a((ZipEntry)localObject, localZipFile);
        if (localObject != null)
        {
          localHashMap.put(((j)localObject).a(), localObject);
          c.h().b("Fabric", String.format("Found kit:[%s] version:[%s]", new Object[] { ((j)localObject).a(), ((j)localObject).b() }));
        }
      }
      i += 1;
    }
    if (localZipFile != null) {}
    try
    {
      localZipFile.close();
      c.h().b("Fabric", "finish scanning in " + (SystemClock.elapsedRealtime() - l) + " reading:" + i);
      return localHashMap;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  protected ZipFile b()
    throws IOException
  {
    return new ZipFile(a);
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */