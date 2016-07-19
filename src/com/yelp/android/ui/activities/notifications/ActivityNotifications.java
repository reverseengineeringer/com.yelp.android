package com.yelp.android.ui.activities.notifications;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityNotifications
  extends YelpActivity
{
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityNotifications.class);
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getSupportFragmentManager().a(2131689997) == null) {
      getSupportFragmentManager().a().a(2131689997, new NotificationsFragment()).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.notifications.ActivityNotifications
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */