package com.yelp.android.serializable;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.feed.FeedType;
import java.util.Date;
import org.json.JSONObject;

public class EventFeedEntry
  extends FeedEntry
{
  public static final Parcelable.Creator<EventFeedEntry> CREATOR = new ak();
  private final Event mEvent;
  
  protected EventFeedEntry(Parcel paramParcel)
  {
    super(paramParcel);
    mEvent = ((Event)paramParcel.readValue(Event.class.getClassLoader()));
  }
  
  public EventFeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONObject, paramApiRequest);
    mEvent = new Event();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getDate()
  {
    return null;
  }
  
  public FeedEntry.ItemType getEventIriItemType()
  {
    return FeedEntry.ItemType.EventCreated;
  }
  
  public int getIconResource()
  {
    return 2130837945;
  }
  
  public String getId()
  {
    return mEvent.getId();
  }
  
  public LatLng getLocation()
  {
    return mEvent.getLocation();
  }
  
  public String getSubTitle(Context paramContext, FeedType paramFeedType)
  {
    return paramContext.getString(2131165783, new Object[] { mEvent.getLocationName() });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeValue(mEvent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.EventFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */