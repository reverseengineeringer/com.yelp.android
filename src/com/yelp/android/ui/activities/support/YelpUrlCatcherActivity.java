package com.yelp.android.ui.activities.support;

import android.app.Activity;
import android.content.Intent;
import android.net.ParseException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.ArrayMap;
import com.yelp.android.analytics.adjust.AdjustManager;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.bh.a;
import java.net.URLDecoder;

public abstract class YelpUrlCatcherActivity
  extends Activity
{
  protected static String a(String paramString, Uri paramUri)
  {
    paramUri = paramUri.getQueryParameter(paramString);
    paramString = paramUri;
    if (!TextUtils.isEmpty(paramUri)) {
      paramString = URLDecoder.decode(paramUri);
    }
    return paramString;
  }
  
  private void a(Uri paramUri)
  {
    ArrayMap localArrayMap = new ArrayMap();
    localArrayMap.put("url", paramUri.toString());
    if (("http".equals(paramUri.getScheme())) || ("https".equals(paramUri.getScheme()))) {
      localArrayMap.put("native_launch_activity", "standard_www_url");
    }
    for (;;)
    {
      paramUri = getReferrer();
      if (paramUri == null) {
        break;
      }
      localArrayMap.put("source_application", paramUri.toString());
      if ((!"android-app".equals(paramUri.getScheme())) || (!"com.google.appcrawler".equals(a.a(paramUri).b()))) {
        break;
      }
      return;
      localArrayMap.put("native_launch_activity", "custom_url_scheme");
    }
    AppData.b();
    AppData.a(EventIri.OpenedByUrl, localArrayMap);
  }
  
  private Uri b()
  {
    Object localObject = getIntent();
    Uri localUri = (Uri)((Intent)localObject).getParcelableExtra("android.intent.extra.REFERRER");
    if (localUri != null) {
      return localUri;
    }
    localObject = ((Intent)localObject).getStringExtra("android.intent.extra.REFERRER_NAME");
    if (localObject != null) {
      try
      {
        localObject = Uri.parse((String)localObject);
        return (Uri)localObject;
      }
      catch (ParseException localParseException)
      {
        return null;
      }
    }
    return null;
  }
  
  protected abstract boolean a();
  
  public Uri getReferrer()
  {
    if (f.a(22)) {
      return super.getReferrer();
    }
    return b();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getData();
    if (paramBundle != null)
    {
      AppData.b().l().a(paramBundle);
      AppData.b().k().a(paramBundle.toString());
      a(paramBundle);
      if (a())
      {
        paramBundle = paramBundle.getQueryParameter("c");
        if (!TextUtils.isEmpty(paramBundle)) {
          AppData.b().a(paramBundle);
        }
      }
    }
  }
  
  public void startActivity(Intent paramIntent)
  {
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null) {
      paramIntent.putExtras(localBundle);
    }
    paramIntent.putExtra("yelp:external_request", true);
    super.startActivity(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpUrlCatcherActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */