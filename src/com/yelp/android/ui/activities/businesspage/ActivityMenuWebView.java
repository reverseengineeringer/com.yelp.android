package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.serializable.Menu;
import com.yelp.android.serializable.PlatformAction;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.PlatformWebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.util.StringUtils;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

public class ActivityMenuWebView
  extends WebViewActivity
{
  private boolean a;
  private final View.OnClickListener b = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      paramAnonymousView = (YelpBusiness)getIntent().getParcelableExtra("extra.business");
      PlatformAction localPlatformAction = paramAnonymousView.aH();
      HashMap localHashMap = new HashMap();
      localHashMap.put("id", paramAnonymousView.aD());
      String str1 = getIntent().getStringExtra("extra.biz_dimension");
      if (!TextUtils.isEmpty(str1)) {
        localHashMap.put("biz_dimension", str1);
      }
      String str2 = getIntent().getStringExtra("extra.search_request_id");
      if (!StringUtils.d(str2)) {
        localHashMap.put("search_request_id", str2);
      }
      localHashMap.put("supported_vertical_types", localPlatformAction.b());
      AppData.a(EventIri.BusinessMenuPlatformOpen, localHashMap);
      startActivity(PlatformWebViewActivity.a(getBaseContext(), Uri.parse(localPlatformAction.f()), getString(2131166073), ViewIri.OpenURL, EnumSet.of(WebViewActivity.Feature.EVENTS), WebViewActivity.BackBehavior.FINISH_ON_UP, 2131166867, str1, localPlatformAction.b(), "source_menu_page", paramAnonymousView.z(), str2, paramAnonymousView.aD()));
    }
  };
  private final ViewTreeObserver.OnGlobalLayoutListener c = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public void onGlobalLayout()
    {
      View localView = findViewById(2131689892);
      ar.a(localView, this);
      findViewById(2131689890).setPadding(0, 0, 0, localView.getHeight());
    }
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(paramContext, ActivityMenuWebView.class);
    configureIntent(localIntent, paramContext, Uri.parse(paramYelpBusiness.aL().f()), paramYelpBusiness.aL().b(), ViewIri.BusinessMenu, EnumSet.of(WebViewActivity.Feature.EVENTS), WebViewActivity.BackBehavior.NONE);
    localIntent.putExtra("extra.business", paramYelpBusiness);
    localIntent.putExtra("extra.biz_dimension", paramString1);
    localIntent.putExtra("extra.search_request_id", paramString2);
    return localIntent;
  }
  
  protected int getContentViewResourceId()
  {
    return 2130903109;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    parama = super.getParametersForIri(parama);
    if (Features.menu_platform_order_button.isEnabled())
    {
      parama.put("menu_platform_order_button_experiment", "menu_platform_button_enabled");
      return parama;
    }
    parama.put("menu_platform_order_button_experiment", "menu_platform_button_disabled");
    return parama;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = ((YelpBusiness)getIntent().getParcelableExtra("extra.business")).aH();
    if ((Features.menu_platform_order_button.isEnabled()) && (paramBundle != null))
    {
      a = true;
      LeftDrawableButton localLeftDrawableButton = (LeftDrawableButton)findViewById(2131689893);
      localLeftDrawableButton.setText(paramBundle.c());
      localLeftDrawableButton.a(t.a(this).a(paramBundle.e()).a(Integer.MIN_VALUE, Integer.MIN_VALUE).b(2130838003));
      localLeftDrawableButton.setOnClickListener(b);
      findViewById(2131689892).getViewTreeObserver().addOnGlobalLayoutListener(c);
    }
  }
  
  protected void onPageFinished()
  {
    super.onPageFinished();
    if (a) {
      findViewById(2131689892).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ActivityMenuWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */