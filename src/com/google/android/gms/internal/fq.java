package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.formats.h.a;
import com.google.android.gms.ads.internal.q;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.d;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class fq
  implements Callable<gr>
{
  private static final long a = TimeUnit.SECONDS.toMillis(60L);
  private final Context b;
  private final hi c;
  private final q d;
  private final j e;
  private final cz f;
  private final Object g = new Object();
  private final gr.a h;
  private boolean i;
  private int j;
  private List<String> k;
  private JSONObject l;
  
  public fq(Context paramContext, q paramq, cz paramcz, hi paramhi, j paramj, gr.a parama)
  {
    b = paramContext;
    d = paramq;
    c = paramhi;
    f = paramcz;
    h = parama;
    e = paramj;
    i = false;
    j = -2;
    k = null;
  }
  
  private h.a a(cy paramcy, a parama, JSONObject paramJSONObject)
    throws ExecutionException, InterruptedException, JSONException
  {
    if (b()) {
      return null;
    }
    JSONObject localJSONObject = paramJSONObject.getJSONObject("tracking_urls_and_actions");
    Object localObject = b(localJSONObject, "impression_tracking_urls");
    if (localObject == null) {}
    for (localObject = null;; localObject = Arrays.asList((Object[])localObject))
    {
      k = ((List)localObject);
      l = localJSONObject.optJSONObject("active_view");
      parama = parama.a(this, paramJSONObject);
      if (parama != null) {
        break;
      }
      gz.b("Failed to retrieve ad assets.");
      return null;
    }
    parama.a(new com.google.android.gms.ads.internal.formats.i(b, d, paramcy, e, paramJSONObject, parama, h.a.k));
    return parama;
  }
  
  private gr a(h.a parama)
  {
    for (;;)
    {
      synchronized (g)
      {
        int n = j;
        int m = n;
        if (parama == null)
        {
          m = n;
          if (j == -2) {
            m = 0;
          }
        }
        if (m != -2)
        {
          parama = null;
          return new gr(h.a.c, null, h.b.d, m, h.b.f, k, h.b.l, h.b.k, h.a.i, false, null, null, null, null, null, 0L, h.d, h.b.g, h.f, h.g, h.b.o, l, parama, null, null, null, h.b.G);
        }
      }
    }
  }
  
  private hs<c> a(JSONObject paramJSONObject, final boolean paramBoolean1, boolean paramBoolean2)
    throws JSONException
  {
    if (paramBoolean1) {}
    final double d1;
    for (String str = paramJSONObject.getString("url");; str = paramJSONObject.optString("url"))
    {
      d1 = paramJSONObject.optDouble("scale", 1.0D);
      if (!TextUtils.isEmpty(str)) {
        break;
      }
      a(0, paramBoolean1);
      return new hq(null);
    }
    if (paramBoolean2) {
      return new hq(new c(null, Uri.parse(str), d1));
    }
    c.a(str, new hi.a()
    {
      public c a()
      {
        a(2, paramBoolean1);
        return null;
      }
      
      public c a(InputStream paramAnonymousInputStream)
      {
        try
        {
          paramAnonymousInputStream = kb.a(paramAnonymousInputStream);
          if (paramAnonymousInputStream == null)
          {
            a(2, paramBoolean1);
            return null;
          }
        }
        catch (IOException paramAnonymousInputStream)
        {
          for (;;)
          {
            paramAnonymousInputStream = null;
          }
          paramAnonymousInputStream = BitmapFactory.decodeByteArray(paramAnonymousInputStream, 0, paramAnonymousInputStream.length);
          if (paramAnonymousInputStream == null)
          {
            a(2, paramBoolean1);
            return null;
          }
          paramAnonymousInputStream.setDensity((int)(160.0D * d1));
        }
        return new c(new BitmapDrawable(Resources.getSystem(), paramAnonymousInputStream), Uri.parse(c), d1);
      }
    });
  }
  
  private Integer a(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject(paramString);
      int m = Color.rgb(paramJSONObject.getInt("r"), paramJSONObject.getInt("g"), paramJSONObject.getInt("b"));
      return Integer.valueOf(m);
    }
    catch (JSONException paramJSONObject) {}
    return null;
  }
  
  private JSONObject a(final cy paramcy)
    throws TimeoutException, JSONException
  {
    if (b()) {
      return null;
    }
    final hp localhp = new hp();
    final b localb = new b();
    bz local1 = new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        paramcy.b("/nativeAdPreProcess", localba);
        try
        {
          paramAnonymousib = (String)paramAnonymousMap.get("success");
          if (!TextUtils.isEmpty(paramAnonymousib))
          {
            localhp.b(new JSONObject(paramAnonymousib).getJSONArray("ads").getJSONObject(0));
            return;
          }
        }
        catch (JSONException paramAnonymousib)
        {
          gz.b("Malformed native JSON response.", paramAnonymousib);
          a(0);
          zzx.zza(b(), "Unable to set the ad state error!");
          localhp.b(null);
        }
      }
    };
    a = local1;
    paramcy.a("/nativeAdPreProcess", local1);
    paramcy.a("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(h.b.c));
    return (JSONObject)localhp.get(a, TimeUnit.MILLISECONDS);
  }
  
  private void a(h.a parama, cy paramcy)
  {
    if (!(parama instanceof f)) {
      return;
    }
    final Object localObject = (f)parama;
    parama = new b();
    localObject = new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        paramAnonymousib = (String)paramAnonymousMap.get("asset");
        fq.a(fq.this, localObject, paramAnonymousib);
      }
    };
    a = ((bz)localObject);
    paramcy.a("/nativeAdCustomClick", (bz)localObject);
  }
  
  private void a(bl parambl, String paramString)
  {
    try
    {
      bo localbo = d.c(parambl.k());
      if (localbo != null) {
        localbo.a(parambl, paramString);
      }
      return;
    }
    catch (RemoteException parambl)
    {
      gz.d("Failed to call onCustomClick for asset " + paramString + ".", parambl);
    }
  }
  
  private static List<Drawable> b(List<c> paramList)
    throws RemoteException
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add((Drawable)d.a(((c)paramList.next()).a()));
    }
    return localArrayList;
  }
  
  private String[] b(JSONObject paramJSONObject, String paramString)
    throws JSONException
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject == null) {
      return null;
    }
    paramString = new String[paramJSONObject.length()];
    int m = 0;
    while (m < paramJSONObject.length())
    {
      paramString[m] = paramJSONObject.getString(m);
      m += 1;
    }
    return paramString;
  }
  
  private cy c()
    throws CancellationException, ExecutionException, InterruptedException, TimeoutException
  {
    if (b()) {
      return null;
    }
    String str = (String)ao.ac.c();
    if (h.b.b.indexOf("https") == 0) {}
    for (Object localObject = "https:";; localObject = "http:")
    {
      localObject = (String)localObject + str;
      localObject = (cy)f.a(b, h.a.k, (String)localObject, e).get(a, TimeUnit.MILLISECONDS);
      ((cy)localObject).a(d, d, d, d, false, null, null, null, null);
      return (cy)localObject;
    }
  }
  
  protected a a(JSONObject paramJSONObject)
    throws JSONException, TimeoutException
  {
    if (b()) {
      return null;
    }
    final String str = paramJSONObject.getString("template_id");
    boolean bool1;
    if (h.a.z != null)
    {
      bool1 = h.a.z.b;
      if (h.a.z == null) {
        break label98;
      }
    }
    label98:
    for (boolean bool2 = h.a.z.d;; bool2 = false)
    {
      if (!"2".equals(str)) {
        break label103;
      }
      return new fr(bool1, bool2);
      bool1 = false;
      break;
    }
    label103:
    if ("1".equals(str)) {
      return new fs(bool1, bool2);
    }
    if ("3".equals(str))
    {
      str = paramJSONObject.getString("custom_template_id");
      final hp localhp = new hp();
      hd.a.post(new Runnable()
      {
        public void run()
        {
          localhp.b(fq.a(fq.this).z().get(str));
        }
      });
      if (localhp.get(a, TimeUnit.MILLISECONDS) != null) {
        return new ft(bool1);
      }
      gz.b("No handler for custom template: " + paramJSONObject.getString("custom_template_id"));
    }
    for (;;)
    {
      return null;
      a(0);
    }
  }
  
  public gr a()
  {
    try
    {
      Object localObject1 = c();
      Object localObject2 = a((cy)localObject1);
      localObject2 = a((cy)localObject1, a((JSONObject)localObject2), (JSONObject)localObject2);
      a((h.a)localObject2, (cy)localObject1);
      localObject1 = a((h.a)localObject2);
      return (gr)localObject1;
    }
    catch (JSONException localJSONException)
    {
      gz.d("Malformed native JSON response.", localJSONException);
      if (!i) {
        a(0);
      }
      return a(null);
    }
    catch (TimeoutException localTimeoutException)
    {
      for (;;)
      {
        gz.d("Timeout when loading native ad.", localTimeoutException);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;) {}
    }
    catch (CancellationException localCancellationException)
    {
      for (;;) {}
    }
  }
  
  public hs<c> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean1, boolean paramBoolean2)
    throws JSONException
  {
    if (paramBoolean1) {}
    for (paramJSONObject = paramJSONObject.getJSONObject(paramString);; paramJSONObject = paramJSONObject.optJSONObject(paramString))
    {
      paramString = paramJSONObject;
      if (paramJSONObject == null) {
        paramString = new JSONObject();
      }
      return a(paramString, paramBoolean1, paramBoolean2);
    }
  }
  
  public List<hs<c>> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    throws JSONException
  {
    if (paramBoolean1) {}
    ArrayList localArrayList;
    for (paramJSONObject = paramJSONObject.getJSONArray(paramString);; paramJSONObject = paramJSONObject.optJSONArray(paramString))
    {
      localArrayList = new ArrayList();
      if ((paramJSONObject != null) && (paramJSONObject.length() != 0)) {
        break;
      }
      a(0, paramBoolean1);
      return localArrayList;
    }
    if (paramBoolean3) {}
    for (int m = paramJSONObject.length();; m = 1)
    {
      int n = 0;
      while (n < m)
      {
        JSONObject localJSONObject = paramJSONObject.getJSONObject(n);
        paramString = localJSONObject;
        if (localJSONObject == null) {
          paramString = new JSONObject();
        }
        localArrayList.add(a(paramString, paramBoolean1, paramBoolean2));
        n += 1;
      }
    }
    return localArrayList;
  }
  
  public Future<c> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
    throws JSONException
  {
    paramString = paramJSONObject.getJSONObject(paramString);
    boolean bool = paramString.optBoolean("require", true);
    paramJSONObject = paramString;
    if (paramString == null) {
      paramJSONObject = new JSONObject();
    }
    return a(paramJSONObject, bool, paramBoolean);
  }
  
  public void a(int paramInt)
  {
    synchronized (g)
    {
      i = true;
      j = paramInt;
      return;
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(paramInt);
    }
  }
  
  public hs<a> b(JSONObject paramJSONObject)
    throws JSONException
  {
    JSONObject localJSONObject = paramJSONObject.optJSONObject("attribution");
    if (localJSONObject == null) {
      return new hq(null);
    }
    final String str = localJSONObject.optString("text");
    final int m = localJSONObject.optInt("text_size", -1);
    final Integer localInteger1 = a(localJSONObject, "text_color");
    final Integer localInteger2 = a(localJSONObject, "bg_color");
    final int n = localJSONObject.optInt("animation_ms", 1000);
    final int i1 = localJSONObject.optInt("presentation_ms", 4000);
    paramJSONObject = new ArrayList();
    if (localJSONObject.optJSONArray("images") != null) {
      paramJSONObject = a(localJSONObject, "images", false, false, true);
    }
    for (;;)
    {
      hr.a(hr.a(paramJSONObject), new hr.a()
      {
        public a a(List<c> paramAnonymousList)
        {
          if (paramAnonymousList != null) {
            for (;;)
            {
              try
              {
                if (paramAnonymousList.isEmpty()) {
                  break;
                }
                String str = str;
                List localList = fq.a(paramAnonymousList);
                Integer localInteger1 = localInteger2;
                Integer localInteger2 = localInteger1;
                if (m > 0)
                {
                  paramAnonymousList = Integer.valueOf(m);
                  paramAnonymousList = new a(str, localList, localInteger1, localInteger2, paramAnonymousList, i1 + n);
                }
              }
              catch (RemoteException paramAnonymousList)
              {
                gz.b("Could not get attribution icon", paramAnonymousList);
                return null;
              }
              paramAnonymousList = null;
            }
          }
          paramAnonymousList = null;
          return paramAnonymousList;
        }
      });
      paramJSONObject.add(a(localJSONObject, "image", false, false));
    }
  }
  
  public boolean b()
  {
    synchronized (g)
    {
      boolean bool = i;
      return bool;
    }
  }
  
  public static abstract interface a<T extends h.a>
  {
    public abstract T a(fq paramfq, JSONObject paramJSONObject)
      throws JSONException, InterruptedException, ExecutionException;
  }
  
  class b
  {
    public bz a;
    
    b() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */