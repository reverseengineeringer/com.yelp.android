package com.facebook;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.facebook.internal.n;
import com.facebook.internal.s;
import com.facebook.internal.u;
import com.facebook.internal.v;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GraphRequest
{
  public static final String a = GraphRequest.class.getSimpleName();
  private static String b;
  private static Pattern c = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");
  private static volatile String q;
  private AccessToken d;
  private HttpMethod e;
  private String f;
  private JSONObject g;
  private String h;
  private String i;
  private boolean j = true;
  private Bundle k;
  private b l;
  private String m;
  private Object n;
  private String o;
  private boolean p = false;
  
  public GraphRequest()
  {
    this(null, null, null, null, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString, Bundle paramBundle, HttpMethod paramHttpMethod)
  {
    this(paramAccessToken, paramString, paramBundle, paramHttpMethod, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString, Bundle paramBundle, HttpMethod paramHttpMethod, b paramb)
  {
    this(paramAccessToken, paramString, paramBundle, paramHttpMethod, paramb, null);
  }
  
  public GraphRequest(AccessToken paramAccessToken, String paramString1, Bundle paramBundle, HttpMethod paramHttpMethod, b paramb, String paramString2)
  {
    d = paramAccessToken;
    f = paramString1;
    o = paramString2;
    a(paramb);
    a(paramHttpMethod);
    if (paramBundle != null) {}
    for (k = new Bundle(paramBundle);; k = new Bundle())
    {
      if (o == null) {
        o = s.d();
      }
      return;
    }
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, c paramc)
  {
    new GraphRequest(paramAccessToken, "me", null, null, new b()
    {
      public void a(GraphResponse paramAnonymousGraphResponse)
      {
        if (a != null) {
          a.a(paramAnonymousGraphResponse.b(), paramAnonymousGraphResponse);
        }
      }
    });
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, String paramString, b paramb)
  {
    return new GraphRequest(paramAccessToken, paramString, null, null, paramb);
  }
  
  public static GraphRequest a(AccessToken paramAccessToken, String paramString, JSONObject paramJSONObject, b paramb)
  {
    paramAccessToken = new GraphRequest(paramAccessToken, paramString, null, HttpMethod.POST, paramb);
    paramAccessToken.a(paramJSONObject);
    return paramAccessToken;
  }
  
  public static GraphResponse a(GraphRequest paramGraphRequest)
  {
    paramGraphRequest = a(new GraphRequest[] { paramGraphRequest });
    if ((paramGraphRequest == null) || (paramGraphRequest.size() != 1)) {
      throw new FacebookException("invalid state: expected a single response");
    }
    return (GraphResponse)paramGraphRequest.get(0);
  }
  
  public static HttpURLConnection a(i parami)
  {
    for (;;)
    {
      try
      {
        if (parami.size() == 1) {
          localObject = new URL(parami.a(0).j());
        }
      }
      catch (MalformedURLException parami)
      {
        Object localObject;
        throw new FacebookException("could not construct URL for request", parami);
      }
      try
      {
        localObject = a((URL)localObject);
        a(parami, (HttpURLConnection)localObject);
        return (HttpURLConnection)localObject;
      }
      catch (IOException parami)
      {
        throw new FacebookException("could not construct request body", parami);
      }
      catch (JSONException parami)
      {
        throw new FacebookException("could not construct request body", parami);
      }
      localObject = new URL(s.b());
    }
  }
  
  private static HttpURLConnection a(URL paramURL)
    throws IOException
  {
    paramURL = (HttpURLConnection)paramURL.openConnection();
    paramURL.setRequestProperty("User-Agent", n());
    paramURL.setRequestProperty("Accept-Language", Locale.getDefault().toString());
    paramURL.setChunkedStreamingMode(0);
    return paramURL;
  }
  
  public static List<GraphResponse> a(HttpURLConnection paramHttpURLConnection, i parami)
  {
    List localList = GraphResponse.a(paramHttpURLConnection, parami);
    u.a(paramHttpURLConnection);
    int i1 = parami.size();
    if (i1 != localList.size()) {
      throw new FacebookException(String.format(Locale.US, "Received %d responses while expecting %d", new Object[] { Integer.valueOf(localList.size()), Integer.valueOf(i1) }));
    }
    a(parami, localList);
    b.a().d();
    return localList;
  }
  
  public static List<GraphResponse> a(Collection<GraphRequest> paramCollection)
  {
    return b(new i(paramCollection));
  }
  
  public static List<GraphResponse> a(GraphRequest... paramVarArgs)
  {
    v.a(paramVarArgs, "requests");
    return a(Arrays.asList(paramVarArgs));
  }
  
  private static void a(Bundle paramBundle, f paramf, GraphRequest paramGraphRequest)
    throws IOException
  {
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if (e(localObject)) {
        paramf.a(str, localObject, paramGraphRequest);
      }
    }
  }
  
  private static void a(f paramf, Collection<GraphRequest> paramCollection, Map<String, a> paramMap)
    throws JSONException, IOException
  {
    JSONArray localJSONArray = new JSONArray();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext()) {
      ((GraphRequest)localIterator.next()).a(localJSONArray, paramMap);
    }
    paramf.a("batch", localJSONArray, paramCollection);
  }
  
  private static void a(i parami, n paramn, int paramInt, URL paramURL, OutputStream paramOutputStream, boolean paramBoolean)
    throws IOException, JSONException
  {
    paramOutputStream = new f(paramOutputStream, paramn, paramBoolean);
    if (paramInt == 1)
    {
      parami = parami.a(0);
      HashMap localHashMap = new HashMap();
      Iterator localIterator = k.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = k.get(str);
        if (d(localObject)) {
          localHashMap.put(str, new a(parami, localObject));
        }
      }
      if (paramn != null) {
        paramn.c("  Parameters:\n");
      }
      a(k, paramOutputStream, parami);
      if (paramn != null) {
        paramn.c("  Attachments:\n");
      }
      a(localHashMap, paramOutputStream);
      if (g != null) {
        a(g, paramURL.getPath(), paramOutputStream);
      }
      return;
    }
    paramURL = f(parami);
    if (u.a(paramURL)) {
      throw new FacebookException("App ID was not specified at the request or Settings.");
    }
    paramOutputStream.a("batch_app_id", paramURL);
    paramURL = new HashMap();
    a(paramOutputStream, parami, paramURL);
    if (paramn != null) {
      paramn.c("  Attachments:\n");
    }
    a(paramURL, paramOutputStream);
  }
  
  /* Error */
  static final void a(i parami, HttpURLConnection paramHttpURLConnection)
    throws IOException, JSONException
  {
    // Byte code:
    //   0: new 346	com/facebook/internal/n
    //   3: dup
    //   4: getstatic 383	com/facebook/LoggingBehavior:REQUESTS	Lcom/facebook/LoggingBehavior;
    //   7: ldc_w 385
    //   10: invokespecial 388	com/facebook/internal/n:<init>	(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
    //   13: astore 7
    //   15: aload_0
    //   16: invokevirtual 163	com/facebook/i:size	()I
    //   19: istore_3
    //   20: aload_0
    //   21: invokestatic 391	com/facebook/GraphRequest:e	(Lcom/facebook/i;)Z
    //   24: istore 4
    //   26: iload_3
    //   27: iconst_1
    //   28: if_icmpne +140 -> 168
    //   31: aload_0
    //   32: iconst_0
    //   33: invokevirtual 168	com/facebook/i:a	(I)Lcom/facebook/GraphRequest;
    //   36: getfield 393	com/facebook/GraphRequest:e	Lcom/facebook/HttpMethod;
    //   39: astore 5
    //   41: aload_1
    //   42: aload 5
    //   44: invokevirtual 396	com/facebook/HttpMethod:name	()Ljava/lang/String;
    //   47: invokevirtual 399	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   50: aload_1
    //   51: iload 4
    //   53: invokestatic 402	com/facebook/GraphRequest:a	(Ljava/net/HttpURLConnection;Z)V
    //   56: aload_1
    //   57: invokevirtual 406	java/net/HttpURLConnection:getURL	()Ljava/net/URL;
    //   60: astore 8
    //   62: aload 7
    //   64: ldc_w 408
    //   67: invokevirtual 348	com/facebook/internal/n:c	(Ljava/lang/String;)V
    //   70: aload 7
    //   72: ldc_w 410
    //   75: aload_0
    //   76: invokevirtual 411	com/facebook/i:b	()Ljava/lang/String;
    //   79: invokevirtual 414	com/facebook/internal/n:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   82: aload 7
    //   84: ldc_w 416
    //   87: aload 8
    //   89: invokevirtual 414	com/facebook/internal/n:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   92: aload 7
    //   94: ldc_w 418
    //   97: aload_1
    //   98: invokevirtual 421	java/net/HttpURLConnection:getRequestMethod	()Ljava/lang/String;
    //   101: invokevirtual 414	com/facebook/internal/n:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   104: aload 7
    //   106: ldc -62
    //   108: aload_1
    //   109: ldc -62
    //   111: invokevirtual 425	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   114: invokevirtual 414	com/facebook/internal/n:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   117: aload 7
    //   119: ldc_w 427
    //   122: aload_1
    //   123: ldc_w 427
    //   126: invokevirtual 425	java/net/HttpURLConnection:getRequestProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   129: invokevirtual 414	com/facebook/internal/n:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   132: aload_1
    //   133: aload_0
    //   134: invokevirtual 429	com/facebook/i:a	()I
    //   137: invokevirtual 432	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   140: aload_1
    //   141: aload_0
    //   142: invokevirtual 429	com/facebook/i:a	()I
    //   145: invokevirtual 435	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   148: aload 5
    //   150: getstatic 127	com/facebook/HttpMethod:POST	Lcom/facebook/HttpMethod;
    //   153: if_acmpne +23 -> 176
    //   156: iconst_1
    //   157: istore_2
    //   158: iload_2
    //   159: ifne +22 -> 181
    //   162: aload 7
    //   164: invokevirtual 437	com/facebook/internal/n:a	()V
    //   167: return
    //   168: getstatic 127	com/facebook/HttpMethod:POST	Lcom/facebook/HttpMethod;
    //   171: astore 5
    //   173: goto -132 -> 41
    //   176: iconst_0
    //   177: istore_2
    //   178: goto -20 -> 158
    //   181: aload_1
    //   182: iconst_1
    //   183: invokevirtual 441	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   186: new 443	java/io/BufferedOutputStream
    //   189: dup
    //   190: aload_1
    //   191: invokevirtual 447	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   194: invokespecial 450	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   197: astore 6
    //   199: aload 6
    //   201: astore_1
    //   202: iload 4
    //   204: ifeq +17 -> 221
    //   207: aload 6
    //   209: astore 5
    //   211: new 452	java/util/zip/GZIPOutputStream
    //   214: dup
    //   215: aload 6
    //   217: invokespecial 453	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   220: astore_1
    //   221: aload_1
    //   222: astore 5
    //   224: aload_0
    //   225: invokestatic 455	com/facebook/GraphRequest:d	(Lcom/facebook/i;)Z
    //   228: ifeq +116 -> 344
    //   231: aload_1
    //   232: astore 5
    //   234: new 457	com/facebook/m
    //   237: dup
    //   238: aload_0
    //   239: invokevirtual 460	com/facebook/i:c	()Landroid/os/Handler;
    //   242: invokespecial 463	com/facebook/m:<init>	(Landroid/os/Handler;)V
    //   245: astore 6
    //   247: aload_1
    //   248: astore 5
    //   250: aload_0
    //   251: aconst_null
    //   252: iload_3
    //   253: aload 8
    //   255: aload 6
    //   257: iload 4
    //   259: invokestatic 465	com/facebook/GraphRequest:a	(Lcom/facebook/i;Lcom/facebook/internal/n;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   262: aload_1
    //   263: astore 5
    //   265: aload 6
    //   267: invokevirtual 466	com/facebook/m:a	()I
    //   270: istore_2
    //   271: aload_1
    //   272: astore 5
    //   274: new 468	com/facebook/n
    //   277: dup
    //   278: aload_1
    //   279: aload_0
    //   280: aload 6
    //   282: invokevirtual 471	com/facebook/m:b	()Ljava/util/Map;
    //   285: iload_2
    //   286: i2l
    //   287: invokespecial 474	com/facebook/n:<init>	(Ljava/io/OutputStream;Lcom/facebook/i;Ljava/util/Map;J)V
    //   290: astore_1
    //   291: aload_0
    //   292: aload 7
    //   294: iload_3
    //   295: aload 8
    //   297: aload_1
    //   298: iload 4
    //   300: invokestatic 465	com/facebook/GraphRequest:a	(Lcom/facebook/i;Lcom/facebook/internal/n;ILjava/net/URL;Ljava/io/OutputStream;Z)V
    //   303: aload_1
    //   304: ifnull +7 -> 311
    //   307: aload_1
    //   308: invokevirtual 479	java/io/OutputStream:close	()V
    //   311: aload 7
    //   313: invokevirtual 437	com/facebook/internal/n:a	()V
    //   316: return
    //   317: astore_0
    //   318: aconst_null
    //   319: astore 5
    //   321: aload 5
    //   323: ifnull +8 -> 331
    //   326: aload 5
    //   328: invokevirtual 479	java/io/OutputStream:close	()V
    //   331: aload_0
    //   332: athrow
    //   333: astore_0
    //   334: goto -13 -> 321
    //   337: astore_0
    //   338: aload_1
    //   339: astore 5
    //   341: goto -20 -> 321
    //   344: goto -53 -> 291
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	347	0	parami	i
    //   0	347	1	paramHttpURLConnection	HttpURLConnection
    //   157	129	2	i1	int
    //   19	276	3	i2	int
    //   24	275	4	bool	boolean
    //   39	301	5	localObject1	Object
    //   197	84	6	localObject2	Object
    //   13	299	7	localn	n
    //   60	236	8	localURL	URL
    // Exception table:
    //   from	to	target	type
    //   186	199	317	finally
    //   211	221	333	finally
    //   224	231	333	finally
    //   234	247	333	finally
    //   250	262	333	finally
    //   265	271	333	finally
    //   274	291	333	finally
    //   291	303	337	finally
  }
  
  static void a(final i parami, List<GraphResponse> paramList)
  {
    int i2 = parami.size();
    ArrayList localArrayList = new ArrayList();
    int i1 = 0;
    while (i1 < i2)
    {
      GraphRequest localGraphRequest = parami.a(i1);
      if (l != null) {
        localArrayList.add(new Pair(l, paramList.get(i1)));
      }
      i1 += 1;
    }
    if (localArrayList.size() > 0)
    {
      paramList = new Runnable()
      {
        public void run()
        {
          Iterator localIterator = a.iterator();
          while (localIterator.hasNext())
          {
            Pair localPair = (Pair)localIterator.next();
            ((GraphRequest.b)first).a((GraphResponse)second);
          }
          localIterator = parami.e().iterator();
          while (localIterator.hasNext()) {
            ((i.a)localIterator.next()).a(parami);
          }
        }
      };
      parami = parami.c();
      if (parami == null) {
        paramList.run();
      }
    }
    else
    {
      return;
    }
    parami.post(paramList);
  }
  
  private static void a(String paramString, Object paramObject, d paramd, boolean paramBoolean)
    throws IOException
  {
    Object localObject = paramObject.getClass();
    if (JSONObject.class.isAssignableFrom((Class)localObject))
    {
      paramObject = (JSONObject)paramObject;
      if (paramBoolean)
      {
        localObject = ((JSONObject)paramObject).keys();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          a(String.format("%s[%s]", new Object[] { paramString, str }), ((JSONObject)paramObject).opt(str), paramd, paramBoolean);
        }
      }
      if (((JSONObject)paramObject).has("id")) {
        a(paramString, ((JSONObject)paramObject).optString("id"), paramd, paramBoolean);
      }
    }
    do
    {
      for (;;)
      {
        return;
        if (((JSONObject)paramObject).has("url"))
        {
          a(paramString, ((JSONObject)paramObject).optString("url"), paramd, paramBoolean);
          return;
        }
        if (((JSONObject)paramObject).has("fbsdk:create_object"))
        {
          a(paramString, ((JSONObject)paramObject).toString(), paramd, paramBoolean);
          return;
          if (!JSONArray.class.isAssignableFrom((Class)localObject)) {
            break;
          }
          paramObject = (JSONArray)paramObject;
          int i2 = ((JSONArray)paramObject).length();
          int i1 = 0;
          while (i1 < i2)
          {
            a(String.format(Locale.ROOT, "%s[%d]", new Object[] { paramString, Integer.valueOf(i1) }), ((JSONArray)paramObject).opt(i1), paramd, paramBoolean);
            i1 += 1;
          }
        }
      }
      if ((String.class.isAssignableFrom((Class)localObject)) || (Number.class.isAssignableFrom((Class)localObject)) || (Boolean.class.isAssignableFrom((Class)localObject)))
      {
        paramd.a(paramString, paramObject.toString());
        return;
      }
    } while (!Date.class.isAssignableFrom((Class)localObject));
    paramObject = (Date)paramObject;
    paramd.a(paramString, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date)paramObject));
  }
  
  private static void a(HttpURLConnection paramHttpURLConnection, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
      paramHttpURLConnection.setRequestProperty("Content-Encoding", "gzip");
      return;
    }
    paramHttpURLConnection.setRequestProperty("Content-Type", m());
  }
  
  private static void a(Map<String, a> paramMap, f paramf)
    throws IOException
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      a locala = (a)paramMap.get(str);
      if (d(locala.b())) {
        paramf.a(str, locala.b(), locala.a());
      }
    }
  }
  
  private void a(JSONArray paramJSONArray, final Map<String, a> paramMap)
    throws JSONException, IOException
  {
    JSONObject localJSONObject = new JSONObject();
    if (h != null)
    {
      localJSONObject.put("name", h);
      localJSONObject.put("omit_response_on_success", j);
    }
    if (i != null) {
      localJSONObject.put("depends_on", i);
    }
    String str1 = i();
    localJSONObject.put("relative_url", str1);
    localJSONObject.put("method", e);
    if (d != null) {
      n.a(d.b());
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = k.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      localObject = k.get((String)localObject);
      if (d(localObject))
      {
        String str2 = String.format(Locale.ROOT, "%s%d", new Object[] { "file", Integer.valueOf(paramMap.size()) });
        localArrayList.add(str2);
        paramMap.put(str2, new a(this, localObject));
      }
    }
    if (!localArrayList.isEmpty()) {
      localJSONObject.put("attached_files", TextUtils.join(",", localArrayList));
    }
    if (g != null)
    {
      paramMap = new ArrayList();
      a(g, str1, new d()
      {
        public void a(String paramAnonymousString1, String paramAnonymousString2)
          throws IOException
        {
          paramMap.add(String.format(Locale.US, "%s=%s", new Object[] { paramAnonymousString1, URLEncoder.encode(paramAnonymousString2, "UTF-8") }));
        }
      });
      localJSONObject.put("body", TextUtils.join("&", paramMap));
    }
    paramJSONArray.put(localJSONObject);
  }
  
  private static void a(JSONObject paramJSONObject, String paramString, d paramd)
    throws IOException
  {
    int i1;
    if (c(paramString))
    {
      i1 = paramString.indexOf(":");
      int i2 = paramString.indexOf("?");
      if ((i1 > 3) && ((i2 == -1) || (i1 < i2))) {
        i1 = 1;
      }
    }
    for (;;)
    {
      paramString = paramJSONObject.keys();
      label48:
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        Object localObject = paramJSONObject.opt(str);
        if ((i1 != 0) && (str.equalsIgnoreCase("image"))) {}
        for (boolean bool = true;; bool = false)
        {
          a(str, localObject, paramd, bool);
          break label48;
          i1 = 0;
          break;
        }
      }
      return;
      i1 = 0;
    }
  }
  
  public static h b(Collection<GraphRequest> paramCollection)
  {
    return c(new i(paramCollection));
  }
  
  public static h b(GraphRequest... paramVarArgs)
  {
    v.a(paramVarArgs, "requests");
    return b(Arrays.asList(paramVarArgs));
  }
  
  private String b(String paramString)
  {
    Uri.Builder localBuilder = new Uri.Builder().encodedPath(paramString);
    Iterator localIterator = k.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = k.get(str);
      paramString = (String)localObject;
      if (localObject == null) {
        paramString = "";
      }
      if (e(paramString)) {
        localBuilder.appendQueryParameter(str, f(paramString).toString());
      } else if (e == HttpMethod.GET) {
        throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", new Object[] { paramString.getClass().getSimpleName() }));
      }
    }
    return localBuilder.toString();
  }
  
  public static List<GraphResponse> b(i parami)
  {
    v.c(parami, "requests");
    try
    {
      HttpURLConnection localHttpURLConnection = a(parami);
      return a(localHttpURLConnection, parami);
    }
    catch (Exception localException)
    {
      List localList = GraphResponse.a(parami.d(), null, new FacebookException(localException));
      a(parami, localList);
      return localList;
    }
  }
  
  public static h c(i parami)
  {
    v.c(parami, "requests");
    parami = new h(parami);
    parami.a();
    return parami;
  }
  
  private static boolean c(String paramString)
  {
    Matcher localMatcher = c.matcher(paramString);
    if (localMatcher.matches()) {
      paramString = localMatcher.group(1);
    }
    return (paramString.startsWith("me/")) || (paramString.startsWith("/me/"));
  }
  
  private static boolean d(i parami)
  {
    Iterator localIterator = parami.e().iterator();
    while (localIterator.hasNext()) {
      if (((i.a)localIterator.next() instanceof i.b)) {
        return true;
      }
    }
    parami = parami.iterator();
    while (parami.hasNext()) {
      if ((((GraphRequest)parami.next()).e() instanceof e)) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean d(Object paramObject)
  {
    return ((paramObject instanceof Bitmap)) || ((paramObject instanceof byte[])) || ((paramObject instanceof Uri)) || ((paramObject instanceof ParcelFileDescriptor)) || ((paramObject instanceof ParcelableResourceWithMimeType));
  }
  
  private static boolean e(i parami)
  {
    GraphRequest localGraphRequest;
    String str;
    do
    {
      parami = parami.iterator();
      Iterator localIterator;
      while (!localIterator.hasNext())
      {
        if (!parami.hasNext()) {
          break;
        }
        localGraphRequest = (GraphRequest)parami.next();
        localIterator = k.keySet().iterator();
      }
      str = (String)localIterator.next();
    } while (!d(k.get(str)));
    return false;
    return true;
  }
  
  private static boolean e(Object paramObject)
  {
    return ((paramObject instanceof String)) || ((paramObject instanceof Boolean)) || ((paramObject instanceof Number)) || ((paramObject instanceof Date));
  }
  
  private static String f(i parami)
  {
    if (!u.a(parami.f())) {
      return parami.f();
    }
    parami = parami.iterator();
    while (parami.hasNext())
    {
      Object localObject = nextd;
      if (localObject != null)
      {
        localObject = ((AccessToken)localObject).h();
        if (localObject != null) {
          return (String)localObject;
        }
      }
    }
    if (!u.a(b)) {
      return b;
    }
    return g.h();
  }
  
  private static String f(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if (((paramObject instanceof Boolean)) || ((paramObject instanceof Number))) {
      return paramObject.toString();
    }
    if ((paramObject instanceof Date)) {
      return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(paramObject);
    }
    throw new IllegalArgumentException("Unsupported parameter type.");
  }
  
  private void k()
  {
    String str1;
    if (d != null) {
      if (!k.containsKey("access_token"))
      {
        str1 = d.b();
        n.a(str1);
        k.putString("access_token", str1);
      }
    }
    do
    {
      for (;;)
      {
        k.putString("sdk", "android");
        k.putString("format", "json");
        if (!g.a(LoggingBehavior.GRAPH_API_DEBUG_INFO)) {
          break;
        }
        k.putString("debug", "info");
        return;
        if ((!p) && (!k.containsKey("access_token")))
        {
          str1 = g.h();
          String str2 = g.j();
          if ((!u.a(str1)) && (!u.a(str2)))
          {
            str1 = str1 + "|" + str2;
            k.putString("access_token", str1);
          }
          else
          {
            Log.d(a, "Warning: Request without access token missing application ID or client token.");
          }
        }
      }
    } while (!g.a(LoggingBehavior.GRAPH_API_DEBUG_WARNING));
    k.putString("debug", "warning");
  }
  
  private String l()
  {
    if (c.matcher(f).matches()) {
      return f;
    }
    return String.format("%s/%s", new Object[] { o, f });
  }
  
  private static String m()
  {
    return String.format("multipart/form-data; boundary=%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
  }
  
  private static String n()
  {
    if (q == null) {
      q = String.format("%s.%s", new Object[] { "FBAndroidSDK", "4.1.2" });
    }
    return q;
  }
  
  public final JSONObject a()
  {
    return g;
  }
  
  public final void a(Bundle paramBundle)
  {
    k = paramBundle;
  }
  
  public final void a(final b paramb)
  {
    if ((g.a(LoggingBehavior.GRAPH_API_DEBUG_INFO)) || (g.a(LoggingBehavior.GRAPH_API_DEBUG_WARNING)))
    {
      l = new b()
      {
        public void a(GraphResponse paramAnonymousGraphResponse)
        {
          Object localObject1 = paramAnonymousGraphResponse.b();
          JSONArray localJSONArray;
          label28:
          int i;
          label35:
          label65:
          Object localObject2;
          if (localObject1 != null)
          {
            localObject1 = ((JSONObject)localObject1).optJSONObject("__debug__");
            if (localObject1 == null) {
              break label181;
            }
            localJSONArray = ((JSONObject)localObject1).optJSONArray("messages");
            if (localJSONArray == null) {
              break label204;
            }
            i = 0;
            if (i >= localJSONArray.length()) {
              break label204;
            }
            localObject3 = localJSONArray.optJSONObject(i);
            if (localObject3 == null) {
              break label187;
            }
            localObject1 = ((JSONObject)localObject3).optString("message");
            if (localObject3 == null) {
              break label192;
            }
            localObject2 = ((JSONObject)localObject3).optString("type");
            label79:
            if (localObject3 == null) {
              break label198;
            }
          }
          label181:
          label187:
          label192:
          label198:
          for (Object localObject3 = ((JSONObject)localObject3).optString("link");; localObject3 = null)
          {
            if ((localObject1 != null) && (localObject2 != null))
            {
              LoggingBehavior localLoggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_INFO;
              if (((String)localObject2).equals("warning")) {
                localLoggingBehavior = LoggingBehavior.GRAPH_API_DEBUG_WARNING;
              }
              localObject2 = localObject1;
              if (!u.a((String)localObject3)) {
                localObject2 = (String)localObject1 + " Link: " + (String)localObject3;
              }
              n.a(localLoggingBehavior, GraphRequest.a, (String)localObject2);
            }
            i += 1;
            break label35;
            localObject1 = null;
            break;
            localJSONArray = null;
            break label28;
            localObject1 = null;
            break label65;
            localObject2 = null;
            break label79;
          }
          label204:
          if (paramb != null) {
            paramb.a(paramAnonymousGraphResponse);
          }
        }
      };
      return;
    }
    l = paramb;
  }
  
  public final void a(HttpMethod paramHttpMethod)
  {
    if ((m != null) && (paramHttpMethod != HttpMethod.GET)) {
      throw new FacebookException("Can't change HTTP method on request with overridden URL.");
    }
    if (paramHttpMethod != null) {}
    for (;;)
    {
      e = paramHttpMethod;
      return;
      paramHttpMethod = HttpMethod.GET;
    }
  }
  
  public final void a(Object paramObject)
  {
    n = paramObject;
  }
  
  public final void a(String paramString)
  {
    o = paramString;
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    g = paramJSONObject;
  }
  
  public final void a(boolean paramBoolean)
  {
    p = paramBoolean;
  }
  
  public final HttpMethod b()
  {
    return e;
  }
  
  public final Bundle c()
  {
    return k;
  }
  
  public final AccessToken d()
  {
    return d;
  }
  
  public final b e()
  {
    return l;
  }
  
  public final Object f()
  {
    return n;
  }
  
  public final GraphResponse g()
  {
    return a(this);
  }
  
  public final h h()
  {
    return b(new GraphRequest[] { this });
  }
  
  final String i()
  {
    if (m != null) {
      throw new FacebookException("Can't override URL for a batch request");
    }
    String str = l();
    k();
    return b(str);
  }
  
  final String j()
  {
    if (m != null) {
      return m.toString();
    }
    if ((b() == HttpMethod.POST) && (f != null) && (f.endsWith("/videos"))) {}
    for (String str = s.c();; str = s.b())
    {
      str = String.format("%s/%s", new Object[] { str, l() });
      k();
      return b(str);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("{Request: ").append(" accessToken: ");
    if (d == null) {}
    for (Object localObject = "null";; localObject = d) {
      return localObject + ", graphPath: " + f + ", graphObject: " + g + ", httpMethod: " + e + ", parameters: " + k + "}";
    }
  }
  
  public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable>
    implements Parcelable
  {
    public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new Parcelable.Creator()
    {
      public GraphRequest.ParcelableResourceWithMimeType a(Parcel paramAnonymousParcel)
      {
        return new GraphRequest.ParcelableResourceWithMimeType(paramAnonymousParcel, null);
      }
      
      public GraphRequest.ParcelableResourceWithMimeType[] a(int paramAnonymousInt)
      {
        return new GraphRequest.ParcelableResourceWithMimeType[paramAnonymousInt];
      }
    };
    private final String a;
    private final RESOURCE b;
    
    private ParcelableResourceWithMimeType(Parcel paramParcel)
    {
      a = paramParcel.readString();
      b = paramParcel.readParcelable(g.f().getClassLoader());
    }
    
    public String a()
    {
      return a;
    }
    
    public RESOURCE b()
    {
      return b;
    }
    
    public int describeContents()
    {
      return 1;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(a);
      paramParcel.writeParcelable(b, paramInt);
    }
  }
  
  private static class a
  {
    private final GraphRequest a;
    private final Object b;
    
    public a(GraphRequest paramGraphRequest, Object paramObject)
    {
      a = paramGraphRequest;
      b = paramObject;
    }
    
    public GraphRequest a()
    {
      return a;
    }
    
    public Object b()
    {
      return b;
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(GraphResponse paramGraphResponse);
  }
  
  public static abstract interface c
  {
    public abstract void a(JSONObject paramJSONObject, GraphResponse paramGraphResponse);
  }
  
  private static abstract interface d
  {
    public abstract void a(String paramString1, String paramString2)
      throws IOException;
  }
  
  public static abstract interface e
    extends GraphRequest.b
  {
    public abstract void a(long paramLong1, long paramLong2);
  }
  
  private static class f
    implements GraphRequest.d
  {
    private final OutputStream a;
    private final n b;
    private boolean c = true;
    private boolean d = false;
    
    public f(OutputStream paramOutputStream, n paramn, boolean paramBoolean)
    {
      a = paramOutputStream;
      b = paramn;
      d = paramBoolean;
    }
    
    private RuntimeException b()
    {
      return new IllegalArgumentException("value is not a supported type.");
    }
    
    public void a()
      throws IOException
    {
      if (!d)
      {
        b("--%s", new Object[] { "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" });
        return;
      }
      a.write("&".getBytes());
    }
    
    public void a(String paramString, Bitmap paramBitmap)
      throws IOException
    {
      a(paramString, paramString, "image/png");
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, a);
      b("", new Object[0]);
      a();
      if (b != null) {
        b.a("    " + paramString, "<Image>");
      }
    }
    
    public void a(String paramString1, Uri paramUri, String paramString2)
      throws IOException
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "content/unknown";
      }
      a(paramString1, paramString1, str);
      paramString2 = g.f().getContentResolver().openInputStream(paramUri);
      if ((a instanceof m))
      {
        long l = u.c(paramUri);
        ((m)a).a(l);
      }
      for (int i = 0;; i = u.a(paramString2, a) + 0)
      {
        b("", new Object[0]);
        a();
        if (b != null) {
          b.a("    " + paramString1, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(i) }));
        }
        return;
      }
    }
    
    public void a(String paramString1, ParcelFileDescriptor paramParcelFileDescriptor, String paramString2)
      throws IOException
    {
      String str = paramString2;
      if (paramString2 == null) {
        str = "content/unknown";
      }
      a(paramString1, paramString1, str);
      if ((a instanceof m)) {
        ((m)a).a(paramParcelFileDescriptor.getStatSize());
      }
      for (int i = 0;; i = u.a(new ParcelFileDescriptor.AutoCloseInputStream(paramParcelFileDescriptor), a) + 0)
      {
        b("", new Object[0]);
        a();
        if (b != null) {
          b.a("    " + paramString1, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(i) }));
        }
        return;
      }
    }
    
    public void a(String paramString, Object paramObject, GraphRequest paramGraphRequest)
      throws IOException
    {
      if ((a instanceof p)) {
        ((p)a).a(paramGraphRequest);
      }
      if (GraphRequest.b(paramObject))
      {
        a(paramString, GraphRequest.c(paramObject));
        return;
      }
      if ((paramObject instanceof Bitmap))
      {
        a(paramString, (Bitmap)paramObject);
        return;
      }
      if ((paramObject instanceof byte[]))
      {
        a(paramString, (byte[])paramObject);
        return;
      }
      if ((paramObject instanceof Uri))
      {
        a(paramString, (Uri)paramObject, null);
        return;
      }
      if ((paramObject instanceof ParcelFileDescriptor))
      {
        a(paramString, (ParcelFileDescriptor)paramObject, null);
        return;
      }
      if ((paramObject instanceof GraphRequest.ParcelableResourceWithMimeType))
      {
        paramGraphRequest = (GraphRequest.ParcelableResourceWithMimeType)paramObject;
        paramObject = paramGraphRequest.b();
        paramGraphRequest = paramGraphRequest.a();
        if ((paramObject instanceof ParcelFileDescriptor))
        {
          a(paramString, (ParcelFileDescriptor)paramObject, paramGraphRequest);
          return;
        }
        if ((paramObject instanceof Uri))
        {
          a(paramString, (Uri)paramObject, paramGraphRequest);
          return;
        }
        throw b();
      }
      throw b();
    }
    
    public void a(String paramString1, String paramString2)
      throws IOException
    {
      a(paramString1, null, null);
      b("%s", new Object[] { paramString2 });
      a();
      if (b != null) {
        b.a("    " + paramString1, paramString2);
      }
    }
    
    public void a(String paramString1, String paramString2, String paramString3)
      throws IOException
    {
      if (!d)
      {
        a("Content-Disposition: form-data; name=\"%s\"", new Object[] { paramString1 });
        if (paramString2 != null) {
          a("; filename=\"%s\"", new Object[] { paramString2 });
        }
        b("", new Object[0]);
        if (paramString3 != null) {
          b("%s: %s", new Object[] { "Content-Type", paramString3 });
        }
        b("", new Object[0]);
        return;
      }
      a.write(String.format("%s=", new Object[] { paramString1 }).getBytes());
    }
    
    public void a(String paramString, JSONArray paramJSONArray, Collection<GraphRequest> paramCollection)
      throws IOException, JSONException
    {
      if (!(a instanceof p)) {
        a(paramString, paramJSONArray.toString());
      }
      do
      {
        return;
        p localp = (p)a;
        a(paramString, null, null);
        a("[", new Object[0]);
        paramCollection = paramCollection.iterator();
        int i = 0;
        if (paramCollection.hasNext())
        {
          GraphRequest localGraphRequest = (GraphRequest)paramCollection.next();
          JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
          localp.a(localGraphRequest);
          if (i > 0) {
            a(",%s", new Object[] { localJSONObject.toString() });
          }
          for (;;)
          {
            i += 1;
            break;
            a("%s", new Object[] { localJSONObject.toString() });
          }
        }
        a("]", new Object[0]);
      } while (b == null);
      b.a("    " + paramString, paramJSONArray.toString());
    }
    
    public void a(String paramString, byte[] paramArrayOfByte)
      throws IOException
    {
      a(paramString, paramString, "content/unknown");
      a.write(paramArrayOfByte);
      b("", new Object[0]);
      a();
      if (b != null) {
        b.a("    " + paramString, String.format(Locale.ROOT, "<Data: %d>", new Object[] { Integer.valueOf(paramArrayOfByte.length) }));
      }
    }
    
    public void a(String paramString, Object... paramVarArgs)
      throws IOException
    {
      if (!d)
      {
        if (c)
        {
          a.write("--".getBytes());
          a.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
          a.write("\r\n".getBytes());
          c = false;
        }
        a.write(String.format(paramString, paramVarArgs).getBytes());
        return;
      }
      a.write(URLEncoder.encode(String.format(Locale.US, paramString, paramVarArgs), "UTF-8").getBytes());
    }
    
    public void b(String paramString, Object... paramVarArgs)
      throws IOException
    {
      a(paramString, paramVarArgs);
      if (!d) {
        a("\r\n", new Object[0]);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.GraphRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */