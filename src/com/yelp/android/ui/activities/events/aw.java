package com.yelp.android.ui.activities.events;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Event;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.Iterator;
import java.util.List;

class aw
  extends BroadcastReceiver
{
  aw(MoreEventsFragment paramMoreEventsFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = MoreEventsFragment.a(a).a();
    paramIntent = (Event)ObjectDirtyEvent.a(paramIntent);
    if (paramIntent.isUserParticipating()) {
      if (paramContext.contains(paramIntent)) {
        paramIntent.updateEventObjectInList(paramContext);
      }
    }
    for (;;)
    {
      MoreEventsFragment.a(a).notifyDataSetChanged();
      return;
      paramContext.add(paramIntent);
      continue;
      Iterator localIterator = paramContext.iterator();
      while (localIterator.hasNext())
      {
        Event localEvent = (Event)localIterator.next();
        if (localEvent.getId().equals(paramIntent.getId())) {
          paramContext.remove(localEvent);
        }
      }
      if (MoreEventsFragment.a(a).isEmpty()) {
        a.a(ErrorType.NO_EVENTS);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */