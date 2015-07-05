package com.yelp.android.serializable;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.Html;
import android.text.Spanned;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.feed.FeedType;
import java.util.Date;
import org.json.JSONObject;

public class BookmarkFeedEntry
  extends FeedEntry
{
  public static final Parcelable.Creator<BookmarkFeedEntry> CREATOR = new k();
  private final YelpBookmark mBookmark;
  
  public BookmarkFeedEntry(Parcel paramParcel)
  {
    super(paramParcel);
    mBookmark = ((YelpBookmark)paramParcel.readValue(YelpBookmark.class.getClassLoader()));
  }
  
  public BookmarkFeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONObject, paramApiRequest);
    mBookmark = new YelpBookmark(paramJSONObject.getJSONObject("bookmark"));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Spanned getActivitySubtitle(Context paramContext)
  {
    return Html.fromHtml(paramContext.getString(2131165418, new Object[] { getBusiness().getDisplayName() }));
  }
  
  public Date getDate()
  {
    return mBookmark.getDateCreated();
  }
  
  public FeedEntry.ItemType getEventIriItemType()
  {
    return FeedEntry.ItemType.Bookmark;
  }
  
  public int getIconResource()
  {
    return 2130837663;
  }
  
  public String getId()
  {
    return mBookmark.getBusinessId();
  }
  
  public LatLng getLocation()
  {
    return mBusiness.getLatLng();
  }
  
  public String getSubTitle(Context paramContext, FeedType paramFeedType)
  {
    if (paramFeedType == FeedType.ME) {
      return paramContext.getString(2131166133);
    }
    return paramContext.getString(2131165413, new Object[] { mUser.getName() });
  }
  
  public boolean isSupported()
  {
    return true;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeValue(mBookmark);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BookmarkFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */