package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@fv
@TargetApi(14)
public class aa
  extends Thread
{
  private boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private final Object d;
  private final z e;
  private final y f;
  private final fu g;
  private final int h;
  private final int i;
  private final int j;
  private final int k;
  private final int l;
  
  public aa(z paramz, y paramy, fu paramfu)
  {
    e = paramz;
    f = paramy;
    g = paramfu;
    d = new Object();
    i = ((Integer)ao.K.c()).intValue();
    j = ((Integer)ao.L.c()).intValue();
    k = ((Integer)ao.M.c()).intValue();
    l = ((Integer)ao.N.c()).intValue();
    h = ((Integer)ao.O.c()).intValue();
    setName("ContentFetchTask");
  }
  
  a a(View paramView, x paramx)
  {
    int m = 0;
    if (paramView == null) {
      return new a(0, 0);
    }
    boolean bool = paramView.getGlobalVisibleRect(new Rect());
    if (((paramView instanceof TextView)) && (!(paramView instanceof EditText)))
    {
      paramView = ((TextView)paramView).getText();
      if (!TextUtils.isEmpty(paramView))
      {
        paramx.b(paramView.toString(), bool);
        return new a(1, 0);
      }
      return new a(0, 0);
    }
    if (((paramView instanceof WebView)) && (!(paramView instanceof ib)))
    {
      paramx.f();
      if (a((WebView)paramView, paramx, bool)) {
        return new a(0, 1);
      }
      return new a(0, 0);
    }
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int n = 0;
      int i1 = 0;
      while (m < paramView.getChildCount())
      {
        a locala = a(paramView.getChildAt(m), paramx);
        i1 += a;
        n += b;
        m += 1;
      }
      return new a(i1, n);
    }
    return new a(0, 0);
  }
  
  public void a()
  {
    synchronized (d)
    {
      if (a)
      {
        gz.a("Content hash thread already started, quiting...");
        return;
      }
      a = true;
      start();
      return;
    }
  }
  
  void a(Activity paramActivity)
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
    a((View)localObject1);
  }
  
  void a(x paramx, WebView paramWebView, String paramString, boolean paramBoolean)
  {
    paramx.e();
    try
    {
      if (!TextUtils.isEmpty(paramString))
      {
        paramString = new JSONObject(paramString).optString("text");
        if (TextUtils.isEmpty(paramWebView.getTitle())) {
          break label84;
        }
        paramx.a(paramWebView.getTitle() + "\n" + paramString, paramBoolean);
      }
      while (paramx.a())
      {
        f.b(paramx);
        return;
        label84:
        paramx.a(paramString, paramBoolean);
      }
      return;
    }
    catch (JSONException paramx)
    {
      gz.a("Json string may be malformed.");
      return;
    }
    catch (Throwable paramx)
    {
      gz.a("Failed to get webview content.", paramx);
      g.a(paramx, true);
    }
  }
  
  boolean a(ActivityManager.RunningAppProcessInfo paramRunningAppProcessInfo)
  {
    return importance == 100;
  }
  
  boolean a(Context paramContext)
  {
    paramContext = (PowerManager)paramContext.getSystemService("power");
    if (paramContext == null) {
      return false;
    }
    return paramContext.isScreenOn();
  }
  
  boolean a(final View paramView)
  {
    if (paramView == null) {
      return false;
    }
    paramView.post(new Runnable()
    {
      public void run()
      {
        b(paramView);
      }
    });
    return true;
  }
  
  @TargetApi(19)
  boolean a(final WebView paramWebView, final x paramx, final boolean paramBoolean)
  {
    if (!kf.g()) {
      return false;
    }
    paramx.f();
    paramWebView.post(new Runnable()
    {
      ValueCallback<String> a = new ValueCallback()
      {
        public void a(String paramAnonymous2String)
        {
          a(b, c, paramAnonymous2String, d);
        }
      };
      
      public void run()
      {
        if (paramWebView.getSettings().getJavaScriptEnabled()) {}
        try
        {
          paramWebView.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", a);
          return;
        }
        catch (Throwable localThrowable)
        {
          a.onReceiveValue("");
        }
      }
    });
    return true;
  }
  
  void b(View paramView)
  {
    try
    {
      x localx = new x(i, j, k, l);
      paramView = a(paramView, localx);
      localx.g();
      if ((a == 0) && (b == 0)) {
        return;
      }
      if (((b != 0) || (localx.i() != 0)) && ((b != 0) || (!f.a(localx))))
      {
        f.c(localx);
        return;
      }
    }
    catch (Exception paramView)
    {
      gz.b("Exception in fetchContentOnUIThread", paramView);
      g.a(paramView, true);
    }
  }
  
  boolean b()
  {
    try
    {
      Context localContext = e.b();
      if (localContext == null) {
        return false;
      }
      Object localObject = (ActivityManager)localContext.getSystemService("activity");
      KeyguardManager localKeyguardManager = (KeyguardManager)localContext.getSystemService("keyguard");
      if ((localObject != null) && (localKeyguardManager != null))
      {
        localObject = ((ActivityManager)localObject).getRunningAppProcesses();
        if (localObject == null) {
          return false;
        }
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
          if (Process.myPid() == pid) {
            if ((a(localRunningAppProcessInfo)) && (!localKeyguardManager.inKeyguardRestrictedInputMode()))
            {
              boolean bool = a(localContext);
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
  
  public x c()
  {
    return f.a();
  }
  
  public void d()
  {
    synchronized (d)
    {
      b = false;
      d.notifyAll();
      gz.a("ContentFetchThread: wakeup");
      return;
    }
  }
  
  public void e()
  {
    synchronized (d)
    {
      b = true;
      gz.a("ContentFetchThread: paused, mPause = " + b);
      return;
    }
  }
  
  public boolean f()
  {
    return b;
  }
  
  public void run()
  {
    while (!c) {
      try
      {
        if (b())
        {
          Activity localActivity = e.a();
          if (localActivity == null) {
            gz.a("ContentFetchThread: no activity");
          }
        }
      }
      catch (Throwable localThrowable)
      {
        gz.b("Error in ContentFetchTask", localThrowable);
        g.a(localThrowable, true);
        synchronized (d)
        {
          for (;;)
          {
            boolean bool = b;
            if (!bool) {
              break;
            }
            try
            {
              gz.a("ContentFetchTask: waiting");
              d.wait();
            }
            catch (InterruptedException localInterruptedException) {}
          }
          a((Activity)???);
          for (;;)
          {
            Thread.sleep(h * 1000);
            break;
            gz.a("ContentFetchTask: sleeping");
            e();
          }
        }
      }
    }
  }
  
  @fv
  class a
  {
    final int a;
    final int b;
    
    a(int paramInt1, int paramInt2)
    {
      a = paramInt1;
      b = paramInt2;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */