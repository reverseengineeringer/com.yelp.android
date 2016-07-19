package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.List;

public class EventAttendees
  extends _EventAttendees
{
  public static final JsonParser.DualCreator<EventAttendees> CREATOR = new EventAttendees.1();
  
  public EventAttendees() {}
  
  public EventAttendees(List<String> paramList1, List<String> paramList2, List<User> paramList, String paramString, int[] paramArrayOfInt)
  {
    super(paramList1, paramList2, paramList, paramString, paramArrayOfInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.EventAttendees
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */