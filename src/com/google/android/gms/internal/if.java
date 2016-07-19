package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.MutableContextWrapper;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@fv
class if
  extends WebView
  implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, ib
{
  private int A = -1;
  private Map<String, cl> B;
  private final WindowManager C;
  private final a a;
  private final Object b = new Object();
  private final j c;
  private final VersionInfoParcel d;
  private final e e;
  private ic f;
  private zzd g;
  private AdSizeParcel h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private Boolean m;
  private int n;
  private boolean o = true;
  private String p = "";
  private au q;
  private au r;
  private au s;
  private aw t;
  private WeakReference<View.OnClickListener> u;
  private zzd v;
  private ho w;
  private int x = -1;
  private int y = -1;
  private int z = -1;
  
  protected if(a parama, AdSizeParcel paramAdSizeParcel, boolean paramBoolean1, boolean paramBoolean2, j paramj, VersionInfoParcel paramVersionInfoParcel, ax paramax, e parame)
  {
    super(parama);
    a = parama;
    h = paramAdSizeParcel;
    k = paramBoolean1;
    n = -1;
    c = paramj;
    d = paramVersionInfoParcel;
    e = parame;
    C = ((WindowManager)getContext().getSystemService("window"));
    setBackgroundColor(0);
    paramAdSizeParcel = getSettings();
    paramAdSizeParcel.setAllowFileAccess(false);
    paramAdSizeParcel.setJavaScriptEnabled(true);
    paramAdSizeParcel.setSavePassword(false);
    paramAdSizeParcel.setSupportMultipleWindows(true);
    paramAdSizeParcel.setJavaScriptCanOpenWindowsAutomatically(true);
    if (Build.VERSION.SDK_INT >= 21) {
      paramAdSizeParcel.setMixedContentMode(0);
    }
    s.e().a(parama, b, paramAdSizeParcel);
    s.g().a(getContext(), paramAdSizeParcel);
    setDownloadListener(this);
    F();
    if (kf.e()) {
      addJavascriptInterface(new ig(this), "googleAdsJsInterface");
    }
    w = new ho(a.a(), this, null);
    a(paramax);
  }
  
  private void D()
  {
    synchronized (b)
    {
      m = s.h().j();
      Boolean localBoolean = m;
      if (localBoolean == null) {}
      try
      {
        evaluateJavascript("(function(){})()", null);
        a(Boolean.valueOf(true));
        return;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          a(Boolean.valueOf(false));
        }
      }
    }
  }
  
  private void E()
  {
    as.a(t.a(), q, new String[] { "aeh" });
  }
  
  private void F()
  {
    for (;;)
    {
      synchronized (b)
      {
        if ((k) || (h.e))
        {
          if (Build.VERSION.SDK_INT < 14)
          {
            gz.a("Disabling hardware acceleration on an overlay.");
            G();
            return;
          }
          gz.a("Enabling hardware acceleration on an overlay.");
          H();
        }
      }
      if (Build.VERSION.SDK_INT < 18)
      {
        gz.a("Disabling hardware acceleration on an AdView.");
        G();
      }
      else
      {
        gz.a("Enabling hardware acceleration on an AdView.");
        H();
      }
    }
  }
  
  private void G()
  {
    synchronized (b)
    {
      if (!l) {
        s.g().c(this);
      }
      l = true;
      return;
    }
  }
  
  private void H()
  {
    synchronized (b)
    {
      if (l) {
        s.g().b(this);
      }
      l = false;
      return;
    }
  }
  
  private void I()
  {
    synchronized (b)
    {
      if (B != null)
      {
        Iterator localIterator = B.values().iterator();
        if (localIterator.hasNext()) {
          ((cl)localIterator.next()).release();
        }
      }
    }
  }
  
  private void J()
  {
    if (t == null) {}
    ax localax;
    do
    {
      return;
      localax = t.a();
    } while ((localax == null) || (s.h().e() == null));
    s.h().e().a(localax);
  }
  
  static if a(Context paramContext, AdSizeParcel paramAdSizeParcel, boolean paramBoolean1, boolean paramBoolean2, j paramj, VersionInfoParcel paramVersionInfoParcel, ax paramax, e parame)
  {
    return new if(new a(paramContext), paramAdSizeParcel, paramBoolean1, paramBoolean2, paramj, paramVersionInfoParcel, paramax, parame);
  }
  
  private void a(ax paramax)
  {
    J();
    t = new aw(new ax(true, "make_wv", h.b));
    t.a().a(paramax);
    r = as.a(t.a());
    t.a("native:view_create", r);
    s = null;
    q = null;
  }
  
  public View.OnClickListener A()
  {
    return (View.OnClickListener)u.get();
  }
  
  public boolean B()
  {
    if (!l().b()) {
      return false;
    }
    DisplayMetrics localDisplayMetrics = s.e().a(C);
    int i3 = v.a().b(localDisplayMetrics, widthPixels);
    int i4 = v.a().b(localDisplayMetrics, heightPixels);
    Object localObject = f();
    int i2;
    int i1;
    if ((localObject == null) || (((Activity)localObject).getWindow() == null))
    {
      i2 = i4;
      i1 = i3;
      label77:
      if ((y == i3) && (x == i4) && (z == i1) && (A == i2)) {
        break label224;
      }
      if ((y == i3) && (x == i4)) {
        break label226;
      }
    }
    label224:
    label226:
    for (boolean bool = true;; bool = false)
    {
      y = i3;
      x = i4;
      z = i1;
      A = i2;
      new eo(this).a(i3, i4, i1, i2, density, C.getDefaultDisplay().getRotation());
      return bool;
      localObject = s.e().a((Activity)localObject);
      i1 = v.a().b(localDisplayMetrics, localObject[0]);
      i2 = v.a().b(localDisplayMetrics, localObject[1]);
      break label77;
      break;
    }
  }
  
  Boolean C()
  {
    synchronized (b)
    {
      Boolean localBoolean = m;
      return localBoolean;
    }
  }
  
  public WebView a()
  {
    return this;
  }
  
  public void a(int paramInt)
  {
    E();
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("closetype", String.valueOf(paramInt));
    localHashMap.put("version", d.b);
    a("onhide", localHashMap);
  }
  
  public void a(Context paramContext)
  {
    a.setBaseContext(paramContext);
    w.a(a.a());
  }
  
  public void a(Context paramContext, AdSizeParcel paramAdSizeParcel, ax paramax)
  {
    synchronized (b)
    {
      w.b();
      a(paramContext);
      g = null;
      h = paramAdSizeParcel;
      k = false;
      i = false;
      p = "";
      n = -1;
      s.g().b(this);
      loadUrl("about:blank");
      f.f();
      setOnTouchListener(null);
      setOnClickListener(null);
      o = true;
      a(paramax);
      return;
    }
  }
  
  public void a(AdSizeParcel paramAdSizeParcel)
  {
    synchronized (b)
    {
      h = paramAdSizeParcel;
      requestLayout();
      return;
    }
  }
  
  public void a(zzd paramzzd)
  {
    synchronized (b)
    {
      g = paramzzd;
      return;
    }
  }
  
  public void a(o paramo, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    if (paramBoolean) {}
    for (paramo = "1";; paramo = "0")
    {
      localHashMap.put("isVisible", paramo);
      a("onAdVisibilityChanged", localHashMap);
      return;
    }
  }
  
  void a(Boolean paramBoolean)
  {
    m = paramBoolean;
    s.h().a(paramBoolean);
  }
  
  public void a(String paramString)
  {
    synchronized (b)
    {
      try
      {
        super.loadUrl(paramString);
        return;
      }
      catch (Throwable paramString)
      {
        for (;;)
        {
          gz.d("Could not call loadUrl. " + paramString);
        }
      }
    }
  }
  
  @TargetApi(19)
  protected void a(String paramString, ValueCallback<String> paramValueCallback)
  {
    synchronized (b)
    {
      if (!r()) {
        evaluateJavascript(paramString, paramValueCallback);
      }
      do
      {
        return;
        gz.d("The webview is destroyed. Ignoring action.");
      } while (paramValueCallback == null);
      paramValueCallback.onReceiveValue(null);
    }
  }
  
  public void a(String paramString, bz parambz)
  {
    if (f != null) {
      f.a(paramString, parambz);
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    d(paramString1 + "(" + paramString2 + ");");
  }
  
  public void a(String paramString, Map<String, ?> paramMap)
  {
    try
    {
      paramMap = s.e().a(paramMap);
      b(paramString, paramMap);
      return;
    }
    catch (JSONException paramString)
    {
      gz.d("Could not convert parameters to JSON.");
    }
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (paramJSONObject == null) {
      localJSONObject = new JSONObject();
    }
    a(paramString, localJSONObject.toString());
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (b)
    {
      k = paramBoolean;
      F();
      return;
    }
  }
  
  public View b()
  {
    return this;
  }
  
  public void b(int paramInt)
  {
    synchronized (b)
    {
      n = paramInt;
      if (g != null) {
        g.a(n);
      }
      return;
    }
  }
  
  public void b(zzd paramzzd)
  {
    synchronized (b)
    {
      v = paramzzd;
      return;
    }
  }
  
  public void b(String paramString)
  {
    Object localObject = b;
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    try
    {
      p = str;
      return;
    }
    finally {}
  }
  
  public void b(String paramString, bz parambz)
  {
    if (f != null) {
      f.b(paramString, parambz);
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
    ((StringBuilder)localObject).append("AFMA_ReceiveMessage('");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("'");
    ((StringBuilder)localObject).append(",");
    ((StringBuilder)localObject).append(paramJSONObject);
    ((StringBuilder)localObject).append(");");
    gz.e("Dispatching AFMA event: " + ((StringBuilder)localObject).toString());
    d(((StringBuilder)localObject).toString());
  }
  
  public void b(boolean paramBoolean)
  {
    synchronized (b)
    {
      if (g != null)
      {
        g.a(f.b(), paramBoolean);
        return;
      }
      i = paramBoolean;
    }
  }
  
  public void c()
  {
    E();
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", d.b);
    a("onhide", localHashMap);
  }
  
  protected void c(String paramString)
  {
    synchronized (b)
    {
      if (!r())
      {
        loadUrl(paramString);
        return;
      }
      gz.d("The webview is destroyed. Ignoring action.");
    }
  }
  
  public void c(boolean paramBoolean)
  {
    synchronized (b)
    {
      o = paramBoolean;
      return;
    }
  }
  
  public void d()
  {
    if (q == null)
    {
      as.a(t.a(), s, new String[] { "aes" });
      q = as.a(t.a());
      t.a("native:view_show", q);
    }
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", d.b);
    a("onshow", localHashMap);
  }
  
  protected void d(String paramString)
  {
    if (kf.g())
    {
      if (C() == null) {
        D();
      }
      if (C().booleanValue())
      {
        a(paramString, null);
        return;
      }
      c("javascript:" + paramString);
      return;
    }
    c("javascript:" + paramString);
  }
  
  public void destroy()
  {
    synchronized (b)
    {
      J();
      w.b();
      if (g != null)
      {
        g.a();
        g.k();
        g = null;
      }
      f.f();
      if (j) {
        return;
      }
      s.t().a(this);
      I();
      j = true;
      gz.e("Initiating WebView self destruct sequence in 3...");
      f.d();
      return;
    }
  }
  
  public void e()
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("app_volume", String.valueOf(s.e().f()));
    localHashMap.put("device_volume", String.valueOf(s.e().i(getContext())));
    a("volume", localHashMap);
  }
  
  @TargetApi(19)
  public void evaluateJavascript(String paramString, ValueCallback<String> paramValueCallback)
  {
    synchronized (b)
    {
      if (r())
      {
        gz.d("The webview is destroyed. Ignoring action.");
        if (paramValueCallback != null) {
          paramValueCallback.onReceiveValue(null);
        }
        return;
      }
      super.evaluateJavascript(paramString, paramValueCallback);
      return;
    }
  }
  
  public Activity f()
  {
    return a.a();
  }
  
  protected void finalize()
    throws Throwable
  {
    synchronized (b)
    {
      if (!j)
      {
        s.t().a(this);
        I();
      }
      super.finalize();
      return;
    }
  }
  
  public Context g()
  {
    return a.b();
  }
  
  public e h()
  {
    return e;
  }
  
  public zzd i()
  {
    synchronized (b)
    {
      zzd localzzd = g;
      return localzzd;
    }
  }
  
  public zzd j()
  {
    synchronized (b)
    {
      zzd localzzd = v;
      return localzzd;
    }
  }
  
  public AdSizeParcel k()
  {
    synchronized (b)
    {
      AdSizeParcel localAdSizeParcel = h;
      return localAdSizeParcel;
    }
  }
  
  public ic l()
  {
    return f;
  }
  
  public void loadData(String paramString1, String paramString2, String paramString3)
  {
    synchronized (b)
    {
      if (!r())
      {
        super.loadData(paramString1, paramString2, paramString3);
        return;
      }
      gz.d("The webview is destroyed. Ignoring action.");
    }
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    synchronized (b)
    {
      if (!r())
      {
        super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
        return;
      }
      gz.d("The webview is destroyed. Ignoring action.");
    }
  }
  
  public void loadUrl(String paramString)
  {
    for (;;)
    {
      synchronized (b)
      {
        boolean bool = r();
        if (!bool) {
          try
          {
            super.loadUrl(paramString);
            return;
          }
          catch (Throwable paramString)
          {
            gz.d("Could not call loadUrl. " + paramString);
            continue;
          }
        }
      }
      gz.d("The webview is destroyed. Ignoring action.");
    }
  }
  
  public boolean m()
  {
    return i;
  }
  
  public j n()
  {
    return c;
  }
  
  public VersionInfoParcel o()
  {
    return d;
  }
  
  protected void onAttachedToWindow()
  {
    synchronized (b)
    {
      super.onAttachedToWindow();
      if (!r()) {
        w.c();
      }
      return;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    synchronized (b)
    {
      if (!r()) {
        w.d();
      }
      super.onDetachedFromWindow();
      return;
    }
  }
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    try
    {
      paramString2 = new Intent("android.intent.action.VIEW");
      paramString2.setDataAndType(Uri.parse(paramString1), paramString4);
      s.e().a(getContext(), paramString2);
      return;
    }
    catch (ActivityNotFoundException paramString2)
    {
      gz.a("Couldn't find an Activity to view url/mimetype: " + paramString1 + " / " + paramString4);
    }
  }
  
  @TargetApi(21)
  protected void onDraw(Canvas paramCanvas)
  {
    if (r()) {}
    while ((Build.VERSION.SDK_INT == 21) && (paramCanvas.isHardwareAccelerated()) && (!isAttachedToWindow())) {
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  public void onGlobalLayout()
  {
    boolean bool = B();
    zzd localzzd = i();
    if ((localzzd != null) && (bool)) {
      localzzd.o();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = Integer.MAX_VALUE;
    synchronized (b)
    {
      if (r())
      {
        setMeasuredDimension(0, 0);
        return;
      }
      if ((isInEditMode()) || (k) || (h.i) || (h.j))
      {
        super.onMeasure(paramInt1, paramInt2);
        return;
      }
    }
    if (h.e)
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      C.getDefaultDisplay().getMetrics(localDisplayMetrics);
      setMeasuredDimension(widthPixels, heightPixels);
      return;
    }
    int i5 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt2);
    if (i5 != Integer.MIN_VALUE) {
      if (i5 == 1073741824) {
        break label368;
      }
    }
    for (;;)
    {
      if ((h.g > paramInt1) || (h.d > paramInt2))
      {
        float f1 = a.getResources().getDisplayMetrics().density;
        gz.d("Not enough space to show ad. Needs " + (int)(h.g / f1) + "x" + (int)(h.d / f1) + " dp, but only has " + (int)(i1 / f1) + "x" + (int)(i3 / f1) + " dp.");
        if (getVisibility() != 8) {
          setVisibility(4);
        }
        setMeasuredDimension(0, 0);
      }
      for (;;)
      {
        return;
        if (getVisibility() != 8) {
          setVisibility(0);
        }
        setMeasuredDimension(h.g, h.d);
      }
      paramInt1 = Integer.MAX_VALUE;
      break label371;
      label368:
      paramInt1 = i1;
      label371:
      if (i4 != Integer.MIN_VALUE)
      {
        paramInt2 = i2;
        if (i4 != 1073741824) {}
      }
      else
      {
        paramInt2 = i3;
      }
    }
  }
  
  public void onPause()
  {
    if (r()) {}
    for (;;)
    {
      return;
      try
      {
        if (kf.a())
        {
          super.onPause();
          return;
        }
      }
      catch (Exception localException)
      {
        gz.b("Could not pause webview.", localException);
      }
    }
  }
  
  public void onResume()
  {
    if (r()) {}
    for (;;)
    {
      return;
      try
      {
        if (kf.a())
        {
          super.onResume();
          return;
        }
      }
      catch (Exception localException)
      {
        gz.b("Could not resume webview.", localException);
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (c != null) {
      c.a(paramMotionEvent);
    }
    if (r()) {
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean p()
  {
    synchronized (b)
    {
      boolean bool = k;
      return bool;
    }
  }
  
  public int q()
  {
    synchronized (b)
    {
      int i1 = n;
      return i1;
    }
  }
  
  public boolean r()
  {
    synchronized (b)
    {
      boolean bool = j;
      return bool;
    }
  }
  
  public void s()
  {
    synchronized (b)
    {
      gz.e("Destroying WebView!");
      hd.a.post(new Runnable()
      {
        public void run()
        {
          if.a(if.this);
        }
      });
      return;
    }
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    u = new WeakReference(paramOnClickListener);
    super.setOnClickListener(paramOnClickListener);
  }
  
  public void setWebViewClient(WebViewClient paramWebViewClient)
  {
    super.setWebViewClient(paramWebViewClient);
    if ((paramWebViewClient instanceof ic)) {
      f = ((ic)paramWebViewClient);
    }
  }
  
  public void stopLoading()
  {
    if (r()) {
      return;
    }
    try
    {
      super.stopLoading();
      return;
    }
    catch (Exception localException)
    {
      gz.b("Could not stop loading webview.", localException);
    }
  }
  
  public boolean t()
  {
    synchronized (b)
    {
      as.a(t.a(), q, new String[] { "aebb" });
      boolean bool = o;
      return bool;
    }
  }
  
  public String u()
  {
    synchronized (b)
    {
      String str = p;
      return str;
    }
  }
  
  public ia v()
  {
    return null;
  }
  
  public au w()
  {
    return s;
  }
  
  public aw x()
  {
    return t;
  }
  
  public void y()
  {
    w.a();
  }
  
  public void z()
  {
    if (s == null)
    {
      s = as.a(t.a());
      t.a("native:view_load", s);
    }
  }
  
  @fv
  public static class a
    extends MutableContextWrapper
  {
    private Activity a;
    private Context b;
    private Context c;
    
    public a(Context paramContext)
    {
      super();
      setBaseContext(paramContext);
    }
    
    public Activity a()
    {
      return a;
    }
    
    public Context b()
    {
      return c;
    }
    
    public Object getSystemService(String paramString)
    {
      return c.getSystemService(paramString);
    }
    
    public void setBaseContext(Context paramContext)
    {
      b = paramContext.getApplicationContext();
      if ((paramContext instanceof Activity)) {}
      for (Activity localActivity = (Activity)paramContext;; localActivity = null)
      {
        a = localActivity;
        c = paramContext;
        super.setBaseContext(b);
        return;
      }
    }
    
    public void startActivity(Intent paramIntent)
    {
      if ((a != null) && (!kf.i()))
      {
        a.startActivity(paramIntent);
        return;
      }
      paramIntent.setFlags(268435456);
      b.startActivity(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.if
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */