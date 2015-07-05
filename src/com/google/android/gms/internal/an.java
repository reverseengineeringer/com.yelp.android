package com.google.android.gms.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@ey
public class an
  extends Thread
{
  private final Object mH;
  private boolean mStarted = false;
  private boolean nC = false;
  private boolean nD = false;
  private final am nE;
  private final al nF;
  private final ex nG;
  private final int nH;
  private final int nI;
  private final int nJ;
  private final int np;
  private final int nr;
  
  public an(am paramam, al paramal, Bundle paramBundle, ex paramex)
  {
    nE = paramam;
    nF = paramal;
    nG = paramex;
    mH = new Object();
    np = paramBundle.getInt(bn.pq.getKey());
    nI = paramBundle.getInt(bn.pr.getKey());
    nr = paramBundle.getInt(bn.ps.getKey());
    nJ = paramBundle.getInt(bn.pt.getKey());
    nH = paramBundle.getInt(bn.pu.getKey(), 10);
    setName("ContentFetchTask");
  }
  
  private void a(Activity paramActivity)
  {
    if (paramActivity == null) {}
    Object localObject1;
    do
    {
      return;
      Object localObject2 = null;
      localObject1 = localObject2;
      if (paramActivity.getWindow() != null)
      {
        localObject1 = localObject2;
        if (paramActivity.getWindow().getDecorView() != null) {
          localObject1 = paramActivity.getWindow().getDecorView().findViewById(16908290);
        }
      }
    } while (localObject1 == null);
    g((View)localObject1);
  }
  
  private boolean a(WebView paramWebView, ak paramak)
  {
    if (!ll.im()) {
      return false;
    }
    paramak.aW();
    paramWebView.post(new an.2(this, paramak, paramWebView));
    return true;
  }
  
  private boolean bb()
  {
    try
    {
      Object localObject1 = nE.getContext();
      if (localObject1 == null) {
        return false;
      }
      Object localObject2 = (ActivityManager)((Context)localObject1).getSystemService("activity");
      KeyguardManager localKeyguardManager = (KeyguardManager)((Context)localObject1).getSystemService("keyguard");
      localObject1 = (PowerManager)((Context)localObject1).getSystemService("power");
      if ((localObject2 != null) && (localKeyguardManager != null) && (localObject1 != null))
      {
        localObject2 = ((ActivityManager)localObject2).getRunningAppProcesses();
        if (localObject2 == null) {
          return false;
        }
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject2).next();
          if (Process.myPid() == pid) {
            if ((importance == 100) && (!localKeyguardManager.inKeyguardRestrictedInputMode()))
            {
              boolean bool = ((PowerManager)localObject1).isScreenOn();
              if (bool) {
                return true;
              }
            }
          }
        }
        return false;
      }
    }
    catch (Throwable localThrowable)
    {
      return false;
    }
    return false;
  }
  
  an.a a(View paramView, ak paramak)
  {
    int i = 0;
    if (paramView == null) {
      return new an.a(this, 0, 0);
    }
    if (((paramView instanceof TextView)) && (!(paramView instanceof EditText)))
    {
      paramak.i(((TextView)paramView).getText().toString());
      return new an.a(this, 1, 0);
    }
    if (((paramView instanceof WebView)) && (!(paramView instanceof gu)))
    {
      paramak.aW();
      if (a((WebView)paramView, paramak)) {
        return new an.a(this, 0, 1);
      }
      return new an.a(this, 0, 0);
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int j = 0;
      int k = 0;
      while (i < paramView.getChildCount())
      {
        an.a locala = a(paramView.getChildAt(i), paramak);
        k += nQ;
        j += nR;
        i += 1;
      }
      return new an.a(this, k, j);
    }
    return new an.a(this, 0, 0);
  }
  
  void a(ak paramak, WebView paramWebView, String paramString)
  {
    paramak.aV();
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = new JSONObject(paramString).optString("text");
        if (TextUtils.isEmpty(paramWebView.getTitle())) {
          break label84;
        }
        paramak.h(paramWebView.getTitle() + "\n" + paramString);
      }
      while (paramak.aS())
      {
        nF.b(paramak);
        return;
        label84:
        paramak.h(paramString);
      }
      return;
    }
    catch (JSONException paramak)
    {
      gr.S("Json string may be malformed.");
      return;
    }
    catch (Throwable paramak)
    {
      gr.a("Failed to get webview content.", paramak);
      nG.b(paramak);
    }
  }
  
  public void ba()
  {
    synchronized (mH)
    {
      if (mStarted)
      {
        gr.S("Content hash thread already started, quiting...");
        return;
      }
      mStarted = true;
      start();
      return;
    }
  }
  
  public ak bc()
  {
    return nF.aZ();
  }
  
  public void bd()
  {
    synchronized (mH)
    {
      nC = true;
      gr.S("ContentFetchThread: paused, mPause = " + nC);
      return;
    }
  }
  
  public boolean be()
  {
    return nC;
  }
  
  boolean g(View paramView)
  {
    if (paramView == null) {
      return false;
    }
    paramView.post(new an.1(this, paramView));
    return true;
  }
  
  void h(View paramView)
  {
    try
    {
      ak localak = new ak(np, nI, nr, nJ);
      paramView = a(paramView, localak);
      localak.aX();
      if ((nQ == 0) && (nR == 0)) {
        return;
      }
      if (((nR != 0) || (localak.aY() != 0)) && ((nR != 0) || (!nF.a(localak))))
      {
        nF.c(localak);
        return;
      }
    }
    catch (Exception paramView)
    {
      gr.b("Exception in fetchContentOnUIThread", paramView);
      nG.b(paramView);
    }
  }
  
  public void run()
  {
    while (!nD) {
      try
      {
        if (bb())
        {
          Activity localActivity = nE.getActivity();
          if (localActivity == null) {
            gr.S("ContentFetchThread: no activity");
          }
        }
      }
      catch (Throwable localThrowable)
      {
        gr.b("Error in ContentFetchTask", localThrowable);
        nG.b(localThrowable);
        synchronized (mH)
        {
          for (;;)
          {
            boolean bool = nC;
            if (!bool) {
              break;
            }
            try
            {
              gr.S("ContentFetchTask: waiting");
              mH.wait();
            }
            catch (InterruptedException localInterruptedException) {}
          }
          a((Activity)???);
          for (;;)
          {
            Thread.sleep(nH * 1000);
            break;
            gr.S("ContentFetchTask: sleeping");
            bd();
          }
        }
      }
    }
  }
  
  public void wakeup()
  {
    synchronized (mH)
    {
      nC = false;
      mH.notifyAll();
      gr.S("ContentFetchThread: wakeup");
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */