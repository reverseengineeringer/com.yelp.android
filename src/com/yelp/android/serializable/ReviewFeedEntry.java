package com.yelp.android.serializable;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.Html;
import android.text.Spanned;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class ReviewFeedEntry
  extends BusinessInfoProviderFeedEntry
{
  public static final Parcelable.Creator<ReviewFeedEntry> CREATOR = new cr();
  private static final String EXTRA_FEEDBACK = "extra.feedback";
  private static final String EXTRA_RATING = "extra.the_review_rating";
  private static final String EXTRA_TEXT = "extra.the_review_text";
  private static final String EXTRA_USER_FEEDBACK = "extra.user_feedback";
  private final YelpBusinessReview mReview;
  
  protected ReviewFeedEntry(Parcel paramParcel)
  {
    super(paramParcel);
    mReview = ((YelpBusinessReview)paramParcel.readValue(YelpBusinessReview.class.getClassLoader()));
  }
  
  public ReviewFeedEntry(YelpBusinessReview paramYelpBusinessReview, ApiRequest<?, ?, ?> paramApiRequest)
  {
    mReview = paramYelpBusinessReview;
  }
  
  public ReviewFeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONObject, paramApiRequest);
    mReview = ((YelpBusinessReview)YelpBusinessReview.CREATOR.parse(paramJSONObject.getJSONObject("review")));
  }
  
  public static Bundle getFeedBundle(ReviewBroadcast paramReviewBroadcast)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra.the_review_rating", paramReviewBroadcast.getRating());
    localBundle.putString("extra.the_review_text", paramReviewBroadcast.getText());
    return localBundle;
  }
  
  public static Bundle getFeedUpdate(YelpBusinessReview paramYelpBusinessReview)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("extra.the_review_rating", paramYelpBusinessReview.getRating());
    localBundle.putString("extra.the_review_text", paramYelpBusinessReview.getText());
    localBundle.putParcelable("extra.user_feedback", paramYelpBusinessReview.getUserFeedback());
    localBundle.putParcelable("extra.feedback", paramYelpBusinessReview.getFeedback());
    return localBundle;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Spanned getActivitySubtitle(Context paramContext)
  {
    return Html.fromHtml(paramContext.getString(2131166470, new Object[] { "<b>" + getBusinessName() + "</b>" }));
  }
  
  public Map<String, Object> getBusinessIriParams()
  {
    Map localMap = super.getBusinessIriParams();
    setupIriParams(localMap);
    return localMap;
  }
  
  public Date getDate()
  {
    return mReview.getDateModified();
  }
  
  public FeedEntry.ItemType getEventIriItemType()
  {
    return FeedEntry.ItemType.Review;
  }
  
  public int getIconResource()
  {
    return 2130838442;
  }
  
  public String getId()
  {
    return mReview.getId();
  }
  
  public YelpBusinessReview getInfoProvider()
  {
    return mReview;
  }
  
  public String getInfoString()
  {
    return mReview.getText();
  }
  
  public Intent getIntentForClick(Context paramContext)
  {
    if (mReview.arePhotosPopulated()) {
      return ActivityReviewPager.a(paramContext, getBusinessId(), getBusinessName(), getBusinessCountry(), Collections.singletonList(getInfoProvider()), 0);
    }
    return ActivityReviewPager.a(paramContext, getId(), getBusinessId(), getBusinessName());
  }
  
  public int getPhotoCount()
  {
    return mReview.getPhotos().size();
  }
  
  public String getPhotoURL(FeedType paramFeedType)
  {
    if (paramFeedType == FeedType.FRIEND) {
      return mReview.getUserPhotoUrl();
    }
    return super.getPhotoURL(paramFeedType);
  }
  
  public float getRating()
  {
    return mReview.getRating();
  }
  
  public YelpBusinessReview getReview()
  {
    return mReview;
  }
  
  public int getReviewCount()
  {
    return -1;
  }
  
  public String getSubTitle(Context paramContext, FeedType paramFeedType)
  {
    if (paramFeedType == FeedType.ME) {
      return paramContext.getString(2131166145);
    }
    return paramContext.getString(2131166476, new Object[] { mReview.getUserName() });
  }
  
  public Map<String, Object> getUserIriParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user_id", mReview.getUserId());
    setupIriParams(localHashMap);
    return localHashMap;
  }
  
  public boolean isSupported()
  {
    return true;
  }
  
  public void updateContent(Bundle paramBundle)
  {
    mReview.mRating = paramBundle.getInt("extra.the_review_rating");
    mReview.mText = paramBundle.getString("extra.the_review_text");
    if (paramBundle.containsKey("extra.user_feedback"))
    {
      YelpBusinessReview.UserFeedback localUserFeedback = (YelpBusinessReview.UserFeedback)paramBundle.getParcelable("extra.user_feedback");
      paramBundle = (YelpBusinessReview.ReviewFeedback)paramBundle.getParcelable("extra.feedback");
      mReview.setUserFeedback(localUserFeedback);
      mReview.setFeedback(paramBundle);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeValue(mReview);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReviewFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */