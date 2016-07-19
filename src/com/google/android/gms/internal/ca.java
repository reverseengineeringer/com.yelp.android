package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.io.BufferedOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class ca
  implements bz
{
  private final Context a;
  private final VersionInfoParcel b;
  
  public ca(Context paramContext, VersionInfoParcel paramVersionInfoParcel)
  {
    a = paramContext;
    b = paramVersionInfoParcel;
  }
  
  protected b a(JSONObject paramJSONObject)
  {
    String str1 = paramJSONObject.optString("http_request_id");
    Object localObject1 = paramJSONObject.optString("url");
    String str2 = paramJSONObject.optString("post_body", null);
    try
    {
      localObject1 = new URL((String)localObject1);
      localArrayList = new ArrayList();
      localObject2 = paramJSONObject.optJSONArray("headers");
      paramJSONObject = (JSONObject)localObject2;
      if (localObject2 == null) {
        paramJSONObject = new JSONArray();
      }
      int i = 0;
      for (;;)
      {
        if (i >= paramJSONObject.length()) {
          break label137;
        }
        localObject2 = paramJSONObject.optJSONObject(i);
        if (localObject2 != null) {
          break;
        }
        i += 1;
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      ArrayList localArrayList;
      URL localURL;
      for (;;)
      {
        Object localObject2;
        gz.b("Error constructing http request.", localMalformedURLException);
        localURL = null;
        continue;
        localArrayList.add(new a(((JSONObject)localObject2).optString("key"), ((JSONObject)localObject2).optString("value")));
      }
      label137:
      return new b(str1, localURL, localArrayList, str2);
    }
  }
  
  protected c a(b paramb)
  {
    HttpURLConnection localHttpURLConnection;
    try
    {
      localHttpURLConnection = (HttpURLConnection)paramb.b().openConnection();
      s.e().a(a, b.b, false, localHttpURLConnection);
      localObject1 = paramb.c().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (a)((Iterator)localObject1).next();
        localHttpURLConnection.addRequestProperty(((a)localObject2).a(), ((a)localObject2).b());
      }
      if (TextUtils.isEmpty(paramb.d())) {
        break label144;
      }
    }
    catch (Exception paramb)
    {
      return new c(false, null, paramb.toString());
    }
    localHttpURLConnection.setDoOutput(true);
    Object localObject1 = paramb.d().getBytes();
    localHttpURLConnection.setFixedLengthStreamingMode(localObject1.length);
    Object localObject2 = new BufferedOutputStream(localHttpURLConnection.getOutputStream());
    ((BufferedOutputStream)localObject2).write((byte[])localObject1);
    ((BufferedOutputStream)localObject2).close();
    label144:
    localObject1 = new ArrayList();
    if (localHttpURLConnection.getHeaderFields() != null)
    {
      localObject2 = localHttpURLConnection.getHeaderFields().entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        Iterator localIterator = ((List)localEntry.getValue()).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          ((ArrayList)localObject1).add(new a((String)localEntry.getKey(), str));
        }
      }
    }
    paramb = new c(true, new d(paramb.a(), localHttpURLConnection.getResponseCode(), (List)localObject1, s.e().a(new InputStreamReader(localHttpURLConnection.getInputStream()))), null);
    return paramb;
  }
  
  protected JSONObject a(d paramd)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("http_request_id", paramd.a());
      if (paramd.d() != null) {
        localJSONObject.put("body", paramd.d());
      }
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = paramd.c().iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        localJSONArray.put(new JSONObject().put("key", locala.a()).put("value", locala.b()));
      }
      localJSONObject.put("headers", localJSONArray);
    }
    catch (JSONException paramd)
    {
      gz.b("Error constructing JSON for http response.", paramd);
      return localJSONObject;
    }
    localJSONObject.put("response_code", paramd.b());
    return localJSONObject;
  }
  
  /* Error */
  public JSONObject a(String paramString)
  {
    // Byte code:
    //   0: new 42	org/json/JSONObject
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 271	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   8: astore 4
    //   10: new 42	org/json/JSONObject
    //   13: dup
    //   14: invokespecial 243	org/json/JSONObject:<init>	()V
    //   17: astore_3
    //   18: ldc_w 273
    //   21: astore_1
    //   22: aload 4
    //   24: ldc 40
    //   26: invokevirtual 46	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   29: astore_2
    //   30: aload_2
    //   31: astore_1
    //   32: aload_0
    //   33: aload_0
    //   34: aload 4
    //   36: invokevirtual 275	com/google/android/gms/internal/ca:a	(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ca$b;
    //   39: invokevirtual 277	com/google/android/gms/internal/ca:a	(Lcom/google/android/gms/internal/ca$b;)Lcom/google/android/gms/internal/ca$c;
    //   42: astore 4
    //   44: aload_2
    //   45: astore_1
    //   46: aload 4
    //   48: invokevirtual 279	com/google/android/gms/internal/ca$c:c	()Z
    //   51: ifeq +68 -> 119
    //   54: aload_2
    //   55: astore_1
    //   56: aload_3
    //   57: ldc_w 281
    //   60: aload_0
    //   61: aload 4
    //   63: invokevirtual 284	com/google/android/gms/internal/ca$c:b	()Lcom/google/android/gms/internal/ca$d;
    //   66: invokevirtual 286	com/google/android/gms/internal/ca:a	(Lcom/google/android/gms/internal/ca$d;)Lorg/json/JSONObject;
    //   69: invokevirtual 248	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   72: pop
    //   73: aload_2
    //   74: astore_1
    //   75: aload_3
    //   76: ldc_w 288
    //   79: iconst_1
    //   80: invokevirtual 291	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   83: pop
    //   84: aload_3
    //   85: areturn
    //   86: astore_1
    //   87: ldc_w 293
    //   90: invokestatic 295	com/google/android/gms/internal/gz:b	(Ljava/lang/String;)V
    //   93: new 42	org/json/JSONObject
    //   96: dup
    //   97: invokespecial 243	org/json/JSONObject:<init>	()V
    //   100: ldc_w 288
    //   103: iconst_0
    //   104: invokevirtual 291	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   107: astore_1
    //   108: aload_1
    //   109: areturn
    //   110: astore_1
    //   111: new 42	org/json/JSONObject
    //   114: dup
    //   115: invokespecial 243	org/json/JSONObject:<init>	()V
    //   118: areturn
    //   119: aload_2
    //   120: astore_1
    //   121: aload_3
    //   122: ldc_w 281
    //   125: new 42	org/json/JSONObject
    //   128: dup
    //   129: invokespecial 243	org/json/JSONObject:<init>	()V
    //   132: ldc 40
    //   134: aload_2
    //   135: invokevirtual 248	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   138: invokevirtual 248	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   141: pop
    //   142: aload_2
    //   143: astore_1
    //   144: aload_3
    //   145: ldc_w 288
    //   148: iconst_0
    //   149: invokevirtual 291	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   152: pop
    //   153: aload_2
    //   154: astore_1
    //   155: aload_3
    //   156: ldc_w 297
    //   159: aload 4
    //   161: invokevirtual 298	com/google/android/gms/internal/ca$c:a	()Ljava/lang/String;
    //   164: invokevirtual 248	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   167: pop
    //   168: aload_3
    //   169: areturn
    //   170: astore_2
    //   171: aload_3
    //   172: ldc_w 281
    //   175: new 42	org/json/JSONObject
    //   178: dup
    //   179: invokespecial 243	org/json/JSONObject:<init>	()V
    //   182: ldc 40
    //   184: aload_1
    //   185: invokevirtual 248	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   188: invokevirtual 248	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   191: pop
    //   192: aload_3
    //   193: ldc_w 288
    //   196: iconst_0
    //   197: invokevirtual 291	org/json/JSONObject:put	(Ljava/lang/String;Z)Lorg/json/JSONObject;
    //   200: pop
    //   201: aload_3
    //   202: ldc_w 297
    //   205: aload_2
    //   206: invokevirtual 155	java/lang/Exception:toString	()Ljava/lang/String;
    //   209: invokevirtual 248	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   212: pop
    //   213: aload_3
    //   214: areturn
    //   215: astore_1
    //   216: aload_3
    //   217: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	218	0	this	ca
    //   0	218	1	paramString	String
    //   29	125	2	str	String
    //   170	36	2	localException	Exception
    //   17	200	3	localJSONObject	JSONObject
    //   8	152	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	10	86	org/json/JSONException
    //   93	108	110	org/json/JSONException
    //   22	30	170	java/lang/Exception
    //   32	44	170	java/lang/Exception
    //   46	54	170	java/lang/Exception
    //   56	73	170	java/lang/Exception
    //   75	84	170	java/lang/Exception
    //   121	142	170	java/lang/Exception
    //   144	153	170	java/lang/Exception
    //   155	168	170	java/lang/Exception
    //   171	213	215	org/json/JSONException
  }
  
  public void a(final ib paramib, final Map<String, String> paramMap)
  {
    hc.a(new Runnable()
    {
      public void run()
      {
        gz.a("Received Http request.");
        final Object localObject = (String)paramMap.get("http_request");
        localObject = a((String)localObject);
        if (localObject == null)
        {
          gz.b("Response should not be null.");
          return;
        }
        hd.a.post(new Runnable()
        {
          public void run()
          {
            b.b("fetchHttpRequestCompleted", localObject);
            gz.a("Dispatched http response.");
          }
        });
      }
    });
  }
  
  @fv
  static class a
  {
    private final String a;
    private final String b;
    
    public a(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
    
    public String a()
    {
      return a;
    }
    
    public String b()
    {
      return b;
    }
  }
  
  @fv
  static class b
  {
    private final String a;
    private final URL b;
    private final ArrayList<ca.a> c;
    private final String d;
    
    public b(String paramString1, URL paramURL, ArrayList<ca.a> paramArrayList, String paramString2)
    {
      a = paramString1;
      b = paramURL;
      if (paramArrayList == null) {}
      for (c = new ArrayList();; c = paramArrayList)
      {
        d = paramString2;
        return;
      }
    }
    
    public String a()
    {
      return a;
    }
    
    public URL b()
    {
      return b;
    }
    
    public ArrayList<ca.a> c()
    {
      return c;
    }
    
    public String d()
    {
      return d;
    }
  }
  
  @fv
  class c
  {
    private final ca.d b;
    private final boolean c;
    private final String d;
    
    public c(boolean paramBoolean, ca.d paramd, String paramString)
    {
      c = paramBoolean;
      b = paramd;
      d = paramString;
    }
    
    public String a()
    {
      return d;
    }
    
    public ca.d b()
    {
      return b;
    }
    
    public boolean c()
    {
      return c;
    }
  }
  
  @fv
  static class d
  {
    private final String a;
    private final int b;
    private final List<ca.a> c;
    private final String d;
    
    public d(String paramString1, int paramInt, List<ca.a> paramList, String paramString2)
    {
      a = paramString1;
      b = paramInt;
      if (paramList == null) {}
      for (c = new ArrayList();; c = paramList)
      {
        d = paramString2;
        return;
      }
    }
    
    public String a()
    {
      return a;
    }
    
    public int b()
    {
      return b;
    }
    
    public Iterable<ca.a> c()
    {
      return c;
    }
    
    public String d()
    {
      return d;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */