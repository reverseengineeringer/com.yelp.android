package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.ads.internal.formats.e;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bd.a;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.dt;
import com.google.android.gms.internal.dx;
import com.google.android.gms.internal.dy;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic;
import com.google.android.gms.internal.ic.a;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class n
{
  public static View a(gr paramgr)
  {
    if (paramgr == null)
    {
      gz.b("AdState is null");
      return null;
    }
    if (b(paramgr)) {
      return b.b();
    }
    try
    {
      paramgr = o.a();
      if (paramgr == null)
      {
        gz.d("View in mediation adapter is null.");
        return null;
      }
      paramgr = (View)com.google.android.gms.dynamic.d.a(paramgr);
      return paramgr;
    }
    catch (RemoteException paramgr)
    {
      gz.d("Could not get View from mediation adapter.", paramgr);
    }
    return null;
  }
  
  private static com.google.android.gms.ads.internal.formats.d a(dx paramdx)
    throws RemoteException
  {
    return new com.google.android.gms.ads.internal.formats.d(paramdx.a(), paramdx.b(), paramdx.c(), paramdx.d(), paramdx.e(), paramdx.f(), paramdx.g(), paramdx.h(), null, paramdx.l());
  }
  
  private static e a(dy paramdy)
    throws RemoteException
  {
    return new e(paramdy.a(), paramdy.b(), paramdy.c(), paramdy.d(), paramdy.e(), paramdy.f(), null, paramdy.j());
  }
  
  static bz a(dx paramdx, final dy paramdy, final g.a parama)
  {
    new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        paramAnonymousMap = paramAnonymousib.b();
        if (paramAnonymousMap == null) {}
        do
        {
          return;
          try
          {
            if (a == null) {
              continue;
            }
            if (!a.k())
            {
              a.a(com.google.android.gms.dynamic.d.a(paramAnonymousMap));
              parama.a();
              return;
            }
          }
          catch (RemoteException paramAnonymousib)
          {
            gz.d("Unable to call handleClick on mapper", paramAnonymousib);
            return;
          }
          n.a(paramAnonymousib);
          return;
        } while (paramdy == null);
        if (!paramdy.i())
        {
          paramdy.a(com.google.android.gms.dynamic.d.a(paramAnonymousMap));
          parama.a();
          return;
        }
        n.a(paramAnonymousib);
      }
    };
  }
  
  static bz a(CountDownLatch paramCountDownLatch)
  {
    new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        a.countDown();
        paramAnonymousib = paramAnonymousib.b();
        if (paramAnonymousib == null) {
          return;
        }
        paramAnonymousib.setVisibility(0);
      }
    };
  }
  
  private static String a(Bitmap paramBitmap)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    if (paramBitmap == null)
    {
      gz.d("Bitmap is null. Returning empty string");
      return "";
    }
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    paramBitmap = Base64.encodeToString(localByteArrayOutputStream.toByteArray(), 0);
    return "data:image/png;base64," + paramBitmap;
  }
  
  static String a(bd parambd)
  {
    if (parambd == null)
    {
      gz.d("Image is null. Returning empty string");
      return "";
    }
    try
    {
      Object localObject = parambd.b();
      if (localObject != null)
      {
        localObject = ((Uri)localObject).toString();
        return (String)localObject;
      }
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Unable to get image uri. Trying data uri next");
    }
    return b(parambd);
  }
  
  public static void a(gr paramgr, g.a parama)
  {
    ib localib;
    View localView;
    if (b(paramgr))
    {
      localib = b;
      localView = localib.b();
      if (localView == null) {
        gz.d("AdWebView is null");
      }
    }
    else
    {
      return;
    }
    List localList;
    try
    {
      localList = n.n;
      if ((localList == null) || (localList.isEmpty()))
      {
        gz.d("No template ids present in mediation response");
        return;
      }
    }
    catch (RemoteException paramgr)
    {
      gz.d("Error occurred while recording impression and registering for clicks", paramgr);
      return;
    }
    dx localdx = o.h();
    paramgr = o.i();
    if ((localList.contains("2")) && (localdx != null))
    {
      localdx.b(com.google.android.gms.dynamic.d.a(localView));
      if (!localdx.j()) {
        localdx.i();
      }
      localib.l().a("/nativeExpressViewClicked", a(localdx, null, parama));
      return;
    }
    if ((localList.contains("1")) && (paramgr != null))
    {
      paramgr.b(com.google.android.gms.dynamic.d.a(localView));
      if (!paramgr.h()) {
        paramgr.g();
      }
      localib.l().a("/nativeExpressViewClicked", a(null, paramgr, parama));
      return;
    }
    gz.d("No matching template id and mapper");
  }
  
  private static void a(final ib paramib, com.google.android.gms.ads.internal.formats.d paramd, final String paramString)
  {
    paramib.l().a(new ic.a()
    {
      public void a(ib paramAnonymousib, boolean paramAnonymousBoolean)
      {
        try
        {
          paramAnonymousib = new JSONObject();
          paramAnonymousib.put("headline", a.a());
          paramAnonymousib.put("body", a.c());
          paramAnonymousib.put("call_to_action", a.e());
          paramAnonymousib.put("price", a.h());
          paramAnonymousib.put("star_rating", String.valueOf(a.f()));
          paramAnonymousib.put("store", a.g());
          paramAnonymousib.put("icon", n.a(a.d()));
          localObject1 = new JSONArray();
          Object localObject2 = a.b();
          if (localObject2 != null)
          {
            localObject2 = ((List)localObject2).iterator();
            while (((Iterator)localObject2).hasNext()) {
              ((JSONArray)localObject1).put(n.a(n.a(((Iterator)localObject2).next())));
            }
          }
          paramAnonymousib.put("images", localObject1);
        }
        catch (JSONException paramAnonymousib)
        {
          gz.d("Exception occurred when loading assets", paramAnonymousib);
          return;
        }
        paramAnonymousib.put("extras", n.a(a.m(), paramString));
        Object localObject1 = new JSONObject();
        ((JSONObject)localObject1).put("assets", paramAnonymousib);
        ((JSONObject)localObject1).put("template_id", "2");
        paramib.a("google.afma.nativeExpressAds.loadAssets", (JSONObject)localObject1);
      }
    });
  }
  
  private static void a(final ib paramib, e parame, final String paramString)
  {
    paramib.l().a(new ic.a()
    {
      public void a(ib paramAnonymousib, boolean paramAnonymousBoolean)
      {
        try
        {
          paramAnonymousib = new JSONObject();
          paramAnonymousib.put("headline", a.a());
          paramAnonymousib.put("body", a.c());
          paramAnonymousib.put("call_to_action", a.e());
          paramAnonymousib.put("advertiser", a.f());
          paramAnonymousib.put("logo", n.a(a.d()));
          localObject1 = new JSONArray();
          Object localObject2 = a.b();
          if (localObject2 != null)
          {
            localObject2 = ((List)localObject2).iterator();
            while (((Iterator)localObject2).hasNext()) {
              ((JSONArray)localObject1).put(n.a(n.a(((Iterator)localObject2).next())));
            }
          }
          paramAnonymousib.put("images", localObject1);
        }
        catch (JSONException paramAnonymousib)
        {
          gz.d("Exception occurred when loading assets", paramAnonymousib);
          return;
        }
        paramAnonymousib.put("extras", n.a(a.h(), paramString));
        Object localObject1 = new JSONObject();
        ((JSONObject)localObject1).put("assets", paramAnonymousib);
        ((JSONObject)localObject1).put("template_id", "1");
        paramib.a("google.afma.nativeExpressAds.loadAssets", (JSONObject)localObject1);
      }
    });
  }
  
  private static void a(ib paramib, CountDownLatch paramCountDownLatch)
  {
    paramib.l().a("/nativeExpressAssetsLoaded", a(paramCountDownLatch));
    paramib.l().a("/nativeExpressAssetsLoadingFailed", b(paramCountDownLatch));
  }
  
  public static boolean a(ib paramib, dn paramdn, CountDownLatch paramCountDownLatch)
  {
    boolean bool1 = false;
    try
    {
      boolean bool2 = b(paramib, paramdn, paramCountDownLatch);
      bool1 = bool2;
    }
    catch (RemoteException paramib)
    {
      for (;;)
      {
        gz.d("Unable to invoke load assets", paramib);
      }
    }
    catch (RuntimeException paramib)
    {
      paramCountDownLatch.countDown();
      throw paramib;
    }
    if (!bool1) {
      paramCountDownLatch.countDown();
    }
    return bool1;
  }
  
  private static bd b(Object paramObject)
  {
    if ((paramObject instanceof IBinder)) {
      return bd.a.a((IBinder)paramObject);
    }
    return null;
  }
  
  static bz b(CountDownLatch paramCountDownLatch)
  {
    new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        gz.d("Adapter returned an ad, but assets substitution failed");
        a.countDown();
        paramAnonymousib.destroy();
      }
    };
  }
  
  private static String b(bd parambd)
  {
    try
    {
      parambd = parambd.a();
      if (parambd == null)
      {
        gz.d("Drawable is null. Returning empty string");
        return "";
      }
      parambd = (Drawable)com.google.android.gms.dynamic.d.a(parambd);
      if (!(parambd instanceof BitmapDrawable))
      {
        gz.d("Drawable is not an instance of BitmapDrawable. Returning empty string");
        return "";
      }
    }
    catch (RemoteException parambd)
    {
      gz.d("Unable to get drawable. Returning empty string");
      return "";
    }
    return a(((BitmapDrawable)parambd).getBitmap());
  }
  
  private static JSONObject b(Bundle paramBundle, String paramString)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if ((paramBundle == null) || (TextUtils.isEmpty(paramString))) {
      return localJSONObject;
    }
    paramString = new JSONObject(paramString);
    Iterator localIterator = paramString.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (paramBundle.containsKey(str)) {
        if ("image".equals(paramString.getString(str)))
        {
          Object localObject = paramBundle.get(str);
          if ((localObject instanceof Bitmap)) {
            localJSONObject.put(str, a((Bitmap)localObject));
          } else {
            gz.d("Invalid type. An image type extra should return a bitmap");
          }
        }
        else if ((paramBundle.get(str) instanceof Bitmap))
        {
          gz.d("Invalid asset type. Bitmap should be returned only for image type");
        }
        else
        {
          localJSONObject.put(str, String.valueOf(paramBundle.get(str)));
        }
      }
    }
    return localJSONObject;
  }
  
  private static void b(ib paramib)
  {
    View.OnClickListener localOnClickListener = paramib.A();
    if (localOnClickListener != null) {
      localOnClickListener.onClick(paramib.b());
    }
  }
  
  public static boolean b(gr paramgr)
  {
    return (paramgr != null) && (m) && (n != null) && (n.k != null);
  }
  
  private static boolean b(ib paramib, dn paramdn, CountDownLatch paramCountDownLatch)
    throws RemoteException
  {
    Object localObject = paramib.b();
    if (localObject == null)
    {
      gz.d("AdWebView is null");
      return false;
    }
    ((View)localObject).setVisibility(4);
    localObject = b.n;
    if ((localObject == null) || (((List)localObject).isEmpty()))
    {
      gz.d("No template ids present in mediation response");
      return false;
    }
    a(paramib, paramCountDownLatch);
    paramCountDownLatch = c.h();
    dy localdy = c.i();
    if ((((List)localObject).contains("2")) && (paramCountDownLatch != null))
    {
      a(paramib, a(paramCountDownLatch), b.m);
      paramCountDownLatch = b.k;
      paramdn = b.l;
      if (paramdn == null) {
        break label188;
      }
      paramib.loadDataWithBaseURL(paramdn, paramCountDownLatch, "text/html", "UTF-8", null);
    }
    for (;;)
    {
      return true;
      if ((((List)localObject).contains("1")) && (localdy != null))
      {
        a(paramib, a(localdy), b.m);
        break;
      }
      gz.d("No matching template id and mapper");
      return false;
      label188:
      paramib.loadData(paramCountDownLatch, "text/html", "UTF-8");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */