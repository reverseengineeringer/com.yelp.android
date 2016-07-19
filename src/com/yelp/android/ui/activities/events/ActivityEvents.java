package com.yelp.android.ui.activities.events;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.EventSection;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityEvents
  extends YelpActivity
  implements EventsFragment.a
{
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, ActivityEvents.class);
  }
  
  public void a(EventSection paramEventSection)
  {
    AppData.a(EventIri.EventSectionsMore, "section_alias", paramEventSection.d());
    paramEventSection = MoreEventsFragment.a(paramEventSection);
    getSupportFragmentManager().a().a(2131689997, paramEventSection).a(4097).a(null).a();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getSupportFragmentManager().a(2131689997) == null) {
      getSupportFragmentManager().a().a(2131689997, new EventsFragment()).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ActivityEvents
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */