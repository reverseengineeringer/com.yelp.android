package com.yelp.android.ui.activities.events;

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
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpMapActivity;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.d;
import com.yelp.android.ui.map.f;
import com.yelp.android.ui.util.cp;
import java.util.Collections;

public class ActivityMapForEvent
  extends YelpMapActivity
{
  private YelpMap<Event> a;
  private Event b;
  private final f<YelpBusiness> c = new a(this);
  
  public static Intent a(Context paramContext, Event paramEvent)
  {
    paramContext = new Intent(paramContext, ActivityMapForEvent.class);
    paramContext.putExtra("extra.event", paramEvent);
    return paramContext;
  }
  
  private void b()
  {
    if (b != null) {
      com.yelp.android.util.r.a(this, b);
    }
  }
  
  private void c()
  {
    Object localObject = b;
    String str = ((Event)localObject).getAddress();
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      if ((str == null) || (str.length() == 0))
      {
        BaseYelpApplication.a("ActivityMapForEvent", "Address invalid for event, using geo location.", new Object[0]);
        localIntent.setData(Uri.parse("geo:" + ((Event)localObject).getLatitude() + "," + ((Event)localObject).getLongitude() + "?z=" + 16));
      }
      for (;;)
      {
        startActivity(localIntent);
        return;
        localObject = "geo:" + ((Event)localObject).getLatitude() + "," + ((Event)localObject).getLongitude() + "?q=" + str + "&z=" + 16;
        localIntent.setData(Uri.parse((String)localObject));
        BaseYelpApplication.a("ActivityMapForEvent", "Using address for event with geo location: [%s], uri follows.\n%s", new Object[] { str, localObject });
      }
      return;
    }
    catch (Exception localException)
    {
      Log.e("ActivityMapForEvent", "Error launching google maps intent: " + localException.toString(), localException);
      cp.a(this, getString(2131165895), getString(2131165898));
    }
  }
  
  public void a()
  {
    a.a(Collections.singletonList(b), new com.yelp.android.ui.map.r(2130838156));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Map;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((Event)getIntent().getParcelableExtra("extra.event"));
    if (b == null)
    {
      Log.w("ActivityMapForEvent", "Event could not be recovered from intent.");
      finish();
    }
    setTitle(b.getName());
    setContentView(2130903095);
    CameraPosition localCameraPosition = new CameraPosition.Builder().target(new LatLng(b.getLatitude(), b.getLongitude())).zoom(16.0F).build();
    a = ((YelpMap)findViewById(2131493221));
    a.setOptions(YelpMap.a(this, localCameraPosition));
    a.a(paramBundle, new d(this));
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
 * Qualified Name:     com.yelp.android.ui.activities.events.ActivityMapForEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */