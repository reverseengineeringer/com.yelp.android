package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.q;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.cy;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic;
import com.google.android.gms.internal.ic.a;
import com.google.android.gms.internal.id;
import com.google.android.gms.internal.j;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class i
  implements h
{
  private final Object a = new Object();
  private final q b;
  private final Context c;
  private final JSONObject d;
  private final cy e;
  private final h.a f;
  private final j g;
  private final VersionInfoParcel h;
  private boolean i;
  private ib j;
  private String k;
  private WeakReference<View> l = null;
  
  public i(Context paramContext, q paramq, cy paramcy, j paramj, JSONObject paramJSONObject, h.a parama, VersionInfoParcel paramVersionInfoParcel)
  {
    c = paramContext;
    b = paramq;
    e = paramcy;
    g = paramj;
    d = paramJSONObject;
    f = parama;
    h = paramVersionInfoParcel;
  }
  
  public b a(View.OnClickListener paramOnClickListener)
  {
    Object localObject = f.l();
    if (localObject == null) {
      return null;
    }
    localObject = new b(c, (a)localObject);
    ((b)localObject).setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    ((b)localObject).a().setOnClickListener(paramOnClickListener);
    ((b)localObject).a().setContentDescription("Ad attribution icon");
    return (b)localObject;
  }
  
  public void a()
  {
    zzx.zzcD("recordImpression must be called on the main UI thread.");
    a(true);
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("ad", d);
      e.a("google.afma.nativeAds.handleImpressionPing", localJSONObject);
      b.a(this);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        gz.b("Unable to create impression JSON.", localJSONException);
      }
    }
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    g.a(paramMotionEvent);
  }
  
  public void a(View paramView) {}
  
  public void a(View paramView, Map<String, WeakReference<View>> paramMap, JSONObject paramJSONObject1, JSONObject paramJSONObject2, JSONObject paramJSONObject3)
  {
    zzx.zzcD("performClick must be called on the main UI thread.");
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (paramView.equals((View)((WeakReference)localEntry.getValue()).get())) {
        a((String)localEntry.getKey(), paramJSONObject1, paramJSONObject2, paramJSONObject3);
      }
    }
  }
  
  public void a(String paramString, JSONObject paramJSONObject1, JSONObject paramJSONObject2, JSONObject paramJSONObject3)
  {
    zzx.zzcD("performClick must be called on the main UI thread.");
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("asset", paramString);
      localJSONObject.put("template", f.j());
      paramString = new JSONObject();
      paramString.put("ad", d);
      paramString.put("click", localJSONObject);
      if (b.c(f.k()) != null) {}
      for (boolean bool = true;; bool = false)
      {
        paramString.put("has_custom_click_handler", bool);
        if (paramJSONObject1 != null) {
          paramString.put("view_rectangles", paramJSONObject1);
        }
        if (paramJSONObject2 != null) {
          paramString.put("click_point", paramJSONObject2);
        }
        if (paramJSONObject3 != null) {
          paramString.put("native_view_rectangle", paramJSONObject3);
        }
        e.a("google.afma.nativeAds.handleClickGmsg", paramString);
        return;
      }
      return;
    }
    catch (JSONException paramString)
    {
      gz.b("Unable to create click JSON.", paramString);
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void b(View paramView)
  {
    synchronized (a)
    {
      if (i) {
        return;
      }
      if (!paramView.isShown()) {
        return;
      }
    }
    if (!paramView.getGlobalVisibleRect(new Rect(), null)) {
      return;
    }
    a();
  }
  
  public void c(View paramView)
  {
    l = new WeakReference(paramView);
  }
  
  public ib d()
  {
    j = g();
    j.b().setVisibility(8);
    e.a("/loadHtml", new bz()
    {
      public void a(ib paramAnonymousib, final Map<String, String> paramAnonymousMap)
      {
        i.c(i.this).l().a(new ic.a()
        {
          public void a(ib paramAnonymous2ib, boolean paramAnonymous2Boolean)
          {
            i.a(i.this, (String)paramAnonymousMap.get("id"));
            paramAnonymous2ib = new JSONObject();
            try
            {
              paramAnonymous2ib.put("messageType", "htmlLoaded");
              paramAnonymous2ib.put("id", i.a(i.this));
              i.b(i.this).b("sendMessageToNativeJs", paramAnonymous2ib);
              return;
            }
            catch (JSONException paramAnonymous2ib)
            {
              gz.b("Unable to dispatch sendMessageToNativeJsevent", paramAnonymous2ib);
            }
          }
        });
        paramAnonymousib = (String)paramAnonymousMap.get("overlayHtml");
        paramAnonymousMap = (String)paramAnonymousMap.get("baseUrl");
        if (TextUtils.isEmpty(paramAnonymousMap))
        {
          i.c(i.this).loadData(paramAnonymousib, "text/html", "UTF-8");
          return;
        }
        i.c(i.this).loadDataWithBaseURL(paramAnonymousMap, paramAnonymousib, "text/html", "UTF-8", null);
      }
    });
    e.a("/showOverlay", new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        i.c(i.this).b().setVisibility(0);
      }
    });
    e.a("/hideOverlay", new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        i.c(i.this).b().setVisibility(8);
      }
    });
    j.l().a("/hideOverlay", new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        i.c(i.this).b().setVisibility(8);
      }
    });
    j.l().a("/sendMessageToSdk", new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        paramAnonymousib = new JSONObject();
        try
        {
          Iterator localIterator = paramAnonymousMap.keySet().iterator();
          while (localIterator.hasNext())
          {
            String str = (String)localIterator.next();
            paramAnonymousib.put(str, paramAnonymousMap.get(str));
          }
          paramAnonymousib.put("id", i.a(i.this));
        }
        catch (JSONException paramAnonymousib)
        {
          gz.b("Unable to dispatch sendMessageToNativeJs event", paramAnonymousib);
          return;
        }
        i.b(i.this).b("sendMessageToNativeJs", paramAnonymousib);
      }
    });
    return j;
  }
  
  public View e()
  {
    if (l != null) {
      return (View)l.get();
    }
    return null;
  }
  
  public Context f()
  {
    return c;
  }
  
  ib g()
  {
    return s.f().a(c, AdSizeParcel.a(c), false, false, g, h);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */