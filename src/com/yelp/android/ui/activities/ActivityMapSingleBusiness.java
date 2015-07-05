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
import com.google.android.gms.maps.model.CameraPosition.Builder;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.av.a;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpMapActivity;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.f;
import com.yelp.android.ui.util.cp;
import java.util.Collections;
import java.util.Map;

public class ActivityMapSingleBusiness
  extends YelpMapActivity
{
  private YelpMap<YelpBusiness> a;
  private YelpBusiness b;
  private final f<YelpBusiness> c = new cq(this);
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityMapSingleBusiness.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  private void b()
  {
    if (b != null)
    {
      getAppData().k().a(new g(EventIri.DirectionsToBusiness, b.getYelpRequestId(), b.getId()));
      com.yelp.android.util.r.a(this, b);
    }
  }
  
  private void c()
  {
    Object localObject = b;
    String str = ((YelpBusiness)localObject).getAddressForDrivingDirections();
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      if ((str == null) || (str.length() == 0))
      {
        BaseYelpApplication.a("ActivityMapSingleBusiness", "Address invalid for business, using geo location.", new Object[0]);
        localIntent.setData(Uri.parse("geo:" + ((YelpBusiness)localObject).getLatitude() + "," + ((YelpBusiness)localObject).getLongitude() + "?z=" + 16));
      }
      for (;;)
      {
        startActivity(localIntent);
        return;
        localObject = "geo:" + ((YelpBusiness)localObject).getLatitude() + "," + ((YelpBusiness)localObject).getLongitude() + "?q=" + str + "&z=" + 16;
        localIntent.setData(Uri.parse((String)localObject));
        BaseYelpApplication.a("ActivityMapSingleBusiness", "Using address for business with geo location: [%s], uri follows.\n%s", new Object[] { str, localObject });
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("ActivityMapSingleBusiness", "Error launching google maps intent: " + localException.toString(), localException);
      cp.a(this, "Google Maps", "There was a problem launching Google Maps.");
    }
  }
  
  public void a()
  {
    a.setInfoWindowListener(c);
    a.a(Collections.singletonList(b), new com.yelp.android.ui.map.r(b.getAssetForMap()));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Map;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    return g.b(b.getId());
  }
  
  public String getRequestIdForIri(com.yelp.android.analytics.iris.b paramb)
  {
    return b.getYelpRequestId();
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
    setTitle(b.getDisplayName());
    setContentView(2130903095);
    CameraPosition localCameraPosition = new CameraPosition.Builder().target(new LatLng(b.getLatitude(), b.getLongitude())).zoom(16.0F).build();
    a = ((YelpMap)findViewById(2131493221));
    a.setOptions(YelpMap.a(this, localCameraPosition));
    a.a(paramBundle, new com.yelp.android.ui.map.b(this));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755026, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 2131493617: 
      c();
    }
    for (;;)
    {
      return true;
      b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityMapSingleBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */