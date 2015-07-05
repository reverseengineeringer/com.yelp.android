package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.ui.activities.reviews.ReviewState;

public class ReviewBroadcast
  extends Review
{
  public static final ah<ReviewBroadcast> CREATOR = new co();
  private String mBusinessId;
  private boolean mConvertedToTip = false;
  private String mUserReviewStatus;
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public ReviewState getReviewState()
  {
    return ReviewState.fromDescription(mUserReviewStatus);
  }
  
  public boolean isConvertedToTip()
  {
    return mConvertedToTip;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    boolean bool = true;
    super.readFromParcel(paramParcel);
    mBusinessId = paramParcel.readString();
    mUserReviewStatus = paramParcel.readString();
    if (paramParcel.readByte() == 1) {}
    for (;;)
    {
      mConvertedToTip = bool;
      return;
      bool = false;
    }
  }
  
  public void setBusinessId(String paramString)
  {
    mBusinessId = paramString;
  }
  
  public void setConvertedToTip(boolean paramBoolean)
  {
    mConvertedToTip = paramBoolean;
  }
  
  public void setId(String paramString)
  {
    mId = paramString;
  }
  
  public void setRating(int paramInt)
  {
    mRating = paramInt;
  }
  
  public void setReviewState(ReviewState paramReviewState)
  {
    mUserReviewStatus = paramReviewState.getDescription();
  }
  
  public void setText(String paramString)
  {
    mText = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(mBusinessId);
    paramParcel.writeString(mUserReviewStatus);
    if (mConvertedToTip) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReviewBroadcast
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */