package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ey
public final class af
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener
{
  private final Object mH = new Object();
  private final WeakReference<fy> mK;
  private WeakReference<ViewTreeObserver> mL;
  private final WeakReference<View> mM;
  private final ad mN;
  private final Context mO;
  private final ah mP;
  private boolean mQ;
  private final WindowManager mR;
  private final PowerManager mS;
  private final KeyguardManager mT;
  private ag mU;
  private boolean mV = false;
  private final BlockingQueue<Runnable> mW = new ArrayBlockingQueue(2);
  private long mX = Long.MIN_VALUE;
  private boolean mY;
  private boolean mZ;
  private boolean my = false;
  private BroadcastReceiver na;
  private final HashSet<ac> nb = new HashSet();
  
  public af(Context paramContext, ay paramay, fy paramfy, View paramView, gs paramgs)
  {
    this(paramay, paramfy, paramgs, paramView, new aj(paramContext, paramgs));
  }
  
  public af(ay paramay, fy paramfy, gs paramgs, View paramView, ah paramah)
  {
    mK = new WeakReference(paramfy);
    mM = new WeakReference(paramView);
    mL = new WeakReference(null);
    mY = true;
    mN = new ad(UUID.randomUUID().toString(), paramgs, op, vD);
    mP = paramah;
    mR = ((WindowManager)paramView.getContext().getSystemService("window"));
    mS = ((PowerManager)paramView.getContext().getApplicationContext().getSystemService("power"));
    mT = ((KeyguardManager)paramView.getContext().getSystemService("keyguard"));
    mO = paramView.getContext().getApplicationContext();
    a(paramah);
    mP.a(new af.1(this, paramView));
    b(mP);
    try
    {
      paramay = e(paramView);
      mW.add(new af.2(this, paramay));
      mW.add(new af.3(this));
      gr.S("Tracking ad unit: " + mN.aH());
      return;
    }
    catch (Throwable paramay)
    {
      for (;;) {}
    }
  }
  
  protected int a(int paramInt, DisplayMetrics paramDisplayMetrics)
  {
    float f = density;
    return (int)(paramInt / f);
  }
  
  protected void a(View paramView, Map<String, String> paramMap)
  {
    g(false);
  }
  
  public void a(ac paramac)
  {
    nb.add(paramac);
  }
  
  public void a(ag paramag)
  {
    synchronized (mH)
    {
      mU = paramag;
      return;
    }
  }
  
  protected void a(ah paramah)
  {
    paramah.f("https://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html");
  }
  
  protected void a(JSONObject paramJSONObject)
  {
    try
    {
      JSONArray localJSONArray = new JSONArray();
      JSONObject localJSONObject = new JSONObject();
      localJSONArray.put(paramJSONObject);
      localJSONObject.put("units", localJSONArray);
      mP.a("AFMA_updateActiveView", localJSONObject);
      return;
    }
    catch (Throwable paramJSONObject)
    {
      gr.b("Skipping active view message.", paramJSONObject);
    }
  }
  
  protected boolean a(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      return false;
    }
    paramMap = (String)paramMap.get("hashCode");
    if ((!TextUtils.isEmpty(paramMap)) && (paramMap.equals(mN.aH()))) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  protected void aI()
  {
    synchronized (mH)
    {
      if (na != null) {
        return;
      }
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.SCREEN_ON");
      localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
      na = new af.4(this);
      mO.registerReceiver(na, localIntentFilter);
      return;
    }
  }
  
  protected void aJ()
  {
    synchronized (mH)
    {
      if (na != null)
      {
        mO.unregisterReceiver(na);
        na = null;
      }
      return;
    }
  }
  
  public void aK()
  {
    synchronized (mH)
    {
      if (mY) {
        mZ = true;
      }
      try
      {
        a(aQ());
        gr.S("Untracking ad unit: " + mN.aH());
        return;
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          gr.b("JSON Failure while processing active view data.", localJSONException);
        }
      }
    }
  }
  
  protected void aL()
  {
    if (mU != null) {
      mU.a(this);
    }
  }
  
  public boolean aM()
  {
    synchronized (mH)
    {
      boolean bool = mY;
      return bool;
    }
  }
  
  protected void aN()
  {
    Object localObject = (View)mM.get();
    if (localObject == null) {}
    ViewTreeObserver localViewTreeObserver;
    do
    {
      return;
      localViewTreeObserver = (ViewTreeObserver)mL.get();
      localObject = ((View)localObject).getViewTreeObserver();
    } while (localObject == localViewTreeObserver);
    mL = new WeakReference(localObject);
    ((ViewTreeObserver)localObject).addOnScrollChangedListener(this);
    ((ViewTreeObserver)localObject).addOnGlobalLayoutListener(this);
  }
  
  protected void aO()
  {
    ViewTreeObserver localViewTreeObserver = (ViewTreeObserver)mL.get();
    if ((localViewTreeObserver == null) || (!localViewTreeObserver.isAlive())) {
      return;
    }
    localViewTreeObserver.removeOnScrollChangedListener(this);
    localViewTreeObserver.removeGlobalOnLayoutListener(this);
  }
  
  protected JSONObject aP()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("afmaVersion", mN.aF()).put("activeViewJSON", mN.aG()).put("timestamp", ga.dc().dd().elapsedRealtime()).put("adFormat", mN.aE()).put("hashCode", mN.aH());
    return localJSONObject;
  }
  
  protected JSONObject aQ()
  {
    JSONObject localJSONObject = aP();
    localJSONObject.put("doneReasonCode", "u");
    return localJSONObject;
  }
  
  protected void b(ah paramah)
  {
    paramah.a("/updateActiveView", new af.5(this));
    paramah.a("/untrackActiveViewUnit", new af.6(this));
    paramah.a("/visibilityChanged", new af.7(this));
    paramah.a("/viewabilityChanged", cc.pQ);
  }
  
  protected void d(View paramView)
  {
    paramView = new ArrayList();
    mW.drainTo(paramView);
    paramView = paramView.iterator();
    while (paramView.hasNext()) {
      ((Runnable)paramView.next()).run();
    }
  }
  
  protected void destroy()
  {
    synchronized (mH)
    {
      aO();
      aJ();
      mY = false;
    }
    try
    {
      mP.destroy();
      aL();
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
  }
  
  protected JSONObject e(View paramView)
  {
    Object localObject2 = new int[2];
    Object localObject1 = new int[2];
    paramView.getLocationOnScreen((int[])localObject2);
    paramView.getLocationInWindow((int[])localObject1);
    localObject1 = aP();
    DisplayMetrics localDisplayMetrics = paramView.getContext().getResources().getDisplayMetrics();
    Rect localRect1 = new Rect();
    left = localObject2[0];
    top = localObject2[1];
    right = (left + paramView.getWidth());
    bottom = (top + paramView.getHeight());
    localObject2 = new Rect();
    right = mR.getDefaultDisplay().getWidth();
    bottom = mR.getDefaultDisplay().getHeight();
    Rect localRect2 = new Rect();
    boolean bool1 = paramView.getGlobalVisibleRect(localRect2, null);
    Rect localRect3 = new Rect();
    boolean bool2 = paramView.getLocalVisibleRect(localRect3);
    Rect localRect4 = new Rect();
    paramView.getHitRect(localRect4);
    ((JSONObject)localObject1).put("viewBox", new JSONObject().put("top", a(top, localDisplayMetrics)).put("bottom", a(bottom, localDisplayMetrics)).put("left", a(left, localDisplayMetrics)).put("right", a(right, localDisplayMetrics))).put("adBox", new JSONObject().put("top", a(top, localDisplayMetrics)).put("bottom", a(bottom, localDisplayMetrics)).put("left", a(left, localDisplayMetrics)).put("right", a(right, localDisplayMetrics))).put("globalVisibleBox", new JSONObject().put("top", a(top, localDisplayMetrics)).put("bottom", a(bottom, localDisplayMetrics)).put("left", a(left, localDisplayMetrics)).put("right", a(right, localDisplayMetrics))).put("globalVisibleBoxVisible", bool1).put("localVisibleBox", new JSONObject().put("top", a(top, localDisplayMetrics)).put("bottom", a(bottom, localDisplayMetrics)).put("left", a(left, localDisplayMetrics)).put("right", a(right, localDisplayMetrics))).put("localVisibleBoxVisible", bool2).put("hitBox", new JSONObject().put("top", a(top, localDisplayMetrics)).put("bottom", a(bottom, localDisplayMetrics)).put("left", a(left, localDisplayMetrics)).put("right", a(right, localDisplayMetrics))).put("windowVisibility", paramView.getWindowVisibility()).put("screenDensity", density).put("isVisible", f(paramView)).put("isStopped", mV).put("isPaused", my);
    if (ll.im()) {
      ((JSONObject)localObject1).put("isAttachedToWindow", paramView.isAttachedToWindow());
    }
    return (JSONObject)localObject1;
  }
  
  protected void f(boolean paramBoolean)
  {
    Iterator localIterator = nb.iterator();
    while (localIterator.hasNext()) {
      ((ac)localIterator.next()).a(this, paramBoolean);
    }
  }
  
  protected boolean f(View paramView)
  {
    return (paramView.getVisibility() == 0) && (paramView.isShown()) && (mS.isScreenOn()) && (!mT.inKeyguardRestrictedInputMode());
  }
  
  protected void g(boolean paramBoolean)
  {
    long l;
    synchronized (mH)
    {
      if ((!mQ) || (!mY)) {
        return;
      }
      l = ga.dc().dd().elapsedRealtime();
      if ((paramBoolean) && (mX + 200L > l)) {
        return;
      }
    }
    mX = l;
    fy localfy = (fy)mK.get();
    View localView = (View)mM.get();
    if (localView != null) {
      if (localfy == null) {
        break label162;
      }
    }
    for (;;)
    {
      int i;
      if (i != 0)
      {
        aK();
        return;
        i = 0;
      }
      else
      {
        try
        {
          a(e(localView));
          aN();
          aL();
          return;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            gr.a("Active view update failed.", localJSONException);
          }
        }
        label162:
        i = 1;
      }
    }
  }
  
  public void onGlobalLayout()
  {
    g(false);
  }
  
  public void onScrollChanged()
  {
    g(true);
  }
  
  public void pause()
  {
    synchronized (mH)
    {
      my = true;
      g(false);
      mP.pause();
      return;
    }
  }
  
  public void resume()
  {
    synchronized (mH)
    {
      mP.resume();
      my = false;
      g(false);
      return;
    }
  }
  
  public void stop()
  {
    synchronized (mH)
    {
      mV = true;
      g(false);
      mP.pause();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */