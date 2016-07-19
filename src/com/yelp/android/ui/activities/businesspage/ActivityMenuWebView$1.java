package com.yelp.android.ui.activities.businesspage;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.PlatformAction;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.PlatformWebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.BackBehavior;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.util.StringUtils;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

class ActivityMenuWebView$1
  implements View.OnClickListener
{
  ActivityMenuWebView$1(ActivityMenuWebView paramActivityMenuWebView) {}
  
  public void onClick(View paramView)
  {
    paramView = (YelpBusiness)a.getIntent().getParcelableExtra("extra.business");
    PlatformAction localPlatformAction = paramView.aH();
    HashMap localHashMap = new HashMap();
    localHashMap.put("id", paramView.aD());
    String str1 = a.getIntent().getStringExtra("extra.biz_dimension");
    if (!TextUtils.isEmpty(str1)) {
      localHashMap.put("biz_dimension", str1);
    }
    String str2 = a.getIntent().getStringExtra("extra.search_request_id");
    if (!StringUtils.d(str2)) {
      localHashMap.put("search_request_id", str2);
    }
    localHashMap.put("supported_vertical_types", localPlatformAction.b());
    AppData.a(EventIri.BusinessMenuPlatformOpen, localHashMap);
    a.startActivity(PlatformWebViewActivity.a(a.getBaseContext(), Uri.parse(localPlatformAction.f()), a.getString(2131166073), ViewIri.OpenURL, EnumSet.of(WebViewActivity.Feature.EVENTS), WebViewActivity.BackBehavior.FINISH_ON_UP, 2131166867, str1, localPlatformAction.b(), "source_menu_page", paramView.z(), str2, paramView.aD()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ActivityMenuWebView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */