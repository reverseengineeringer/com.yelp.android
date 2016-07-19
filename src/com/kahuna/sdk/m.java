package com.kahuna.sdk;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class m
{
  int a;
  private final String b = "kahuna-httpurlconnection/1.0";
  
  public static String a(Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramMap != null)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      int i = 1;
      for (;;)
      {
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (i == 0) {
            localStringBuilder.append('&');
          }
          try
          {
            localStringBuilder.append(str).append('=').append(URLEncoder.encode((String)paramMap.get(str), "UTF-8"));
            i = 0;
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            for (;;)
            {
              Log.e("Kahuna", "UTF-8 encoding error");
            }
          }
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  /* Error */
  public void a(android.content.Context paramContext, String paramString1, g[] paramArrayOfg, RequestParams paramRequestParams, String paramString2, n paramn)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: aconst_null
    //   4: astore 11
    //   6: aconst_null
    //   7: astore_1
    //   8: aconst_null
    //   9: astore 9
    //   11: new 94	java/net/URL
    //   14: dup
    //   15: aload_2
    //   16: invokespecial 97	java/net/URL:<init>	(Ljava/lang/String;)V
    //   19: invokevirtual 101	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   22: checkcast 103	java/net/HttpURLConnection
    //   25: astore_2
    //   26: aload_2
    //   27: aload_0
    //   28: getfield 85	com/kahuna/sdk/m:a	I
    //   31: invokevirtual 106	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   34: aload_2
    //   35: aload_0
    //   36: getfield 85	com/kahuna/sdk/m:a	I
    //   39: invokevirtual 109	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   42: aload_2
    //   43: ldc 111
    //   45: invokevirtual 114	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   48: aload_2
    //   49: iconst_1
    //   50: invokevirtual 118	java/net/HttpURLConnection:setDoInput	(Z)V
    //   53: aload_2
    //   54: iconst_1
    //   55: invokevirtual 121	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   58: aload_2
    //   59: ldc 123
    //   61: ldc 14
    //   63: invokevirtual 127	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   66: aload 5
    //   68: invokestatic 132	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
    //   71: ifne +11 -> 82
    //   74: aload_2
    //   75: ldc -122
    //   77: aload 5
    //   79: invokevirtual 127	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   82: aload_3
    //   83: ifnull +47 -> 130
    //   86: aload_3
    //   87: arraylength
    //   88: istore 8
    //   90: iconst_0
    //   91: istore 7
    //   93: iload 7
    //   95: iload 8
    //   97: if_icmpge +33 -> 130
    //   100: aload_3
    //   101: iload 7
    //   103: aaload
    //   104: astore_1
    //   105: aload_2
    //   106: aload_1
    //   107: invokeinterface 138 1 0
    //   112: aload_1
    //   113: invokeinterface 140 1 0
    //   118: invokevirtual 127	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   121: iload 7
    //   123: iconst_1
    //   124: iadd
    //   125: istore 7
    //   127: goto -34 -> 93
    //   130: aload 4
    //   132: invokevirtual 146	com/kahuna/sdk/RequestParams:getUrlParams	()Ljava/util/Map;
    //   135: invokestatic 148	com/kahuna/sdk/m:a	(Ljava/util/Map;)Ljava/lang/String;
    //   138: astore_1
    //   139: aload_2
    //   140: invokevirtual 152	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   143: astore_3
    //   144: new 154	java/io/BufferedWriter
    //   147: dup
    //   148: new 156	java/io/OutputStreamWriter
    //   151: dup
    //   152: aload_3
    //   153: ldc 60
    //   155: invokespecial 159	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   158: invokespecial 162	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   161: astore 4
    //   163: aload 4
    //   165: aload_1
    //   166: invokevirtual 165	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   169: aload 4
    //   171: invokevirtual 168	java/io/BufferedWriter:flush	()V
    //   174: aload 4
    //   176: invokevirtual 171	java/io/BufferedWriter:close	()V
    //   179: aload_3
    //   180: invokevirtual 174	java/io/OutputStream:close	()V
    //   183: new 176	java/io/BufferedReader
    //   186: dup
    //   187: new 178	java/io/InputStreamReader
    //   190: dup
    //   191: aload_2
    //   192: invokevirtual 182	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   195: invokespecial 185	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   198: invokespecial 188	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   201: astore_1
    //   202: new 190	java/lang/StringBuffer
    //   205: dup
    //   206: invokespecial 191	java/lang/StringBuffer:<init>	()V
    //   209: astore_3
    //   210: aload_1
    //   211: invokevirtual 194	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   214: astore 4
    //   216: aload 4
    //   218: ifnull +54 -> 272
    //   221: aload_3
    //   222: aload 4
    //   224: invokevirtual 197	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   227: pop
    //   228: aload_3
    //   229: bipush 13
    //   231: invokevirtual 200	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   234: pop
    //   235: goto -25 -> 210
    //   238: astore_3
    //   239: aload_2
    //   240: astore_1
    //   241: aload 6
    //   243: aload_3
    //   244: aload_3
    //   245: invokevirtual 203	java/net/MalformedURLException:getMessage	()Ljava/lang/String;
    //   248: invokevirtual 208	com/kahuna/sdk/n:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   251: aload_2
    //   252: astore_1
    //   253: ldc 68
    //   255: aload_3
    //   256: invokevirtual 203	java/net/MalformedURLException:getMessage	()Ljava/lang/String;
    //   259: invokestatic 76	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   262: pop
    //   263: aload_2
    //   264: ifnull +7 -> 271
    //   267: aload_2
    //   268: invokevirtual 211	java/net/HttpURLConnection:disconnect	()V
    //   271: return
    //   272: aload_1
    //   273: invokevirtual 212	java/io/BufferedReader:close	()V
    //   276: aload 6
    //   278: aload_3
    //   279: invokevirtual 213	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   282: invokevirtual 215	com/kahuna/sdk/n:a	(Ljava/lang/String;)V
    //   285: aload_2
    //   286: ifnull -15 -> 271
    //   289: aload_2
    //   290: invokevirtual 211	java/net/HttpURLConnection:disconnect	()V
    //   293: return
    //   294: astore_3
    //   295: aload 10
    //   297: astore_2
    //   298: aload_2
    //   299: astore_1
    //   300: aload 6
    //   302: aload_3
    //   303: aload_3
    //   304: invokevirtual 216	java/io/IOException:getMessage	()Ljava/lang/String;
    //   307: invokevirtual 208	com/kahuna/sdk/n:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   310: aload_2
    //   311: astore_1
    //   312: ldc 68
    //   314: aload_3
    //   315: invokevirtual 216	java/io/IOException:getMessage	()Ljava/lang/String;
    //   318: invokestatic 76	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   321: pop
    //   322: aload_2
    //   323: ifnull -52 -> 271
    //   326: aload_2
    //   327: invokevirtual 211	java/net/HttpURLConnection:disconnect	()V
    //   330: return
    //   331: astore_3
    //   332: aload 11
    //   334: astore_2
    //   335: aload_2
    //   336: astore_1
    //   337: aload 6
    //   339: aload_3
    //   340: aload_3
    //   341: invokevirtual 217	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   344: invokevirtual 208	com/kahuna/sdk/n:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   347: aload_2
    //   348: astore_1
    //   349: ldc 68
    //   351: aload_3
    //   352: invokevirtual 217	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   355: invokestatic 76	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   358: pop
    //   359: aload_2
    //   360: ifnull -89 -> 271
    //   363: aload_2
    //   364: invokevirtual 211	java/net/HttpURLConnection:disconnect	()V
    //   367: return
    //   368: astore_3
    //   369: aload_1
    //   370: astore_2
    //   371: aload_3
    //   372: astore_1
    //   373: aload_2
    //   374: ifnull +7 -> 381
    //   377: aload_2
    //   378: invokevirtual 211	java/net/HttpURLConnection:disconnect	()V
    //   381: aload_1
    //   382: athrow
    //   383: astore_1
    //   384: goto -11 -> 373
    //   387: astore_3
    //   388: goto -53 -> 335
    //   391: astore_3
    //   392: goto -94 -> 298
    //   395: astore_3
    //   396: aload 9
    //   398: astore_2
    //   399: goto -160 -> 239
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	402	0	this	m
    //   0	402	1	paramContext	android.content.Context
    //   0	402	2	paramString1	String
    //   0	402	3	paramArrayOfg	g[]
    //   0	402	4	paramRequestParams	RequestParams
    //   0	402	5	paramString2	String
    //   0	402	6	paramn	n
    //   91	35	7	i	int
    //   88	10	8	j	int
    //   9	388	9	localObject1	Object
    //   1	295	10	localObject2	Object
    //   4	329	11	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   26	82	238	java/net/MalformedURLException
    //   86	90	238	java/net/MalformedURLException
    //   105	121	238	java/net/MalformedURLException
    //   130	210	238	java/net/MalformedURLException
    //   210	216	238	java/net/MalformedURLException
    //   221	235	238	java/net/MalformedURLException
    //   272	285	238	java/net/MalformedURLException
    //   11	26	294	java/io/IOException
    //   11	26	331	java/lang/Throwable
    //   11	26	368	finally
    //   241	251	368	finally
    //   253	263	368	finally
    //   300	310	368	finally
    //   312	322	368	finally
    //   337	347	368	finally
    //   349	359	368	finally
    //   26	82	383	finally
    //   86	90	383	finally
    //   105	121	383	finally
    //   130	210	383	finally
    //   210	216	383	finally
    //   221	235	383	finally
    //   272	285	383	finally
    //   26	82	387	java/lang/Throwable
    //   86	90	387	java/lang/Throwable
    //   105	121	387	java/lang/Throwable
    //   130	210	387	java/lang/Throwable
    //   210	216	387	java/lang/Throwable
    //   221	235	387	java/lang/Throwable
    //   272	285	387	java/lang/Throwable
    //   26	82	391	java/io/IOException
    //   86	90	391	java/io/IOException
    //   105	121	391	java/io/IOException
    //   130	210	391	java/io/IOException
    //   210	216	391	java/io/IOException
    //   221	235	391	java/io/IOException
    //   272	285	391	java/io/IOException
    //   11	26	395	java/net/MalformedURLException
  }
  
  public void a(String paramString, RequestParams paramRequestParams, n paramn)
  {
    a(null, paramString, null, paramRequestParams, null, paramn);
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */