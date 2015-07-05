package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.List;

public class EventRsvp
  extends _EventRsvp
{
  public static final JsonParser.DualCreator<EventRsvp> CREATOR = new al();
  
  public EventRsvp.RsvpStatus getStatus()
  {
    EventRsvp.RsvpStatus[] arrayOfRsvpStatus = EventRsvp.RsvpStatus.values();
    int j = arrayOfRsvpStatus.length;
    int i = 0;
    while (i < j)
    {
      EventRsvp.RsvpStatus localRsvpStatus = arrayOfRsvpStatus[i];
      if (EventRsvp.RsvpStatus.access$000(localRsvpStatus).equalsIgnoreCase(mEventRsvpStatus)) {
        return localRsvpStatus;
      }
      i += 1;
    }
    return EventRsvp.RsvpStatus.Locked;
  }
  
  public void setUserGuests(List<String> paramList)
  {
    mUserGuests = paramList;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.EventRsvp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */