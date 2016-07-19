package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import java.io.File;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;

@fv
@TargetApi(8)
public class he
{
  public static he a(int paramInt)
  {
    if (paramInt >= 19) {
      return new g();
    }
    if (paramInt >= 18) {
      return new e();
    }
    if (paramInt >= 17) {
      return new d();
    }
    if (paramInt >= 16) {
      return new f();
    }
    if (paramInt >= 14) {
      return new c();
    }
    if (paramInt >= 11) {
      return new b();
    }
    if (paramInt >= 9) {
      return new a();
    }
    return new he();
  }
  
  public int a()
  {
    return 0;
  }
  
  public Drawable a(Context paramContext, Bitmap paramBitmap, boolean paramBoolean, float paramFloat)
  {
    return new BitmapDrawable(paramContext.getResources(), paramBitmap);
  }
  
  public ic a(ib paramib, boolean paramBoolean)
  {
    return new ic(paramib, paramBoolean);
  }
  
  public String a(Context paramContext)
  {
    return "";
  }
  
  public String a(SslError paramSslError)
  {
    return "";
  }
  
  public Set<String> a(Uri paramUri)
  {
    if (paramUri.isOpaque()) {
      return Collections.emptySet();
    }
    paramUri = paramUri.getEncodedQuery();
    if (paramUri == null) {
      return Collections.emptySet();
    }
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    int j = 0;
    int i;
    do
    {
      int k = paramUri.indexOf('&', j);
      i = k;
      if (k == -1) {
        i = paramUri.length();
      }
      int m = paramUri.indexOf('=', j);
      if (m <= i)
      {
        k = m;
        if (m != -1) {}
      }
      else
      {
        k = i;
      }
      localLinkedHashSet.add(Uri.decode(paramUri.substring(j, k)));
      i += 1;
      j = i;
    } while (i < paramUri.length());
    return Collections.unmodifiableSet(localLinkedHashSet);
  }
  
  public void a(Activity paramActivity, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramActivity = paramActivity.getWindow();
    if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
      a(paramActivity.getDecorView().getViewTreeObserver(), paramOnGlobalLayoutListener);
    }
  }
  
  public void a(View paramView, Drawable paramDrawable)
  {
    paramView.setBackgroundDrawable(paramDrawable);
  }
  
  public void a(ViewTreeObserver paramViewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramViewTreeObserver.removeGlobalOnLayoutListener(paramOnGlobalLayoutListener);
  }
  
  public boolean a(DownloadManager.Request paramRequest)
  {
    return false;
  }
  
  public boolean a(Context paramContext, WebSettings paramWebSettings)
  {
    return false;
  }
  
  public boolean a(View paramView)
  {
    return (paramView.getWindowToken() != null) || (paramView.getWindowVisibility() != 8);
  }
  
  public boolean a(Window paramWindow)
  {
    return false;
  }
  
  public boolean a(ib paramib)
  {
    if (paramib == null) {
      return false;
    }
    paramib.onPause();
    return true;
  }
  
  public int b()
  {
    return 1;
  }
  
  public boolean b(View paramView)
  {
    return false;
  }
  
  public boolean b(ib paramib)
  {
    if (paramib == null) {
      return false;
    }
    paramib.onResume();
    return true;
  }
  
  public int c()
  {
    return 5;
  }
  
  public WebChromeClient c(ib paramib)
  {
    return null;
  }
  
  public boolean c(View paramView)
  {
    return false;
  }
  
  public ViewGroup.LayoutParams d()
  {
    return new ViewGroup.LayoutParams(-2, -2);
  }
  
  @TargetApi(9)
  public static class a
    extends he
  {
    public a()
    {
      super();
    }
    
    public int a()
    {
      return 6;
    }
    
    public boolean a(DownloadManager.Request paramRequest)
    {
      paramRequest.setShowRunningNotification(true);
      return true;
    }
    
    public int b()
    {
      return 7;
    }
  }
  
  @TargetApi(11)
  public static class b
    extends he.a
  {
    public ic a(ib paramib, boolean paramBoolean)
    {
      return new ii(paramib, paramBoolean);
    }
    
    public Set<String> a(Uri paramUri)
    {
      return paramUri.getQueryParameterNames();
    }
    
    public boolean a(DownloadManager.Request paramRequest)
    {
      paramRequest.allowScanningByMediaScanner();
      paramRequest.setNotificationVisibility(1);
      return true;
    }
    
    public boolean a(final Context paramContext, WebSettings paramWebSettings)
    {
      super.a(paramContext, paramWebSettings);
      if ((File)hn.a(new Callable()
      {
        public File a()
        {
          return paramContext.getCacheDir();
        }
      }) != null)
      {
        paramWebSettings.setAppCachePath(paramContext.getCacheDir().getAbsolutePath());
        paramWebSettings.setAppCacheMaxSize(0L);
        paramWebSettings.setAppCacheEnabled(true);
      }
      paramWebSettings.setDatabasePath(paramContext.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
      paramWebSettings.setDatabaseEnabled(true);
      paramWebSettings.setDomStorageEnabled(true);
      paramWebSettings.setDisplayZoomControls(false);
      paramWebSettings.setBuiltInZoomControls(true);
      paramWebSettings.setSupportZoom(true);
      paramWebSettings.setAllowContentAccess(false);
      return true;
    }
    
    public boolean a(Window paramWindow)
    {
      paramWindow.setFlags(16777216, 16777216);
      return true;
    }
    
    public boolean b(View paramView)
    {
      paramView.setLayerType(0, null);
      return true;
    }
    
    public WebChromeClient c(ib paramib)
    {
      return new ih(paramib);
    }
    
    public boolean c(View paramView)
    {
      paramView.setLayerType(1, null);
      return true;
    }
  }
  
  @TargetApi(14)
  public static class c
    extends he.b
  {
    public String a(SslError paramSslError)
    {
      return paramSslError.getUrl();
    }
    
    public WebChromeClient c(ib paramib)
    {
      return new ij(paramib);
    }
  }
  
  @TargetApi(17)
  public static class d
    extends he.f
  {
    public Drawable a(Context paramContext, Bitmap paramBitmap, boolean paramBoolean, float paramFloat)
    {
      if ((!paramBoolean) || (paramFloat <= 0.0F) || (paramFloat > 25.0F)) {
        return new BitmapDrawable(paramContext.getResources(), paramBitmap);
      }
      try
      {
        Object localObject3 = Bitmap.createScaledBitmap(paramBitmap, paramBitmap.getWidth(), paramBitmap.getHeight(), false);
        Object localObject1 = Bitmap.createBitmap((Bitmap)localObject3);
        Object localObject2 = RenderScript.create(paramContext);
        ScriptIntrinsicBlur localScriptIntrinsicBlur = ScriptIntrinsicBlur.create((RenderScript)localObject2, Element.U8_4((RenderScript)localObject2));
        localObject3 = Allocation.createFromBitmap((RenderScript)localObject2, (Bitmap)localObject3);
        localObject2 = Allocation.createFromBitmap((RenderScript)localObject2, (Bitmap)localObject1);
        localScriptIntrinsicBlur.setRadius(paramFloat);
        localScriptIntrinsicBlur.setInput((Allocation)localObject3);
        localScriptIntrinsicBlur.forEach((Allocation)localObject2);
        ((Allocation)localObject2).copyTo((Bitmap)localObject1);
        localObject1 = new BitmapDrawable(paramContext.getResources(), (Bitmap)localObject1);
        return (Drawable)localObject1;
      }
      catch (RuntimeException localRuntimeException) {}
      return new BitmapDrawable(paramContext.getResources(), paramBitmap);
    }
    
    public String a(Context paramContext)
    {
      return WebSettings.getDefaultUserAgent(paramContext);
    }
    
    public boolean a(Context paramContext, WebSettings paramWebSettings)
    {
      super.a(paramContext, paramWebSettings);
      paramWebSettings.setMediaPlaybackRequiresUserGesture(false);
      return true;
    }
  }
  
  @TargetApi(18)
  public static class e
    extends he.d
  {
    public boolean a(View paramView)
    {
      return (super.a(paramView)) || (paramView.getWindowId() != null);
    }
    
    public int c()
    {
      return 14;
    }
  }
  
  @TargetApi(16)
  public static class f
    extends he.c
  {
    public void a(Activity paramActivity, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
    {
      paramActivity = paramActivity.getWindow();
      if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
        a(paramActivity.getDecorView().getViewTreeObserver(), paramOnGlobalLayoutListener);
      }
    }
    
    public void a(View paramView, Drawable paramDrawable)
    {
      paramView.setBackground(paramDrawable);
    }
    
    public void a(ViewTreeObserver paramViewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
    {
      paramViewTreeObserver.removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
    }
    
    public boolean a(Context paramContext, WebSettings paramWebSettings)
    {
      super.a(paramContext, paramWebSettings);
      paramWebSettings.setAllowFileAccessFromFileURLs(false);
      paramWebSettings.setAllowUniversalAccessFromFileURLs(false);
      return true;
    }
  }
  
  @TargetApi(19)
  public static class g
    extends he.e
  {
    public boolean a(View paramView)
    {
      return paramView.isAttachedToWindow();
    }
    
    public ViewGroup.LayoutParams d()
    {
      return new ViewGroup.LayoutParams(-1, -1);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.he
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */