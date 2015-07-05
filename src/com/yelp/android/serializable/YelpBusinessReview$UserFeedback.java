package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public final class YelpBusinessReview$UserFeedback
  implements Parcelable
{
  public static final Parcelable.Creator<UserFeedback> CREATOR = new ec();
  private boolean mVotedCool;
  private boolean mVotedFunny;
  private boolean mVotedUseful;
  
  public YelpBusinessReview$UserFeedback(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    mVotedUseful = paramBoolean1;
    mVotedFunny = paramBoolean2;
    mVotedCool = paramBoolean3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean isVotedCool()
  {
    return mVotedCool;
  }
  
  public boolean isVotedFunny()
  {
    return mVotedFunny;
  }
  
  public boolean isVotedUseful()
  {
    return mVotedUseful;
  }
  
  public void setVotedCool(boolean paramBoolean)
  {
    mVotedCool = paramBoolean;
  }
  
  public void setVotedFunny(boolean paramBoolean)
  {
    mVotedFunny = paramBoolean;
  }
  
  public void setVotedUseful(boolean paramBoolean)
  {
    mVotedUseful = paramBoolean;
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("funny", mVotedFunny);
    localJSONObject.put("useful", mVotedUseful);
    localJSONObject.put("cool", mVotedCool);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBooleanArray(new boolean[] { mVotedUseful, mVotedFunny, mVotedCool });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpBusinessReview.UserFeedback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */