package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;
import org.json.JSONObject;

@fv
public abstract interface ib
  extends dc, p
{
  public abstract View.OnClickListener A();
  
  public abstract WebView a();
  
  public abstract void a(int paramInt);
  
  public abstract void a(Context paramContext);
  
  public abstract void a(Context paramContext, AdSizeParcel paramAdSizeParcel, ax paramax);
  
  public abstract void a(AdSizeParcel paramAdSizeParcel);
  
  public abstract void a(zzd paramzzd);
  
  public abstract void a(String paramString);
  
  public abstract void a(String paramString1, String paramString2);
  
  public abstract void a(String paramString, Map<String, ?> paramMap);
  
  public abstract void a(String paramString, JSONObject paramJSONObject);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract View b();
  
  public abstract void b(int paramInt);
  
  public abstract void b(zzd paramzzd);
  
  public abstract void b(String paramString);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract void c();
  
  public abstract void c(boolean paramBoolean);
  
  public abstract void clearCache(boolean paramBoolean);
  
  public abstract void d();
  
  public abstract void destroy();
  
  public abstract void e();
  
  public abstract Activity f();
  
  public abstract Context g();
  
  public abstract Context getContext();
  
  public abstract ViewGroup.LayoutParams getLayoutParams();
  
  public abstract void getLocationOnScreen(int[] paramArrayOfInt);
  
  public abstract int getMeasuredHeight();
  
  public abstract int getMeasuredWidth();
  
  public abstract ViewParent getParent();
  
  public abstract e h();
  
  public abstract zzd i();
  
  public abstract zzd j();
  
  public abstract AdSizeParcel k();
  
  public abstract ic l();
  
  public abstract void loadData(String paramString1, String paramString2, String paramString3);
  
  public abstract void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5);
  
  public abstract void loadUrl(String paramString);
  
  public abstract boolean m();
  
  public abstract void measure(int paramInt1, int paramInt2);
  
  public abstract j n();
  
  public abstract VersionInfoParcel o();
  
  public abstract void onPause();
  
  public abstract void onResume();
  
  public abstract boolean p();
  
  public abstract int q();
  
  public abstract boolean r();
  
  public abstract void s();
  
  public abstract void setBackgroundColor(int paramInt);
  
  public abstract void setOnClickListener(View.OnClickListener paramOnClickListener);
  
  public abstract void setOnTouchListener(View.OnTouchListener paramOnTouchListener);
  
  public abstract void setWebChromeClient(WebChromeClient paramWebChromeClient);
  
  public abstract void setWebViewClient(WebViewClient paramWebViewClient);
  
  public abstract void stopLoading();
  
  public abstract boolean t();
  
  public abstract String u();
  
  public abstract ia v();
  
  public abstract au w();
  
  public abstract aw x();
  
  public abstract void y();
  
  public abstract void z();
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */