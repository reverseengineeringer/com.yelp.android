package com.yelp.android.serializable;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;
import org.json.JSONObject;

public class ReviewDraftFeedEntry
  extends BusinessInfoProviderFeedEntry
{
  public static final Parcelable.Creator<ReviewDraftFeedEntry> CREATOR = new cq();
  public static final String KEY_RATING = "the_draft_rating";
  public static final String KEY_TEXT = "the_draft_text";
  private final ReviewDraft mDraft;
  
  protected ReviewDraftFeedEntry(Parcel paramParcel)
  {
    super(paramParcel);
    mDraft = ((ReviewDraft)paramParcel.readValue(ReviewDraft.class.getClassLoader()));
  }
  
  public ReviewDraftFeedEntry(ReviewDraft paramReviewDraft)
  {
    mDraft = paramReviewDraft;
  }
  
  public ReviewDraftFeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONObject, paramApiRequest);
    mDraft = ((ReviewDraft)ReviewDraft.CREATOR.parse(paramJSONObject.getJSONObject("draft")));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getDate()
  {
    return mDraft.getDateModified();
  }
  
  public FeedEntry.ItemType getEventIriItemType()
  {
    return FeedEntry.ItemType.ReviewDraft;
  }
  
  public int getIconResource()
  {
    return 2130837928;
  }
  
  public String getId()
  {
    return mDraft.getId();
  }
  
  public m getInfoProvider()
  {
    return mDraft;
  }
  
  public String getInfoString()
  {
    return mDraft.getText();
  }
  
  public LatLng getLocation()
  {
    return null;
  }
  
  public float getRating()
  {
    return mDraft.getRating();
  }
  
  public int getReviewCount()
  {
    return -1;
  }
  
  public ReviewDraft getReviewDraft()
  {
    return mDraft;
  }
  
  public String getSubTitle(Context paramContext, FeedType paramFeedType)
  {
    return paramContext.getString(2131166146);
  }
  
  public void updateContent(Bundle paramBundle)
  {
    mDraft.mNumHalfstars = paramBundle.getInt("the_draft_rating");
    mDraft.mText = paramBundle.getString("the_draft_text");
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeValue(mDraft);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReviewDraftFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */