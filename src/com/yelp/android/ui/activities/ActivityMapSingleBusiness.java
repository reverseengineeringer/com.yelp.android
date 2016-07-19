package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPosition.a;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpMapActivity;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.b;
import com.yelp.android.ui.map.e.a;
import com.yelp.android.ui.map.m;
import com.yelp.android.ui.util.ar;
import com.yelp.android.util.k;
import java.util.Collections;
import java.util.Map;

public class ActivityMapSingleBusiness
  extends YelpMapActivity
{
  private YelpMap<YelpBusiness> a;
  private YelpBusiness b;
  private final e.a<YelpBusiness> c = new e.a()
  {
    public void a(YelpBusiness paramAnonymousYelpBusiness) {}
    
    public void b(YelpBusiness paramAnonymousYelpBusiness)
    {
      finish();
    }
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityMapSingleBusiness.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  private void a(MenuItem paramMenuItem)
  {
    int i = 1;
    if (!paramMenuItem.isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      paramMenuItem.setChecked(bool);
      YelpMap localYelpMap = a;
      if (paramMenuItem.isChecked()) {
        i = 4;
      }
      localYelpMap.setMapMode(i);
      return;
    }
  }
  
  private void b()
  {
    if (b != null)
    {
      getAppData().k().a(new g(EventIri.DirectionsToBusiness, b.n(), b.aD()));
      k.a(this, b);
    }
  }
  
  private void c()
  {
    Object localObject = b;
    String str = ((YelpBusiness)localObject).j();
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      if ((str == null) || (str.length() == 0))
      {
        BaseYelpApplication.a("ActivityMapSingleBusiness", "Address invalid for business, using geo location.", new Object[0]);
        localIntent.setData(Uri.parse("geo:" + ((YelpBusiness)localObject).R() + "," + ((YelpBusiness)localObject).Q() + "?z=" + 16));
      }
      for (;;)
      {
        startActivity(localIntent);
        return;
        localObject = "geo:" + ((YelpBusiness)localObject).R() + "," + ((YelpBusiness)localObject).Q() + "?q=" + str + "&z=" + 16;
        localIntent.setData(Uri.parse((String)localObject));
        BaseYelpApplication.a("ActivityMapSingleBusiness", "Using address for business with geo location: [%s], uri follows.\n%s", new Object[] { str, localObject });
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("ActivityMapSingleBusiness", "Error launching google maps intent: " + localException.toString(), localException);
      ar.a(this, "Google Maps", "There was a problem launching Google Maps.");
    }
  }
  
  public void a()
  {
    a.setInfoWindowListener(c);
    a.a(Collections.singletonList(b), new m(b.B()));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Map;
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return g.b(b.aD());
  }
  
  public String getRequestIdForIri(a parama)
  {
    return b.n();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
    if (b == null)
    {
      Log.w("ActivityMapSingleBusiness", "Business could not be recovered from disk.");
      finish();
    }
    setTitle(b.z());
    setContentView(2130903108);
    CameraPosition localCameraPosition = new CameraPosition.a().a(new LatLng(b.R(), b.Q())).a(16.0F).a();
    a = ((YelpMap)findViewById(2131689889));
    a.setOptions(YelpMap.b(localCameraPosition));
    a.a(paramBundle, new b(this));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755030, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131690351: 
      c();
    }
    for (;;)
    {
      return true;
      b();
      continue;
      a(paramMenuItem);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityMapSingleBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */