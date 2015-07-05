package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _ReviewSuggestion
  implements Parcelable
{
  protected YelpBusiness mBusiness;
  protected String mImageUrl;
  protected int mLatestReviewRating;
  protected String mReasonText;
  protected String mReviewActivity;
  
  protected _ReviewSuggestion() {}
  
  protected _ReviewSuggestion(String paramString1, String paramString2, String paramString3, YelpBusiness paramYelpBusiness, int paramInt)
  {
    this();
    mReasonText = paramString1;
    mImageUrl = paramString2;
    mReviewActivity = paramString3;
    mBusiness = paramYelpBusiness;
    mLatestReviewRating = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public int getLatestReviewRating()
  {
    return mLatestReviewRating;
  }
  
  public String getReasonText()
  {
    return mReasonText;
  }
  
  public String getReviewActivity()
  {
    return mReviewActivity;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("reason_text")) {
      mReasonText = paramJSONObject.optString("reason_text");
    }
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("review_activity")) {
      mReviewActivity = paramJSONObject.optString("review_activity");
    }
    if (!paramJSONObject.isNull("business")) {
      mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
    mLatestReviewRating = paramJSONObject.optInt("latest_review_rating");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mReasonText = paramParcel.readString();
    mImageUrl = paramParcel.readString();
    mReviewActivity = paramParcel.readString();
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    mLatestReviewRating = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mReasonText);
    paramParcel.writeString(mImageUrl);
    paramParcel.writeString(mReviewActivity);
    paramParcel.writeParcelable(mBusiness, 0);
    paramParcel.writeInt(mLatestReviewRating);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReviewSuggestion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */