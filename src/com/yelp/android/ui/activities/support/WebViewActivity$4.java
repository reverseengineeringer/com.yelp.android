package com.yelp.android.ui.activities.support;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ch;
import com.yelp.android.ui.activities.ActivityLogin;
import org.json.JSONException;
import org.json.JSONObject;

class WebViewActivity$4
  implements b
{
  WebViewActivity$4(WebViewActivity paramWebViewActivity) {}
  
  public void onCancel(JSONObject paramJSONObject)
  {
    WebViewActivity.access$000(this$0, "onCancel");
    WebViewActivity.access$300(this$0, true);
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
    try
    {
      paramJSONObject = paramJSONObject.getString("url");
      if (TextUtils.isEmpty(paramJSONObject))
      {
        AppData.a("WEBVIEW", "No URL sent with onDone", new Object[0]);
        WebViewActivity.access$300(this$0, true);
        this$0.finish();
        return;
      }
    }
    catch (JSONException paramJSONObject)
    {
      AppData.a("WEBVIEW", "Unexpected result from onDone", new Object[0]);
      WebViewActivity.access$300(this$0, true);
      this$0.finish();
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(paramJSONObject));
    localIntent.putExtra("com.yelp.android.webview_done", true);
    localIntent.putExtra("com.yelp.android.webview_title", str1);
    localIntent.putExtra("com.yelp.android.webview_subtitle", str2);
    localIntent.putExtra("com.yelp.android.webview_has_details", bool);
    WebViewActivity.access$400(this$0);
    this$0.enableLoading();
    new ch("webview_done", new WebViewActivity.ForceDirtySessionCallback(this$0, localIntent)).execute(new Void[0]);
  }
  
  public void onError(JSONObject paramJSONObject)
  {
    WebViewActivity.access$300(this$0, true);
    WebViewActivity.access$000(this$0, "onError");
    this$0.finish();
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
        WebViewActivity.access$300(this$0, true);
        this$0.finish();
        return;
      }
    }
    catch (JSONException paramJSONObject)
    {
      AppData.a("WEBVIEW", "No URL included in result from onLogin", new Object[0]);
      WebViewActivity.access$300(this$0, true);
      this$0.finish();
      return;
    }
    Intent localIntent = new Intent();
    localIntent.putExtra("redirect_url", paramJSONObject);
    paramJSONObject = ActivityLogin.a(this$0, localIntent);
    this$0.startActivityForResult(paramJSONObject, 1043);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.WebViewActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */