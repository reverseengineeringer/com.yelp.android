package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityCheckIn
  extends YelpActivity
{
  private CheckInDialog a;
  private YelpCheckIn b;
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, ActivityCheckIn.class);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      a = CheckInDialog.a((YelpBusiness)getIntent().getParcelableExtra("extra.business"));
      a.show(getSupportFragmentManager(), "check_in_dialog");
    }
    for (;;)
    {
      a.a(new r(this));
      a.a(new s(this));
      return;
      a = ((CheckInDialog)getSupportFragmentManager().findFragmentByTag("check_in_dialog"));
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    a.a(null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */