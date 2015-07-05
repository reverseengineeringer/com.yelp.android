package com.yelp.android.ui.activities.events;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.EventSection;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityEvents
  extends YelpActivity
  implements av
{
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityEvents.class);
  }
  
  public void a(EventSection paramEventSection)
  {
    AppData.a(EventIri.EventSectionsMore, "section_alias", paramEventSection.getAlias());
    paramEventSection = MoreEventsFragment.a(paramEventSection);
    getSupportFragmentManager().beginTransaction().add(2131493332, paramEventSection).setTransition(4097).addToBackStack(null).commit();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getSupportFragmentManager().findFragmentById(2131493332) == null) {
      getSupportFragmentManager().beginTransaction().add(2131493332, new EventsFragment()).commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ActivityEvents
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */