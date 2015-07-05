package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _LocalAd
  implements Parcelable
{
  protected String mBusinessId;
  protected String mCustomCreativeText;
  protected boolean mIsRatingDisabled;
  protected Photo mPhoto;
  protected String mPlacement;
  protected String mRequestId;
  protected YelpBusinessReview mReview;
  protected int mSlot;
  protected String mSpecialty;
  protected String mType;
  
  protected _LocalAd() {}
  
  protected _LocalAd(Photo paramPhoto, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, YelpBusinessReview paramYelpBusinessReview, boolean paramBoolean, int paramInt)
  {
    this();
    mPhoto = paramPhoto;
    mBusinessId = paramString1;
    mRequestId = paramString2;
    mType = paramString3;
    mSpecialty = paramString4;
    mCustomCreativeText = paramString5;
    mPlacement = paramString6;
    mReview = paramYelpBusinessReview;
    mIsRatingDisabled = paramBoolean;
    mSlot = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public String getCustomCreativeText()
  {
    return mCustomCreativeText;
  }
  
  public Photo getPhoto()
  {
    return mPhoto;
  }
  
  public String getPlacement()
  {
    return mPlacement;
  }
  
  public String getRequestId()
  {
    return mRequestId;
  }
  
  public YelpBusinessReview getReview()
  {
    return mReview;
  }
  
  public int getSlot()
  {
    return mSlot;
  }
  
  public String getSpecialty()
  {
    return mSpecialty;
  }
  
  public String getType()
  {
    return mType;
  }
  
  public boolean isRatingDisabled()
  {
    return mIsRatingDisabled;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("photo")) {
      mPhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("business_id")) {
      mBusinessId = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("request_id")) {
      mRequestId = paramJSONObject.optString("request_id");
    }
    if (!paramJSONObject.isNull("type")) {
      mType = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("specialty")) {
      mSpecialty = paramJSONObject.optString("specialty");
    }
    if (!paramJSONObject.isNull("custom_creative_text")) {
      mCustomCreativeText = paramJSONObject.optString("custom_creative_text");
    }
    if (!paramJSONObject.isNull("placement")) {
      mPlacement = paramJSONObject.optString("placement");
    }
    if (!paramJSONObject.isNull("review")) {
      mReview = ((YelpBusinessReview)YelpBusinessReview.CREATOR.parse(paramJSONObject.getJSONObject("review")));
    }
    mIsRatingDisabled = paramJSONObject.optBoolean("is_rating_disabled");
    mSlot = paramJSONObject.optInt("slot");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mPhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mBusinessId = paramParcel.readString();
    mRequestId = paramParcel.readString();
    mType = paramParcel.readString();
    mSpecialty = paramParcel.readString();
    mCustomCreativeText = paramParcel.readString();
    mPlacement = paramParcel.readString();
    mReview = ((YelpBusinessReview)paramParcel.readParcelable(YelpBusinessReview.class.getClassLoader()));
    mIsRatingDisabled = paramParcel.createBooleanArray()[0];
    mSlot = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mPhoto, 0);
    paramParcel.writeString(mBusinessId);
    paramParcel.writeString(mRequestId);
    paramParcel.writeString(mType);
    paramParcel.writeString(mSpecialty);
    paramParcel.writeString(mCustomCreativeText);
    paramParcel.writeString(mPlacement);
    paramParcel.writeParcelable(mReview, 0);
    paramParcel.writeBooleanArray(new boolean[] { mIsRatingDisabled });
    paramParcel.writeInt(mSlot);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._LocalAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */