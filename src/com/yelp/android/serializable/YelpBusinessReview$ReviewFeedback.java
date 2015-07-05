package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public final class YelpBusinessReview$ReviewFeedback
  implements Parcelable
{
  public static final Parcelable.Creator<ReviewFeedback> CREATOR = new eb();
  private int mCoolVotes;
  private int mFunnyVotes;
  private int mUsefulVotes;
  
  protected YelpBusinessReview$ReviewFeedback(int paramInt1, int paramInt2, int paramInt3)
  {
    mUsefulVotes = paramInt1;
    mFunnyVotes = paramInt2;
    mCoolVotes = paramInt3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getCoolVotes()
  {
    return mCoolVotes;
  }
  
  public int getFunnyVotes()
  {
    return mFunnyVotes;
  }
  
  public int getUsefulVotes()
  {
    return mUsefulVotes;
  }
  
  public boolean isEmpty()
  {
    return (mCoolVotes == 0) && (mFunnyVotes == 0) && (mUsefulVotes == 0);
  }
  
  public void setCoolVotes(int paramInt)
  {
    mCoolVotes = paramInt;
  }
  
  public void setFunnyVotes(int paramInt)
  {
    mFunnyVotes = paramInt;
  }
  
  public void setUsefulVotes(int paramInt)
  {
    mUsefulVotes = paramInt;
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("funny", mFunnyVotes);
    localJSONObject.put("useful", mUsefulVotes);
    localJSONObject.put("cool", mCoolVotes);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(new int[] { mUsefulVotes, mFunnyVotes, mCoolVotes });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpBusinessReview.ReviewFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */