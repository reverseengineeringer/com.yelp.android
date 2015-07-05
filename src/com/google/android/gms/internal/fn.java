package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ey
public class fn
  implements Callable<fy>
{
  private final Context mContext;
  private final Object mH = new Object();
  private final u pM;
  private final fy.a tB;
  private int tq;
  private final gn ul;
  private final ai um;
  private boolean un;
  private List<String> uo;
  
  public fn(Context paramContext, u paramu, ai paramai, gn paramgn, fy.a parama)
  {
    mContext = paramContext;
    pM = paramu;
    ul = paramgn;
    um = paramai;
    tB = parama;
    un = false;
    tq = -2;
    uo = null;
  }
  
  private bv.a a(ah paramah, fn.a parama, JSONObject paramJSONObject)
  {
    if (cO()) {
      return null;
    }
    Object localObject = b(paramJSONObject.getJSONObject("tracking_urls_and_actions"), "impression_tracking_urls");
    if (localObject == null) {}
    for (localObject = null;; localObject = Arrays.asList((Object[])localObject))
    {
      uo = ((List)localObject);
      parama = parama.a(this, paramJSONObject);
      if (parama != null) {
        break;
      }
      gr.T("Failed to retrieve ad assets.");
      return null;
    }
    parama.a(new bv(pM, paramah, paramJSONObject));
    return parama;
  }
  
  private fy a(bv.a parama)
  {
    for (;;)
    {
      synchronized (mH)
      {
        int j = tq;
        int i = j;
        if (parama == null)
        {
          i = j;
          if (tq == -2) {
            i = 0;
          }
        }
        if (i != -2)
        {
          parama = null;
          return new fy(tB.vJ.tL, null, tB.vK.qw, i, tB.vK.qx, uo, tB.vK.orientation, tB.vK.qA, tB.vJ.tO, false, null, null, null, null, null, 0L, tB.lS, tB.vK.tV, tB.vG, tB.vH, tB.vK.ub, tB.vD, parama);
        }
      }
    }
  }
  
  private String[] b(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject == null) {
      return null;
    }
    paramString = new String[paramJSONObject.length()];
    int i = 0;
    while (i < paramJSONObject.length())
    {
      paramString[i] = paramJSONObject.getString(i);
      i += 1;
    }
    return paramString;
  }
  
  private JSONObject c(ah paramah)
  {
    if (cO()) {
      return null;
    }
    gj localgj = new gj();
    paramah.a("/nativeAdPreProcess", new fn.1(this, paramah, localgj));
    paramah.a("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(tB.vK.tU));
    return (JSONObject)localgj.get();
  }
  
  private ah cN()
  {
    if (cO()) {
      return null;
    }
    ah localah = (ah)um.a(mContext, tB.vJ.lO, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/native_ads.html").get();
    localah.a(pM, pM, pM, pM, false, pM);
    return localah;
  }
  
  public Future<Drawable> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramJSONObject = paramJSONObject.getJSONObject(paramString);
      paramString = paramJSONObject;
      if (paramJSONObject == null) {
        paramString = new JSONObject();
      }
      if (!paramBoolean) {
        break label66;
      }
    }
    label66:
    for (paramJSONObject = paramString.getString("url");; paramJSONObject = paramString.optString("url"))
    {
      if (!TextUtils.isEmpty(paramJSONObject)) {
        break label76;
      }
      a(0, paramBoolean);
      return new gk(null);
      paramJSONObject = paramJSONObject.optJSONObject(paramString);
      break;
    }
    label76:
    return ul.a(paramJSONObject, new fn.2(this, paramBoolean));
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      t(paramInt);
    }
  }
  
  protected fn.a b(JSONObject paramJSONObject)
  {
    if (cO()) {
      return null;
    }
    paramJSONObject = paramJSONObject.getString("template_id");
    if ("2".equals(paramJSONObject)) {
      return new fo();
    }
    if ("1".equals(paramJSONObject)) {
      return new fp();
    }
    t(0);
    return null;
  }
  
  public fy cM()
  {
    try
    {
      Object localObject = cN();
      JSONObject localJSONObject = c((ah)localObject);
      localObject = a(a((ah)localObject, b(localJSONObject), localJSONObject));
      return (fy)localObject;
    }
    catch (JSONException localJSONException)
    {
      gr.d("Malformed native JSON response.", localJSONException);
      if (!un) {
        t(0);
      }
      return a(null);
    }
    catch (TimeoutException localTimeoutException)
    {
      for (;;)
      {
        gr.d("Timeout when loading native ad.", localTimeoutException);
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
  
  public boolean cO()
  {
    synchronized (mH)
    {
      boolean bool = un;
      return bool;
    }
  }
  
  public void t(int paramInt)
  {
    synchronized (mH)
    {
      un = true;
      tq = paramInt;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */