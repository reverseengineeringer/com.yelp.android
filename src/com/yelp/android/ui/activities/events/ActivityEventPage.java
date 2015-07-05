package com.yelp.android.ui.activities.events;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.text.TextUtils;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.o;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.services.l;
import com.yelp.android.ui.activities.support.YelpActivity;

public class ActivityEventPage
  extends YelpActivity
{
  private EventFragment a;
  
  public static Intent a(Context paramContext, Event paramEvent, IriSource paramIriSource)
  {
    paramContext = new Intent(paramContext, ActivityEventPage.class);
    paramContext.putExtra("extra.event", paramEvent);
    paramContext.putExtra("extra_event_source", paramIriSource);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, Event paramEvent, String paramString)
  {
    paramContext = new Intent(paramContext, ActivityEventPage.class);
    paramContext.putExtra("extra.event", paramEvent);
    paramContext.putExtra("extra_section_alias", paramString);
    return paramContext;
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((EventFragment)getSupportFragmentManager().findFragmentByTag("tag_event_fragment"));
    Object localObject;
    if (a == null)
    {
      if (getIntent().getData() == null) {
        break label120;
      }
      if (!wasLaunchedFromPushNotification()) {
        break label113;
      }
      paramBundle = IriSource.PushNotification;
      localObject = getIntent().getData();
      a = EventFragment.a(((Uri)localObject).getLastPathSegment(), Event.EventType.getEventTypeFromUri((Uri)localObject), paramBundle);
      AppData.b().k().a(new o((Uri)localObject));
    }
    for (;;)
    {
      getSupportFragmentManager().beginTransaction().replace(2131493332, a, "tag_event_fragment").commit();
      return;
      label113:
      paramBundle = IriSource.Link;
      break;
      label120:
      paramBundle = (Event)getIntent().getParcelableExtra("extra.event");
      localObject = getIntent().getStringExtra("extra_section_alias");
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        localObject = (IriSource)getIntent().getSerializableExtra("extra_event_source");
        a = EventFragment.a(paramBundle, paramBundle.getType(), (IriSource)localObject);
      }
      else
      {
        a = EventFragment.a(paramBundle, (String)localObject);
      }
    }
  }
  
  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    if (paramInt == 1) {
      return l.a(this, new ak(a.d()), 2131166564);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ActivityEventPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */