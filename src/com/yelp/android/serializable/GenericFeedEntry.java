package com.yelp.android.serializable;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

public class GenericFeedEntry
  extends FeedEntry
{
  public static final Parcelable.Creator<GenericFeedEntry> CREATOR = new aw();
  private Uri mAction;
  private final Date mDate;
  private final String mDescription;
  private final String mHeaderText;
  String mIconUrl;
  private final LatLng mLocation;
  private final String mPhotoUrl;
  private final String mTitle;
  
  protected GenericFeedEntry(Parcel paramParcel)
  {
    super(paramParcel);
    mAction = ((Uri)paramParcel.readValue(Uri.class.getClassLoader()));
    mIconUrl = paramParcel.readString();
    mPhotoUrl = paramParcel.readString();
    mHeaderText = paramParcel.readString();
    mTitle = paramParcel.readString();
    mDescription = paramParcel.readString();
    long l = paramParcel.readLong();
    if (l != -1L) {}
    for (Date localDate = new Date(l);; localDate = null)
    {
      mDate = localDate;
      mLocation = ((LatLng)paramParcel.readValue(LatLng.class.getClassLoader()));
      return;
    }
  }
  
  public GenericFeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONObject, paramApiRequest);
    paramApiRequest = paramJSONObject.optString("action");
    if (paramApiRequest != null) {
      mAction = Uri.parse(paramApiRequest);
    }
    mIconUrl = paramJSONObject.optString("icon_url");
    mPhotoUrl = paramJSONObject.optString("photo_url");
    mHeaderText = paramJSONObject.optString("header_text");
    mTitle = paramJSONObject.optString("title");
    mDescription = paramJSONObject.optString("description");
    mDate = JsonUtil.parseTimestamp(paramJSONObject, "timestamp");
    double d = paramJSONObject.optDouble("longitude");
    mLocation = new LatLng(paramJSONObject.optDouble("latitude"), d);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getDate()
  {
    return mDate;
  }
  
  public FeedEntry.ItemType getEventIriItemType()
  {
    return null;
  }
  
  int getIconResource()
  {
    return 0;
  }
  
  public String getInfoString()
  {
    return mDescription;
  }
  
  public LatLng getLocation()
  {
    return mLocation;
  }
  
  public String getPhotoURL(FeedType paramFeedType)
  {
    return mPhotoUrl;
  }
  
  public float getRating()
  {
    return -1.0F;
  }
  
  public int getReviewCount()
  {
    return -1;
  }
  
  public String getSubTitle(Context paramContext, FeedType paramFeedType)
  {
    return mHeaderText;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public Uri getUri()
  {
    return mAction;
  }
  
  public void setHeaderIcon(WebImageView paramWebImageView)
  {
    paramWebImageView.setImageUrl(mIconUrl);
    paramWebImageView.setVisibility(0);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeValue(mAction);
    paramParcel.writeString(mIconUrl);
    paramParcel.writeString(mPhotoUrl);
    paramParcel.writeString(mHeaderText);
    paramParcel.writeString(mTitle);
    paramParcel.writeString(mDescription);
    if (mDate != null) {}
    for (long l = mDate.getTime();; l = -1L)
    {
      paramParcel.writeLong(l);
      paramParcel.writeValue(mLocation);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.GenericFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */