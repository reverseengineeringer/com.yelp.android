package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@ey
public class gu
  extends WebView
  implements DownloadListener
{
  private final Object mH = new Object();
  private final WindowManager mR;
  private ay qI;
  private final gs qJ;
  private final k tl;
  private final gv wW;
  private final gu.a wX;
  private dp wY;
  private boolean wZ;
  private boolean xa;
  private boolean xb;
  private boolean xc;
  
  protected gu(gu.a parama, ay paramay, boolean paramBoolean1, boolean paramBoolean2, k paramk, gs paramgs)
  {
    super(parama);
    wX = parama;
    qI = paramay;
    wZ = paramBoolean1;
    tl = paramk;
    qJ = paramgs;
    mR = ((WindowManager)getContext().getSystemService("window"));
    setBackgroundColor(0);
    paramay = getSettings();
    paramay.setJavaScriptEnabled(true);
    paramay.setSavePassword(false);
    paramay.setSupportMultipleWindows(true);
    paramay.setJavaScriptCanOpenWindowsAutomatically(true);
    gi.a(parama, wS, paramay);
    if (Build.VERSION.SDK_INT >= 17)
    {
      go.a(getContext(), paramay);
      setDownloadListener(this);
      if (Build.VERSION.SDK_INT < 11) {
        break label194;
      }
      wW = new gx(this, paramBoolean2);
      label142:
      setWebViewClient(wW);
      if (Build.VERSION.SDK_INT < 14) {
        break label211;
      }
      setWebChromeClient(new gy(this));
    }
    for (;;)
    {
      dJ();
      return;
      if (Build.VERSION.SDK_INT < 11) {
        break;
      }
      gm.a(getContext(), paramay);
      break;
      label194:
      wW = new gv(this, paramBoolean2);
      break label142;
      label211:
      if (Build.VERSION.SDK_INT >= 11) {
        setWebChromeClient(new gw(this));
      }
    }
  }
  
  public static gu a(Context paramContext, ay paramay, boolean paramBoolean1, boolean paramBoolean2, k paramk, gs paramgs)
  {
    return new gu(new gu.a(paramContext), paramay, paramBoolean1, paramBoolean2, paramk, paramgs);
  }
  
  private void dJ()
  {
    for (;;)
    {
      synchronized (mH)
      {
        if ((wZ) || (qI.oq))
        {
          if (Build.VERSION.SDK_INT < 14)
          {
            gr.S("Disabling hardware acceleration on an overlay.");
            dK();
            return;
          }
          gr.S("Enabling hardware acceleration on an overlay.");
          dL();
        }
      }
      if (Build.VERSION.SDK_INT < 18)
      {
        gr.S("Disabling hardware acceleration on an AdView.");
        dK();
      }
      else
      {
        gr.S("Enabling hardware acceleration on an AdView.");
        dL();
      }
    }
  }
  
  private void dK()
  {
    synchronized (mH)
    {
      if ((!xa) && (Build.VERSION.SDK_INT >= 11)) {
        gm.i(this);
      }
      xa = true;
      return;
    }
  }
  
  private void dL()
  {
    synchronized (mH)
    {
      if ((xa) && (Build.VERSION.SDK_INT >= 11)) {
        gm.j(this);
      }
      xa = false;
      return;
    }
  }
  
  protected void X(String paramString)
  {
    synchronized (mH)
    {
      if (!isDestroyed())
      {
        loadUrl(paramString);
        return;
      }
      gr.W("The webview is destroyed. Ignoring action.");
    }
  }
  
  public void a(Context paramContext, ay paramay)
  {
    synchronized (mH)
    {
      wX.setBaseContext(paramContext);
      wY = null;
      qI = paramay;
      wZ = false;
      xc = false;
      gi.b(this);
      loadUrl("about:blank");
      wW.reset();
      setOnTouchListener(null);
      setOnClickListener(null);
      return;
    }
  }
  
  public void a(ay paramay)
  {
    synchronized (mH)
    {
      qI = paramay;
      requestLayout();
      return;
    }
  }
  
  public void a(dp paramdp)
  {
    synchronized (mH)
    {
      wY = paramdp;
      return;
    }
  }
  
  public void a(String paramString, Map<String, ?> paramMap)
  {
    try
    {
      paramMap = gi.t(paramMap);
      b(paramString, paramMap);
      return;
    }
    catch (JSONException paramString)
    {
      gr.W("Could not convert parameters to JSON.");
    }
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject;
    if (paramJSONObject == null) {
      localObject = new JSONObject();
    }
    paramJSONObject = ((JSONObject)localObject).toString();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("javascript:" + paramString + "(");
    ((StringBuilder)localObject).append(paramJSONObject);
    ((StringBuilder)localObject).append(");");
    X(((StringBuilder)localObject).toString());
  }
  
  public ay ac()
  {
    synchronized (mH)
    {
      ay localay = qI;
      return localay;
    }
  }
  
  public void b(String paramString, JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject;
    if (paramJSONObject == null) {
      localObject = new JSONObject();
    }
    paramJSONObject = ((JSONObject)localObject).toString();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("javascript:AFMA_ReceiveMessage('");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("'");
    ((StringBuilder)localObject).append(",");
    ((StringBuilder)localObject).append(paramJSONObject);
    ((StringBuilder)localObject).append(");");
    gr.V("Dispatching AFMA event: " + localObject);
    X(((StringBuilder)localObject).toString());
  }
  
  public void cb()
  {
    if (!dD().dN()) {
      return;
    }
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    Display localDisplay = mR.getDefaultDisplay();
    localDisplay.getMetrics(localDisplayMetrics);
    int j = gi.s(getContext());
    float f = 160.0F / densityDpi;
    int i = Math.round(widthPixels * f);
    j = Math.round((heightPixels - j) * f);
    try
    {
      b("onScreenInfoChanged", new JSONObject().put("width", i).put("height", j).put("density", density).put("rotation", localDisplay.getRotation()));
      return;
    }
    catch (JSONException localJSONException)
    {
      gr.b("Error occured while obtaining screen information.", localJSONException);
    }
  }
  
  public void ci()
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", qJ.wS);
    a("onshow", localHashMap);
  }
  
  public void cj()
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", qJ.wS);
    a("onhide", localHashMap);
  }
  
  public dp dC()
  {
    synchronized (mH)
    {
      dp localdp = wY;
      return localdp;
    }
  }
  
  public gv dD()
  {
    return wW;
  }
  
  public boolean dE()
  {
    return xc;
  }
  
  public k dF()
  {
    return tl;
  }
  
  public gs dG()
  {
    return qJ;
  }
  
  public boolean dH()
  {
    synchronized (mH)
    {
      boolean bool = wZ;
      return bool;
    }
  }
  
  public Context dI()
  {
    return wX.dI();
  }
  
  public void destroy()
  {
    synchronized (mH)
    {
      if (wY != null) {
        wY.close();
      }
      xb = true;
      super.destroy();
      return;
    }
  }
  
  public void evaluateJavascript(String paramString, ValueCallback<String> paramValueCallback)
  {
    synchronized (mH)
    {
      if (isDestroyed())
      {
        gr.W("The webview is destroyed. Ignoring action.");
        if (paramValueCallback != null) {
          paramValueCallback.onReceiveValue(null);
        }
        return;
      }
      super.evaluateJavascript(paramString, paramValueCallback);
      return;
    }
  }
  
  public boolean isDestroyed()
  {
    synchronized (mH)
    {
      boolean bool = xb;
      return bool;
    }
  }
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    try
    {
      paramString2 = new Intent("android.intent.action.VIEW");
      paramString2.setDataAndType(Uri.parse(paramString1), paramString4);
      getContext().startActivity(paramString2);
      return;
    }
    catch (ActivityNotFoundException paramString2)
    {
      gr.S("Couldn't find an Activity to view url/mimetype: " + paramString1 + " / " + paramString4);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int j = Integer.MAX_VALUE;
    for (;;)
    {
      int i;
      int m;
      int k;
      synchronized (mH)
      {
        if ((isInEditMode()) || (wZ))
        {
          super.onMeasure(paramInt1, paramInt2);
          return;
        }
        int n = View.MeasureSpec.getMode(paramInt1);
        i = View.MeasureSpec.getSize(paramInt1);
        m = View.MeasureSpec.getMode(paramInt2);
        k = View.MeasureSpec.getSize(paramInt2);
        if (n == Integer.MIN_VALUE) {
          break label280;
        }
        if (n != 1073741824) {
          break label273;
        }
        break label280;
        if ((qI.widthPixels > paramInt1) || (qI.heightPixels > paramInt2))
        {
          float f = wX.getResources().getDisplayMetrics().density;
          gr.W("Not enough space to show ad. Needs " + (int)(qI.widthPixels / f) + "x" + (int)(qI.heightPixels / f) + " dp, but only has " + (int)(i / f) + "x" + (int)(k / f) + " dp.");
          if (getVisibility() != 8) {
            setVisibility(4);
          }
          setMeasuredDimension(0, 0);
          return;
        }
      }
      if (getVisibility() != 8) {
        setVisibility(0);
      }
      setMeasuredDimension(qI.widthPixels, qI.heightPixels);
      continue;
      label273:
      paramInt1 = Integer.MAX_VALUE;
      break label283;
      label280:
      paramInt1 = i;
      label283:
      if (m != Integer.MIN_VALUE)
      {
        paramInt2 = j;
        if (m != 1073741824) {}
      }
      else
      {
        paramInt2 = k;
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (tl != null) {
      tl.a(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void q(boolean paramBoolean)
  {
    synchronized (mH)
    {
      if (wY != null)
      {
        wY.q(paramBoolean);
        return;
      }
      xc = paramBoolean;
    }
  }
  
  public void setContext(Context paramContext)
  {
    wX.setBaseContext(paramContext);
  }
  
  public void z(boolean paramBoolean)
  {
    synchronized (mH)
    {
      wZ = paramBoolean;
      dJ();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */