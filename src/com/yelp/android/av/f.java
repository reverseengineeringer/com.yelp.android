package com.yelp.android.av;

import com.yelp.android.analytics.b;
import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import java.io.File;
import java.util.List;
import org.apache.http.util.EncodingUtils;
import org.json.JSONObject;

public class f
  extends g<Void, Void, Void>
{
  private static final byte[] c = EncodingUtils.getAsciiBytes("data");
  private static final byte[] d = EncodingUtils.getAsciiBytes("application/gzip");
  List<b> a;
  File b;
  
  public f(List<b> paramList, m<Void> paramm)
  {
    super(ApiRequest.RequestType.POST, "analytics", paramm);
    a = paramList;
  }
  
  public Void a(JSONObject paramJSONObject)
  {
    return null;
  }
  
  public void a(File paramFile)
  {
    b = paramFile;
  }
  
  /* Error */
  public org.apache.http.HttpEntity getPostEntity()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 51	com/yelp/android/av/f:b	Ljava/io/File;
    //   4: ifnull +141 -> 145
    //   7: aload_0
    //   8: getfield 51	com/yelp/android/av/f:b	Ljava/io/File;
    //   11: invokevirtual 63	java/io/File:exists	()Z
    //   14: ifeq +131 -> 145
    //   17: new 65	org/json/JSONArray
    //   20: dup
    //   21: aload_0
    //   22: getfield 51	com/yelp/android/av/f:b	Ljava/io/File;
    //   25: invokestatic 70	com/yelp/android/util/StringUtils:a	(Ljava/io/File;)Ljava/lang/String;
    //   28: invokespecial 73	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   31: astore_1
    //   32: aload_0
    //   33: getfield 45	com/yelp/android/av/f:a	Ljava/util/List;
    //   36: iconst_0
    //   37: aload_1
    //   38: invokestatic 78	com/yelp/android/av/a:a	(Ljava/util/List;ZLorg/json/JSONArray;)Ljava/lang/String;
    //   41: astore_2
    //   42: new 80	java/io/ByteArrayOutputStream
    //   45: dup
    //   46: invokespecial 82	java/io/ByteArrayOutputStream:<init>	()V
    //   49: astore_1
    //   50: new 84	java/util/zip/GZIPOutputStream
    //   53: dup
    //   54: aload_1
    //   55: invokespecial 87	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   58: astore_3
    //   59: aload_3
    //   60: aload_2
    //   61: invokevirtual 93	java/lang/String:getBytes	()[B
    //   64: invokevirtual 97	java/util/zip/GZIPOutputStream:write	([B)V
    //   67: aload_3
    //   68: invokevirtual 100	java/util/zip/GZIPOutputStream:close	()V
    //   71: aload_1
    //   72: invokevirtual 103	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   75: astore_1
    //   76: new 105	java/util/LinkedList
    //   79: dup
    //   80: invokespecial 106	java/util/LinkedList:<init>	()V
    //   83: astore_2
    //   84: aload_2
    //   85: new 108	com/yelp/android/util/q
    //   88: dup
    //   89: getstatic 25	com/yelp/android/av/f:c	[B
    //   92: getstatic 25	com/yelp/android/av/f:c	[B
    //   95: getstatic 29	com/yelp/android/av/f:d	[B
    //   98: new 110	java/io/ByteArrayInputStream
    //   101: dup
    //   102: aload_1
    //   103: invokespecial 112	java/io/ByteArrayInputStream:<init>	([B)V
    //   106: aload_1
    //   107: arraylength
    //   108: i2l
    //   109: invokespecial 115	com/yelp/android/util/q:<init>	([B[B[BLjava/io/InputStream;J)V
    //   112: invokevirtual 119	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   115: pop
    //   116: new 121	com/yelp/android/util/p
    //   119: dup
    //   120: invokestatic 127	java/util/Collections:emptyList	()Ljava/util/List;
    //   123: aload_2
    //   124: aconst_null
    //   125: invokespecial 130	com/yelp/android/util/p:<init>	(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/n;)V
    //   128: areturn
    //   129: astore_1
    //   130: aconst_null
    //   131: astore_1
    //   132: goto -100 -> 32
    //   135: astore_1
    //   136: aconst_null
    //   137: astore_1
    //   138: goto -106 -> 32
    //   141: astore_2
    //   142: goto -71 -> 71
    //   145: aconst_null
    //   146: astore_1
    //   147: goto -115 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	150	0	this	f
    //   31	76	1	localObject1	Object
    //   129	1	1	localIOException1	java.io.IOException
    //   131	1	1	localObject2	Object
    //   135	1	1	localJSONException	org.json.JSONException
    //   137	10	1	localObject3	Object
    //   41	83	2	localObject4	Object
    //   141	1	2	localIOException2	java.io.IOException
    //   58	10	3	localGZIPOutputStream	java.util.zip.GZIPOutputStream
    // Exception table:
    //   from	to	target	type
    //   17	32	129	java/io/IOException
    //   17	32	135	org/json/JSONException
    //   50	71	141	java/io/IOException
  }
  
  public boolean sendMetricsForRequest()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */