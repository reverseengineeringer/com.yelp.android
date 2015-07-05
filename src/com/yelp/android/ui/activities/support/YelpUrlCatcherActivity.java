package com.yelp.android.ui.activities.support;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;

public abstract class YelpUrlCatcherActivity
  extends YelpActivity
{
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getData();
    AppData.b().k().a(paramBundle.toString());
  }
  
  protected void onLongTimeSinceLastLaunch() {}
  
  public void startActivity(Intent paramIntent)
  {
    if (getIntent().getExtras() != null) {
      paramIntent.putExtras(getIntent().getExtras());
    }
    super.startActivity(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.YelpUrlCatcherActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */