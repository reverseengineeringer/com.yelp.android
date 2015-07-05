package com.yelp.android.serializable;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;
import org.json.JSONObject;

public class CheckInFeedEntry
  extends FeedEntry
{
  public static final Parcelable.Creator<CheckInFeedEntry> CREATOR = new x();
  private final YelpCheckIn mCheckIn;
  
  public CheckInFeedEntry(Parcel paramParcel)
  {
    super(paramParcel);
    mCheckIn = ((YelpCheckIn)paramParcel.readValue(YelpCheckIn.class.getClassLoader()));
  }
  
  public CheckInFeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONObject, paramApiRequest);
    if (paramJSONObject.isNull("check_in")) {}
    for (mCheckIn = ((YelpCheckIn)YelpCheckIn.CREATOR.parse(paramJSONObject.getJSONObject("checkin")));; mCheckIn = ((YelpCheckIn)YelpCheckIn.CREATOR.parse(paramJSONObject.getJSONObject("check_in"))))
    {
      mCheckIn.mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpCheckIn getCheckIn()
  {
    return mCheckIn;
  }
  
  public Date getDate()
  {
    return mCheckIn.getDateCreated();
  }
  
  public FeedEntry.ItemType getEventIriItemType()
  {
    return FeedEntry.ItemType.CheckIn;
  }
  
  public int getIconResource()
  {
    return 2130837743;
  }
  
  public String getId()
  {
    return mCheckIn.getId();
  }
  
  public LatLng getLocation()
  {
    return mBusiness.getLatLng();
  }
  
  public String getSubTitle(Context paramContext, FeedType paramFeedType)
  {
    if (paramFeedType == FeedType.ME) {
      return paramContext.getString(2131166134);
    }
    return paramContext.getString(2131165485, new Object[] { mUser.getName() });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeValue(mCheckIn);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.CheckInFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */