package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

abstract class _Feedback
  implements Parcelable
{
  protected List<String> mFeedbackByUser;
  protected int mPositiveFeedbackCount;
  
  protected _Feedback() {}
  
  protected _Feedback(List<String> paramList, int paramInt)
  {
    this();
    mFeedbackByUser = paramList;
    mPositiveFeedbackCount = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<String> getFeedbackByUser()
  {
    return mFeedbackByUser;
  }
  
  public int getPositiveFeedbackCount()
  {
    return mPositiveFeedbackCount;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mFeedbackByUser = paramParcel.createStringArrayList();
    mPositiveFeedbackCount = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStringList(mFeedbackByUser);
    paramParcel.writeInt(mPositiveFeedbackCount);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Feedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */