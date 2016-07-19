package com.yelp.android.ui.activities.support;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.TimingIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.g.a;
import com.yelp.android.services.i;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.g;
import java.net.URLDecoder;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;

public class PlatformWebViewActivity
  extends WebViewActivity
{
  private boolean a;
  private long b;
  private boolean c = true;
  private int d;
  private boolean e;
  private final Object f = new Object();
  
  public static Intent a(Context paramContext, Uri paramUri, String paramString1, ViewIri paramViewIri, EnumSet<WebViewActivity.Feature> paramEnumSet, WebViewActivity.BackBehavior paramBackBehavior, int paramInt, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    Intent localIntent = new Intent(paramContext, PlatformWebViewActivity.class);
    if ((Features.continue_last_order.isEnabled()) && ("food".indexOf(paramString3) != -1)) {
      paramInt = 0;
    }
    for (;;)
    {
      configureIntent(localIntent, paramContext, paramUri, paramString1, paramViewIri, paramEnumSet, paramBackBehavior, paramInt, paramString5);
      if (!StringUtils.d(paramString2)) {
        localIntent.putExtra("extra.biz_dimension", paramString2);
      }
      if (!StringUtils.d(paramString3)) {
        localIntent.putExtra("extra.supported_vertical_types", paramString3);
      }
      if (!StringUtils.d(paramString4)) {
        localIntent.putExtra("extra.source", paramString4);
      }
      if (!StringUtils.d(paramString6)) {
        localIntent.putExtra("extra.search_request_id", paramString6);
      }
      if (!StringUtils.d(paramString7)) {
        localIntent.putExtra("extra.business_id", paramString7);
      }
      return localIntent;
    }
  }
  
  public static Intent a(Context paramContext, Uri paramUri, String paramString1, ViewIri paramViewIri, EnumSet<WebViewActivity.Feature> paramEnumSet, WebViewActivity.BackBehavior paramBackBehavior, int paramInt, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, HashMap<String, String> paramHashMap)
  {
    paramContext = a(paramContext, paramUri, paramString1, paramViewIri, paramEnumSet, paramBackBehavior, paramInt, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7).putExtra("extra.url_params", paramHashMap);
    if ((paramHashMap != null) && (!paramHashMap.isEmpty())) {}
    for (boolean bool = true;; bool = false) {
      return paramContext.putExtra("extra.show_chef_carmen", bool).putExtra("extra.business_id", paramString7);
    }
  }
  
  private void a()
  {
    Object localObject1 = com.yelp.android.services.c.b().getCookieStore().getCookies();
    if (localObject1 == null) {}
    do
    {
      return;
      while (!((Iterator)localObject2).hasNext()) {
        localObject2 = ((List)localObject1).iterator();
      }
      localObject1 = (Cookie)((Iterator)localObject2).next();
    } while (!"yuv".equalsIgnoreCase(((Cookie)localObject1).getName()));
    Object localObject2 = CookieSyncManager.createInstance(this);
    CookieManager localCookieManager = CookieManager.getInstance();
    String str = ((Cookie)localObject1).getName() + "=" + ((Cookie)localObject1).getValue() + "; domain=" + ((Cookie)localObject1).getDomain() + "; expires=" + ((Cookie)localObject1).getExpiryDate();
    localCookieManager.setCookie(((Cookie)localObject1).getDomain(), str);
    ((CookieSyncManager)localObject2).sync();
  }
  
  private void a(EventIri paramEventIri1, EventIri paramEventIri2, EventIri paramEventIri3, EventIri paramEventIri4, Map<String, Object> paramMap)
  {
    String str1 = getIntent().getStringExtra("extra.biz_dimension");
    String str2 = getIntent().getStringExtra("extra.supported_vertical_types");
    String str3 = getIntent().getStringExtra("extra.source");
    if (!StringUtils.d(str1)) {
      paramMap.put("biz_dimension", str1);
    }
    if (!StringUtils.d(str2)) {
      paramMap.put("supported_vertical_types", str2);
    }
    if (!StringUtils.d(str3))
    {
      if (!str3.equals("source_business_page")) {
        break label98;
      }
      AppData.a(paramEventIri1, paramMap);
    }
    label98:
    do
    {
      return;
      if (str3.equals("source_search_page"))
      {
        AppData.a(paramEventIri2, paramMap);
        return;
      }
      if (str3.equals("source_menu_page"))
      {
        AppData.a(paramEventIri3, paramMap);
        return;
      }
    } while (!str3.equals("source_more_info_page"));
    AppData.a(paramEventIri4, paramMap);
  }
  
  private void a(boolean paramBoolean)
  {
    if (!a)
    {
      a = true;
      if (!paramBoolean) {
        break label33;
      }
    }
    label33:
    for (TimingIri localTimingIri = TimingIri.PlatformWebViewInitLoad;; localTimingIri = TimingIri.PlatformWebViewIframeLoad)
    {
      AppData.a(localTimingIri, SystemClock.elapsedRealtime() - b);
      return;
    }
  }
  
  public void disableLoading()
  {
    synchronized (f)
    {
      c = false;
      super.disableLoading();
      return;
    }
  }
  
  public void enableLoading()
  {
    synchronized (f)
    {
      d += 1;
      c = true;
      super.enableLoading();
      if ((d == 1) && (getIntent().getBooleanExtra("extra.show_chef_carmen", false))) {
        getLoadingPanel().setCustomSpinnerView(LayoutInflater.from(this).inflate(2130903376, (ViewGroup)findViewById(2131689997), false));
      }
      return;
    }
  }
  
  protected Intent getIntentForLeavingWebView()
  {
    Intent localIntent = super.getIntentForLeavingWebView();
    if ((e) && (Features.continue_last_order.isEnabled())) {}
    for (boolean bool = true;; bool = false) {
      return localIntent.putExtra("extra.has_reached_menu", bool).putExtra("extra.business_id", getIntent().getStringExtra("extra.business_id"));
    }
  }
  
  public Map<String, String> getUrlParams()
  {
    HashMap localHashMap = (HashMap)getIntent().getSerializableExtra("extra.url_params");
    if (localHashMap != null)
    {
      String str = g.a(com.yelp.android.services.c.b().getCookieStore().getCookies(), i.a("api_dst"));
      if (!StringUtils.d(str)) {
        localHashMap.put("delivery_session_token", URLDecoder.decode(str));
      }
      return localHashMap;
    }
    return null;
  }
  
  protected WebViewClient getWebViewClient()
  {
    new c(this)
    {
      private void a(Uri paramAnonymousUri)
      {
        startActivity(WebViewActivity.getWebIntent(getBaseContext(), paramAnonymousUri, getString(2131166073), ViewIri.OpenURL, EnumSet.noneOf(WebViewActivity.Feature.class), WebViewActivity.BackBehavior.NONE));
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge I and Z\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.provideAs(TypeTransformer.java:780)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:659)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.enexpr(TypeTransformer.java:698)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:719)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.exExpr(TypeTransformer.java:703)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.s1stmt(TypeTransformer.java:810)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.sxStmt(TypeTransformer.java:840)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:206)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
      }
    };
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    a();
    super.onCreate(paramBundle);
    getWindow().setFlags(8192, 8192);
    b = SystemClock.elapsedRealtime();
    paramBundle = (Uri)getIntent().getParcelableExtra("key.uri");
    if ((e) || (paramBundle.getPath().contains("order/menu"))) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  protected void onIframeReady()
  {
    a(false);
  }
  
  protected void onOpportunityReady()
  {
    a(true);
  }
  
  protected void sendCancelIrisIfNeeded(boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    if (paramBoolean)
    {
      localHashMap.put("cancel_state", "error");
      a(EventIri.BusinessPlatformCancel, EventIri.SearchPlatformCancel, EventIri.BusinessMenuPlatformCancel, EventIri.MoreInfoPagePlatformCancel, localHashMap);
      return;
    }
    for (;;)
    {
      synchronized (f)
      {
        if ((c) && (d == 1)) {
          localHashMap.put("cancel_state", "loading_initial");
        }
      }
      if ((c) && (d > 1)) {
        ((Map)localObject2).put("cancel_state", "loading");
      } else {
        ((Map)localObject2).put("cancel_state", "loaded");
      }
    }
  }
  
  protected void sendConfirmedIrisIfNeeded()
  {
    a locala = new a();
    String str = getIntent().getStringExtra("extra.search_request_id");
    if (!StringUtils.d(str)) {
      locala.put("search_request_id", str);
    }
    str = getIntent().getStringExtra("extra.business_id");
    if (!StringUtils.d(str)) {
      locala.put("business_id", str);
    }
    a(EventIri.BusinessPlatformConfirmed, EventIri.SearchPlatformConfirmed, EventIri.BusinessMenuPlatformConfirmed, EventIri.MoreInfoPagePlatformConfirmed, locala);
  }
  
  protected boolean shouldLoginToWebView()
  {
    return (super.shouldLoginToWebView()) || (getAppData().q().b());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.PlatformWebViewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */