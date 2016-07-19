package com.crashlytics.android.core;

import java.io.File;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class q
{
  private static final Charset a = Charset.forName("UTF-8");
  private final File b;
  
  public q(File paramFile)
  {
    b = paramFile;
  }
  
  private static String a(y paramy)
    throws JSONException
  {
    new JSONObject() {}.toString();
  }
  
  private static String a(Map<String, String> paramMap)
    throws JSONException
  {
    return new JSONObject(paramMap).toString();
  }
  
  private static String a(JSONObject paramJSONObject, String paramString)
  {
    String str = null;
    if (!paramJSONObject.isNull(paramString)) {
      str = paramJSONObject.optString(paramString, null);
    }
    return str;
  }
  
  private File c(String paramString)
  {
    return new File(b, paramString + "user" + ".meta");
  }
  
  private File d(String paramString)
  {
    return new File(b, paramString + "keys" + ".meta");
  }
  
  private static y e(String paramString)
    throws JSONException
  {
    paramString = new JSONObject(paramString);
    return new y(a(paramString, "userId"), a(paramString, "userName"), a(paramString, "userEmail"));
  }
  
  private static Map<String, String> f(String paramString)
    throws JSONException
  {
    paramString = new JSONObject(paramString);
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramString.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, a(paramString, str));
    }
    return localHashMap;
  }
  
  /* Error */
  public y a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 129	com/crashlytics/android/core/q:c	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore_1
    //   6: aload_1
    //   7: invokevirtual 132	java/io/File:exists	()Z
    //   10: ifne +7 -> 17
    //   13: getstatic 135	com/crashlytics/android/core/y:a	Lcom/crashlytics/android/core/y;
    //   16: areturn
    //   17: new 137	java/io/FileInputStream
    //   20: dup
    //   21: aload_1
    //   22: invokespecial 139	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   25: astore_2
    //   26: aload_2
    //   27: astore_1
    //   28: aload_2
    //   29: invokestatic 144	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   32: invokestatic 146	com/crashlytics/android/core/q:e	(Ljava/lang/String;)Lcom/crashlytics/android/core/y;
    //   35: astore_3
    //   36: aload_2
    //   37: ldc -108
    //   39: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   42: aload_3
    //   43: areturn
    //   44: astore_3
    //   45: aconst_null
    //   46: astore_2
    //   47: aload_2
    //   48: astore_1
    //   49: invokestatic 157	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   52: ldc -97
    //   54: ldc -95
    //   56: aload_3
    //   57: invokeinterface 166 4 0
    //   62: aload_2
    //   63: ldc -108
    //   65: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   68: getstatic 135	com/crashlytics/android/core/y:a	Lcom/crashlytics/android/core/y;
    //   71: areturn
    //   72: astore_2
    //   73: aconst_null
    //   74: astore_1
    //   75: aload_1
    //   76: ldc -108
    //   78: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   81: aload_2
    //   82: athrow
    //   83: astore_2
    //   84: goto -9 -> 75
    //   87: astore_3
    //   88: goto -41 -> 47
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	q
    //   0	91	1	paramString	String
    //   25	38	2	localFileInputStream	java.io.FileInputStream
    //   72	10	2	localObject1	Object
    //   83	1	2	localObject2	Object
    //   35	8	3	localy	y
    //   44	13	3	localException1	Exception
    //   87	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   17	26	44	java/lang/Exception
    //   17	26	72	finally
    //   28	36	83	finally
    //   49	62	83	finally
    //   28	36	87	java/lang/Exception
  }
  
  /* Error */
  public void a(String paramString, y paramy)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 129	com/crashlytics/android/core/q:c	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore 4
    //   7: aconst_null
    //   8: astore_1
    //   9: aload_2
    //   10: invokestatic 169	com/crashlytics/android/core/q:a	(Lcom/crashlytics/android/core/y;)Ljava/lang/String;
    //   13: astore_3
    //   14: new 171	java/io/BufferedWriter
    //   17: dup
    //   18: new 173	java/io/OutputStreamWriter
    //   21: dup
    //   22: new 175	java/io/FileOutputStream
    //   25: dup
    //   26: aload 4
    //   28: invokespecial 176	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   31: getstatic 22	com/crashlytics/android/core/q:a	Ljava/nio/charset/Charset;
    //   34: invokespecial 179	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   37: invokespecial 182	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   40: astore_2
    //   41: aload_2
    //   42: astore_1
    //   43: aload_2
    //   44: aload_3
    //   45: invokevirtual 187	java/io/Writer:write	(Ljava/lang/String;)V
    //   48: aload_2
    //   49: astore_1
    //   50: aload_2
    //   51: invokevirtual 190	java/io/Writer:flush	()V
    //   54: aload_2
    //   55: ldc -108
    //   57: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   60: return
    //   61: astore_3
    //   62: aconst_null
    //   63: astore_2
    //   64: aload_2
    //   65: astore_1
    //   66: invokestatic 157	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   69: ldc -97
    //   71: ldc -64
    //   73: aload_3
    //   74: invokeinterface 166 4 0
    //   79: aload_2
    //   80: ldc -108
    //   82: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   85: return
    //   86: astore_3
    //   87: aload_1
    //   88: astore_2
    //   89: aload_3
    //   90: astore_1
    //   91: aload_2
    //   92: ldc -108
    //   94: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   97: aload_1
    //   98: athrow
    //   99: astore_3
    //   100: aload_1
    //   101: astore_2
    //   102: aload_3
    //   103: astore_1
    //   104: goto -13 -> 91
    //   107: astore_3
    //   108: goto -44 -> 64
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	q
    //   0	111	1	paramString	String
    //   0	111	2	paramy	y
    //   13	32	3	str	String
    //   61	13	3	localException1	Exception
    //   86	4	3	localObject1	Object
    //   99	4	3	localObject2	Object
    //   107	1	3	localException2	Exception
    //   5	22	4	localFile	File
    // Exception table:
    //   from	to	target	type
    //   9	41	61	java/lang/Exception
    //   9	41	86	finally
    //   43	48	99	finally
    //   50	54	99	finally
    //   66	79	99	finally
    //   43	48	107	java/lang/Exception
    //   50	54	107	java/lang/Exception
  }
  
  /* Error */
  public void a(String paramString, Map<String, String> paramMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 195	com/crashlytics/android/core/q:d	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore 4
    //   7: aconst_null
    //   8: astore_1
    //   9: aload_2
    //   10: invokestatic 197	com/crashlytics/android/core/q:a	(Ljava/util/Map;)Ljava/lang/String;
    //   13: astore_3
    //   14: new 171	java/io/BufferedWriter
    //   17: dup
    //   18: new 173	java/io/OutputStreamWriter
    //   21: dup
    //   22: new 175	java/io/FileOutputStream
    //   25: dup
    //   26: aload 4
    //   28: invokespecial 176	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   31: getstatic 22	com/crashlytics/android/core/q:a	Ljava/nio/charset/Charset;
    //   34: invokespecial 179	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   37: invokespecial 182	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   40: astore_2
    //   41: aload_2
    //   42: astore_1
    //   43: aload_2
    //   44: aload_3
    //   45: invokevirtual 187	java/io/Writer:write	(Ljava/lang/String;)V
    //   48: aload_2
    //   49: astore_1
    //   50: aload_2
    //   51: invokevirtual 190	java/io/Writer:flush	()V
    //   54: aload_2
    //   55: ldc -57
    //   57: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   60: return
    //   61: astore_3
    //   62: aconst_null
    //   63: astore_2
    //   64: aload_2
    //   65: astore_1
    //   66: invokestatic 157	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   69: ldc -97
    //   71: ldc -55
    //   73: aload_3
    //   74: invokeinterface 166 4 0
    //   79: aload_2
    //   80: ldc -57
    //   82: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   85: return
    //   86: astore_3
    //   87: aload_1
    //   88: astore_2
    //   89: aload_3
    //   90: astore_1
    //   91: aload_2
    //   92: ldc -57
    //   94: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   97: aload_1
    //   98: athrow
    //   99: astore_3
    //   100: aload_1
    //   101: astore_2
    //   102: aload_3
    //   103: astore_1
    //   104: goto -13 -> 91
    //   107: astore_3
    //   108: goto -44 -> 64
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	q
    //   0	111	1	paramString	String
    //   0	111	2	paramMap	Map<String, String>
    //   13	32	3	str	String
    //   61	13	3	localException1	Exception
    //   86	4	3	localObject1	Object
    //   99	4	3	localObject2	Object
    //   107	1	3	localException2	Exception
    //   5	22	4	localFile	File
    // Exception table:
    //   from	to	target	type
    //   9	41	61	java/lang/Exception
    //   9	41	86	finally
    //   43	48	99	finally
    //   50	54	99	finally
    //   66	79	99	finally
    //   43	48	107	java/lang/Exception
    //   50	54	107	java/lang/Exception
  }
  
  /* Error */
  public Map<String, String> b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 195	com/crashlytics/android/core/q:d	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore_1
    //   6: aload_1
    //   7: invokevirtual 132	java/io/File:exists	()Z
    //   10: ifne +7 -> 17
    //   13: invokestatic 208	java/util/Collections:emptyMap	()Ljava/util/Map;
    //   16: areturn
    //   17: new 137	java/io/FileInputStream
    //   20: dup
    //   21: aload_1
    //   22: invokespecial 139	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   25: astore_2
    //   26: aload_2
    //   27: astore_1
    //   28: aload_2
    //   29: invokestatic 144	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   32: invokestatic 210	com/crashlytics/android/core/q:f	(Ljava/lang/String;)Ljava/util/Map;
    //   35: astore_3
    //   36: aload_2
    //   37: ldc -108
    //   39: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   42: aload_3
    //   43: areturn
    //   44: astore_3
    //   45: aconst_null
    //   46: astore_2
    //   47: aload_2
    //   48: astore_1
    //   49: invokestatic 157	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   52: ldc -97
    //   54: ldc -95
    //   56: aload_3
    //   57: invokeinterface 166 4 0
    //   62: aload_2
    //   63: ldc -108
    //   65: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   68: invokestatic 208	java/util/Collections:emptyMap	()Ljava/util/Map;
    //   71: areturn
    //   72: astore_2
    //   73: aconst_null
    //   74: astore_1
    //   75: aload_1
    //   76: ldc -108
    //   78: invokestatic 151	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   81: aload_2
    //   82: athrow
    //   83: astore_2
    //   84: goto -9 -> 75
    //   87: astore_3
    //   88: goto -41 -> 47
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	q
    //   0	91	1	paramString	String
    //   25	38	2	localFileInputStream	java.io.FileInputStream
    //   72	10	2	localObject1	Object
    //   83	1	2	localObject2	Object
    //   35	8	3	localMap	Map
    //   44	13	3	localException1	Exception
    //   87	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   17	26	44	java/lang/Exception
    //   17	26	72	finally
    //   28	36	83	finally
    //   49	62	83	finally
    //   28	36	87	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */