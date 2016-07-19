package com.yelp.android.ui.activities.support;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.yelp.android.analytics.adjust.AdjustManager;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.bz;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.util.YelpLog;
import org.json.JSONException;
import org.json.JSONObject;

class WebViewActivity$3
  implements JavaScriptEventInterface.b
{
  WebViewActivity$3(WebViewActivity paramWebViewActivity) {}
  
  public void onCancel(JSONObject paramJSONObject)
  {
    WebViewActivity.access$000(this$0, "onCancel");
    this$0.sendCancelIrisIfNeeded(true);
    this$0.setResult(0);
    this$0.finish();
  }
  
  public void onDone(JSONObject paramJSONObject)
  {
    WebViewActivity.access$000(this$0, "onDone");
    this$0.setResult(-1);
    String str1 = paramJSONObject.optString("title");
    String str2 = paramJSONObject.optString("subtitle");
    boolean bool = paramJSONObject.optBoolean("has_details");
    String str3;
    try
    {
      str3 = paramJSONObject.getString("url");
      if (TextUtils.isEmpty(str3))
      {
        AppData.a("WEBVIEW", "No URL sent with onDone", new Object[0]);
        this$0.sendCancelIrisIfNeeded(true);
        this$0.finish();
        return;
      }
    }
    catch (JSONException paramJSONObject)
    {
      AppData.a("WEBVIEW", "Unexpected result from onDone", new Object[0]);
      this$0.sendCancelIrisIfNeeded(true);
      this$0.finish();
      return;
    }
    try
    {
      if (paramJSONObject.has("order_value")) {
        AppData.b().l().a(Double.parseDouble(paramJSONObject.getString("order_value")));
      }
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(str3));
      if (paramJSONObject.has("title"))
      {
        localIntent.putExtra("com.yelp.android.webview_done", true);
        localIntent.putExtra("com.yelp.android.webview_title", str1);
        localIntent.putExtra("com.yelp.android.webview_subtitle", str2);
        localIntent.putExtra("com.yelp.android.webview_has_details", bool);
        this$0.sendConfirmedIrisIfNeeded();
        this$0.enableLoading();
        new bz("webview_done", new WebViewActivity.ForceDirtySessionCallback(this$0, localIntent)).f(new Void[0]);
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        YelpLog.remoteError(this, "We couldn't show the Facebook AppInviteDialog.");
      }
      localJSONException.putExtra("com.yelp.android.webview_done", false);
      this$0.startActivity(localJSONException);
      return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;) {}
    }
  }
  
  public void onError(JSONObject paramJSONObject)
  {
    this$0.sendCancelIrisIfNeeded(true);
    WebViewActivity.access$000(this$0, "onError");
    this$0.finish();
  }
  
  public void onIframeReady(JSONObject paramJSONObject)
  {
    WebViewActivity.access$000(this$0, "onIframeReady");
    this$0.onIframeReady();
  }
  
  public void onLoaderHide(JSONObject paramJSONObject)
  {
    WebViewActivity.access$000(this$0, "onLoaderHide");
    this$0.disableLoading();
  }
  
  public void onLoaderShow(JSONObject paramJSONObject)
  {
    WebViewActivity.access$000(this$0, "onLoaderShow");
    this$0.enableLoading();
  }
  
  public void onLogin(JSONObject paramJSONObject)
  {
    WebViewActivity.access$000(this$0, "onLogin");
    try
    {
      paramJSONObject = paramJSONObject.getString("url");
      if (TextUtils.isEmpty(paramJSONObject))
      {
        AppData.a("WEBVIEW", "No URL sent with onLogin", new Object[0]);
        this$0.sendCancelIrisIfNeeded(true);
        this$0.finish();
        return;
      }
    }
    catch (JSONException paramJSONObject)
    {
      AppData.a("WEBVIEW", "No URL included in result from onLogin", new Object[0]);
      this$0.sendCancelIrisIfNeeded(true);
      this$0.finish();
      return;
    }
    Intent localIntent = new Intent();
    localIntent.putExtra("redirect_url", paramJSONObject);
    paramJSONObject = ActivityLogin.a(this$0, this$0.getString(2131166104, new Object[] { this$0.getIntent().getStringExtra("extra.business_name") }), localIntent);
    this$0.startActivityForResult(paramJSONObject, 1048);
  }
  
  public void onOpportunityReady(JSONObject paramJSONObject)
  {
    WebViewActivity.access$000(this$0, "onOpportunityReady");
    this$0.onOpportunityReady();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.WebViewActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */