package com.brightcove.player.media;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import com.brightcove.player.util.StringUtil;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class HttpService
{
  public static final int DEFAULT_CONNECT_TIMEOUT = 10000;
  public static final int DEFAULT_READ_TIMEOUT = 10000;
  public static final String TAG = HttpService.class.getSimpleName();
  private int connectTimeout = 10000;
  private int readTimeout = 10000;
  
  public HttpService() {}
  
  public HttpService(int paramInt1, int paramInt2)
  {
    connectTimeout = paramInt1;
    readTimeout = paramInt2;
  }
  
  public static URI buildURIWithQueryParameters(String paramString, Map<String, Object> paramMap)
  {
    if (paramString == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("baseURLRequired"));
    }
    StringBuilder localStringBuilder = new StringBuilder(paramString);
    if ((paramMap == null) || (paramMap.size() == 0)) {
      return new URI(localStringBuilder.toString());
    }
    if (paramString.contains("?")) {
      localStringBuilder.append("&");
    }
    for (;;)
    {
      paramString = paramMap.entrySet().iterator();
      while (paramString.hasNext())
      {
        paramMap = (Map.Entry)paramString.next();
        if ((paramMap != null) && (paramMap.getKey() != null) && (paramMap.getValue() != null))
        {
          localStringBuilder.append(URLEncoder.encode((String)paramMap.getKey(), "UTF-8"));
          localStringBuilder.append("=");
          localStringBuilder.append(URLEncoder.encode(paramMap.getValue().toString(), "UTF-8"));
          if (paramString.hasNext()) {
            localStringBuilder.append("&");
          }
        }
      }
      localStringBuilder.append("?");
    }
    return new URI(localStringBuilder.toString());
  }
  
  private static int calculateInSampleSize(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i1 = outHeight;
    int n = outWidth;
    int m = 1;
    int k = 1;
    Log.v(TAG, "calculateInSampleSize: height = " + i1 + ", width = " + n + ", maxWidth = " + paramInt1 + ", maxHeight = " + paramInt2);
    int j;
    int i;
    if (n * paramInt2 > paramInt1 * i1)
    {
      j = paramInt1 * i1 / n;
      i = paramInt1;
    }
    for (;;)
    {
      Log.v(TAG, "calculateInSampleSize: maxWidth = " + i + ", maxHeight = " + j);
      if (i1 <= j)
      {
        paramInt2 = m;
        if (n <= i) {
          break;
        }
      }
      m = i1 / 2;
      n /= 2;
      paramInt1 = k;
      for (;;)
      {
        paramInt2 = paramInt1;
        if (m / paramInt1 <= j) {
          break;
        }
        paramInt2 = paramInt1;
        if (n / paramInt1 <= i) {
          break;
        }
        paramInt1 *= 2;
      }
      i = paramInt1;
      j = paramInt2;
      if (n * paramInt2 < paramInt1 * i1)
      {
        i = paramInt2 * n / i1;
        j = paramInt2;
      }
    }
    return paramInt2;
  }
  
  private static Bitmap decodeSampledBitmap(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    paramInputStream.mark(Integer.MAX_VALUE);
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeStream(paramInputStream, null, localOptions);
    inSampleSize = calculateInSampleSize(localOptions, paramInt1, paramInt2);
    paramInputStream.reset();
    inJustDecodeBounds = false;
    return BitmapFactory.decodeStream(paramInputStream, null, localOptions);
  }
  
  private JSONObject doJSONRequest(HttpService.Method paramMethod, URI paramURI, Map<String, String> paramMap)
  {
    paramMethod = doRequest(paramMethod, paramURI, paramMap);
    if ((paramMethod != null) && (!paramMethod.trim().isEmpty()) && (!paramMethod.equals("null")))
    {
      if (Log.isLoggable(TAG, 3)) {
        Log.d(TAG, "JSON response:\n" + paramMethod);
      }
      return parseToJSONObject(paramMethod);
    }
    return null;
  }
  
  private String doRequest(HttpService.Method paramMethod, URI paramURI, Map<String, String> paramMap)
  {
    if (paramURI == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("uriRequired"));
    }
    if (paramMap == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("headersRequired"));
    }
    paramURI = paramURI.toURL();
    Log.d(TAG, "issuing " + paramMethod + " request: " + paramURI.toString());
    try
    {
      paramURI = paramURI.openConnection();
      try
      {
        if (!(paramURI instanceof HttpURLConnection)) {
          break label224;
        }
        HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramURI;
        if (paramMethod.equals(HttpService.Method.POST)) {
          localHttpURLConnection.setRequestMethod("POST");
        }
        paramMethod = paramMap.entrySet().iterator();
        while (paramMethod.hasNext())
        {
          paramMap = (Map.Entry)paramMethod.next();
          if ((!StringUtil.isEmpty((String)paramMap.getKey())) && (!StringUtil.isEmpty((String)paramMap.getValue()))) {
            localHttpURLConnection.setRequestProperty((String)paramMap.getKey(), (String)paramMap.getValue());
          }
        }
        if (paramMethod == null) {
          break label222;
        }
      }
      finally
      {
        paramMethod = paramURI;
        paramURI = paramMap;
      }
    }
    finally
    {
      for (;;)
      {
        paramMethod = null;
      }
    }
    if ((paramMethod instanceof HttpURLConnection)) {
      ((HttpURLConnection)paramMethod).disconnect();
    }
    label222:
    throw paramURI;
    label224:
    paramMethod = inputStreamToString(paramURI.getInputStream());
    Log.d(TAG, "response: " + paramMethod);
    if ((paramURI instanceof HttpURLConnection))
    {
      paramMap = (HttpURLConnection)paramURI;
      Log.d(TAG, "code: " + paramMap.getResponseCode());
      Log.d(TAG, "message: " + paramMap.getResponseMessage());
    }
    if ((paramURI != null) && ((paramURI instanceof HttpURLConnection))) {
      ((HttpURLConnection)paramURI).disconnect();
    }
    return paramMethod;
  }
  
  public static String inputStreamToString(InputStream paramInputStream)
  {
    return readerToString(new InputStreamReader(paramInputStream));
  }
  
  public static JSONObject parseToJSONObject(String paramString)
  {
    if ((paramString == null) || (paramString.trim().isEmpty())) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("jsonRequired"));
    }
    paramString = new JSONTokener(paramString).nextValue();
    if ((paramString instanceof JSONObject)) {
      return (JSONObject)paramString;
    }
    if ((paramString instanceof JSONArray)) {
      throw new JSONException(ErrorUtil.getMessage("jsonArray"));
    }
    throw new JSONException(String.format(ErrorUtil.getMessage("unexpectedType"), new Object[] { paramString.getClass().getName() }));
  }
  
  public static String readerToString(Reader paramReader)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramReader = new BufferedReader(paramReader);
    try
    {
      for (;;)
      {
        String str = paramReader.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str);
      }
    }
    finally
    {
      paramReader.close();
    }
    return ((StringBuilder)localObject).toString();
  }
  
  public String doGetRequest(URI paramURI)
  {
    return doGetRequest(paramURI, new HashMap());
  }
  
  public String doGetRequest(URI paramURI, Map<String, String> paramMap)
  {
    return doRequest(HttpService.Method.GET, paramURI, paramMap);
  }
  
  /* Error */
  public Bitmap doImageGetRequest(URI paramURI)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +16 -> 17
    //   4: new 35	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc -48
    //   10: invokestatic 43	com/brightcove/player/util/ErrorUtil:getMessage	(Ljava/lang/String;)Ljava/lang/String;
    //   13: invokespecial 46	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: aload_1
    //   18: invokevirtual 214	java/net/URI:toURL	()Ljava/net/URL;
    //   21: astore_1
    //   22: getstatic 22	com/brightcove/player/media/HttpService:TAG	Ljava/lang/String;
    //   25: new 48	java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   32: ldc_w 342
    //   35: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_1
    //   39: invokevirtual 224	java/net/URL:toString	()Ljava/lang/String;
    //   42: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokestatic 201	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   51: pop
    //   52: aload_1
    //   53: invokevirtual 228	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   56: astore_1
    //   57: aload_1
    //   58: invokevirtual 259	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   61: invokestatic 345	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   64: astore_2
    //   65: aload_1
    //   66: ifnull +17 -> 83
    //   69: aload_1
    //   70: instanceof 230
    //   73: ifeq +10 -> 83
    //   76: aload_1
    //   77: checkcast 230	java/net/HttpURLConnection
    //   80: invokevirtual 253	java/net/HttpURLConnection:disconnect	()V
    //   83: aload_2
    //   84: areturn
    //   85: astore_2
    //   86: aconst_null
    //   87: astore_1
    //   88: aload_1
    //   89: ifnull +17 -> 106
    //   92: aload_1
    //   93: instanceof 230
    //   96: ifeq +10 -> 106
    //   99: aload_1
    //   100: checkcast 230	java/net/HttpURLConnection
    //   103: invokevirtual 253	java/net/HttpURLConnection:disconnect	()V
    //   106: aload_2
    //   107: athrow
    //   108: astore_2
    //   109: goto -21 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	HttpService
    //   0	112	1	paramURI	URI
    //   64	20	2	localBitmap	Bitmap
    //   85	22	2	localObject1	Object
    //   108	1	2	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   52	57	85	finally
    //   57	65	108	finally
  }
  
  /* Error */
  public Bitmap doImageGetRequest(URI paramURI, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +16 -> 17
    //   4: new 35	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc -48
    //   10: invokestatic 43	com/brightcove/player/util/ErrorUtil:getMessage	(Ljava/lang/String;)Ljava/lang/String;
    //   13: invokespecial 46	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   16: athrow
    //   17: aload_1
    //   18: invokevirtual 214	java/net/URI:toURL	()Ljava/net/URL;
    //   21: astore_1
    //   22: getstatic 22	com/brightcove/player/media/HttpService:TAG	Ljava/lang/String;
    //   25: new 48	java/lang/StringBuilder
    //   28: dup
    //   29: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   32: ldc_w 342
    //   35: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: aload_1
    //   39: invokevirtual 224	java/net/URL:toString	()Ljava/lang/String;
    //   42: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 60	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokestatic 201	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   51: pop
    //   52: aload_1
    //   53: invokevirtual 228	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   56: astore_1
    //   57: new 348	java/io/BufferedInputStream
    //   60: dup
    //   61: aload_1
    //   62: invokevirtual 259	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   65: invokespecial 349	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   68: iload_2
    //   69: iload_3
    //   70: invokestatic 351	com/brightcove/player/media/HttpService:decodeSampledBitmap	(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    //   73: astore 4
    //   75: aload_1
    //   76: ifnull +17 -> 93
    //   79: aload_1
    //   80: instanceof 230
    //   83: ifeq +10 -> 93
    //   86: aload_1
    //   87: checkcast 230	java/net/HttpURLConnection
    //   90: invokevirtual 253	java/net/HttpURLConnection:disconnect	()V
    //   93: aload 4
    //   95: areturn
    //   96: astore 4
    //   98: aconst_null
    //   99: astore_1
    //   100: aload_1
    //   101: ifnull +17 -> 118
    //   104: aload_1
    //   105: instanceof 230
    //   108: ifeq +10 -> 118
    //   111: aload_1
    //   112: checkcast 230	java/net/HttpURLConnection
    //   115: invokevirtual 253	java/net/HttpURLConnection:disconnect	()V
    //   118: aload 4
    //   120: athrow
    //   121: astore 4
    //   123: goto -23 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	HttpService
    //   0	126	1	paramURI	URI
    //   0	126	2	paramInt1	int
    //   0	126	3	paramInt2	int
    //   73	21	4	localBitmap	Bitmap
    //   96	23	4	localObject1	Object
    //   121	1	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   52	57	96	finally
    //   57	75	121	finally
  }
  
  public JSONObject doJSONGetRequest(URI paramURI)
  {
    return doJSONGetRequest(paramURI, new HashMap());
  }
  
  public JSONObject doJSONGetRequest(URI paramURI, Map<String, String> paramMap)
  {
    return doJSONRequest(HttpService.Method.GET, paramURI, paramMap);
  }
  
  public JSONObject doJSONPostRequest(URI paramURI)
  {
    return doJSONPostRequest(paramURI, new HashMap());
  }
  
  public JSONObject doJSONPostRequest(URI paramURI, Map<String, String> paramMap)
  {
    return doJSONRequest(HttpService.Method.POST, paramURI, paramMap);
  }
  
  public String doPostRequest(URI paramURI)
  {
    return doPostRequest(paramURI, new HashMap());
  }
  
  public String doPostRequest(URI paramURI, Map<String, String> paramMap)
  {
    return doRequest(HttpService.Method.POST, paramURI, paramMap);
  }
  
  public int getConnectTimeout()
  {
    return connectTimeout;
  }
  
  public int getReadTimeout()
  {
    return readTimeout;
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.media.HttpService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */