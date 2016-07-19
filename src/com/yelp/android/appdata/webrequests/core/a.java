package com.yelp.android.appdata.webrequests.core;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import java.io.File;
import java.util.List;
import org.apache.http.util.EncodingUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class a
  extends b<Void, Void, Void>
{
  private static final byte[] h = EncodingUtils.getAsciiBytes("data");
  private static final byte[] i = EncodingUtils.getAsciiBytes("application/gzip");
  List<com.yelp.android.analytics.b> a;
  File g;
  
  public a(com.yelp.android.ui.util.a parama, List<com.yelp.android.analytics.b> paramList, ApiRequest.b<Void> paramb)
  {
    super(ApiRequest.RequestType.POST, "analytics", paramb);
    a = paramList;
    if (parama.a() != null) {
      b("advertiser_id", parama.a());
    }
  }
  
  public Void a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return null;
  }
  
  /* Error */
  public org.apache.http.HttpEntity a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 69	com/yelp/android/appdata/webrequests/core/a:g	Ljava/io/File;
    //   4: ifnull +142 -> 146
    //   7: aload_0
    //   8: getfield 69	com/yelp/android/appdata/webrequests/core/a:g	Ljava/io/File;
    //   11: invokevirtual 75	java/io/File:exists	()Z
    //   14: ifeq +132 -> 146
    //   17: new 77	org/json/JSONArray
    //   20: dup
    //   21: aload_0
    //   22: getfield 69	com/yelp/android/appdata/webrequests/core/a:g	Ljava/io/File;
    //   25: invokestatic 82	com/yelp/android/util/StringUtils:a	(Ljava/io/File;)Ljava/lang/String;
    //   28: invokespecial 85	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   31: astore_1
    //   32: aload_0
    //   33: getfield 45	com/yelp/android/appdata/webrequests/core/a:a	Ljava/util/List;
    //   36: iconst_0
    //   37: aload_1
    //   38: invokestatic 90	com/yelp/android/appdata/webrequests/core/MetricsManager:a	(Ljava/util/List;ZLorg/json/JSONArray;)Ljava/lang/String;
    //   41: astore_2
    //   42: new 92	java/io/ByteArrayOutputStream
    //   45: dup
    //   46: invokespecial 94	java/io/ByteArrayOutputStream:<init>	()V
    //   49: astore_1
    //   50: new 96	java/util/zip/GZIPOutputStream
    //   53: dup
    //   54: aload_1
    //   55: invokespecial 99	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   58: astore_3
    //   59: aload_3
    //   60: aload_2
    //   61: invokevirtual 105	java/lang/String:getBytes	()[B
    //   64: invokevirtual 109	java/util/zip/GZIPOutputStream:write	([B)V
    //   67: aload_3
    //   68: invokevirtual 112	java/util/zip/GZIPOutputStream:close	()V
    //   71: aload_1
    //   72: invokevirtual 115	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   75: astore_1
    //   76: new 117	java/util/LinkedList
    //   79: dup
    //   80: invokespecial 118	java/util/LinkedList:<init>	()V
    //   83: astore_2
    //   84: aload_2
    //   85: new 120	com/yelp/android/util/j$a
    //   88: dup
    //   89: getstatic 25	com/yelp/android/appdata/webrequests/core/a:h	[B
    //   92: getstatic 25	com/yelp/android/appdata/webrequests/core/a:h	[B
    //   95: getstatic 29	com/yelp/android/appdata/webrequests/core/a:i	[B
    //   98: new 122	java/io/ByteArrayInputStream
    //   101: dup
    //   102: aload_1
    //   103: invokespecial 124	java/io/ByteArrayInputStream:<init>	([B)V
    //   106: aload_1
    //   107: arraylength
    //   108: i2l
    //   109: invokespecial 127	com/yelp/android/util/j$a:<init>	([B[B[BLjava/io/InputStream;J)V
    //   112: invokevirtual 131	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   115: pop
    //   116: new 133	com/yelp/android/util/j
    //   119: dup
    //   120: aload_0
    //   121: invokevirtual 137	com/yelp/android/appdata/webrequests/core/a:t	()Ljava/util/List;
    //   124: aload_2
    //   125: aconst_null
    //   126: invokespecial 140	com/yelp/android/util/j:<init>	(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/g$a;)V
    //   129: areturn
    //   130: astore_1
    //   131: aconst_null
    //   132: astore_1
    //   133: goto -101 -> 32
    //   136: astore_1
    //   137: aconst_null
    //   138: astore_1
    //   139: goto -107 -> 32
    //   142: astore_2
    //   143: goto -72 -> 71
    //   146: aconst_null
    //   147: astore_1
    //   148: goto -116 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	a
    //   31	76	1	localObject1	Object
    //   130	1	1	localIOException1	java.io.IOException
    //   132	1	1	localObject2	Object
    //   136	1	1	localJSONException	JSONException
    //   138	10	1	localObject3	Object
    //   41	84	2	localObject4	Object
    //   142	1	2	localIOException2	java.io.IOException
    //   58	10	3	localGZIPOutputStream	java.util.zip.GZIPOutputStream
    // Exception table:
    //   from	to	target	type
    //   17	32	130	java/io/IOException
    //   17	32	136	org/json/JSONException
    //   50	71	142	java/io/IOException
  }
  
  public void a(File paramFile)
  {
    g = paramFile;
  }
  
  public boolean p()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.core.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */