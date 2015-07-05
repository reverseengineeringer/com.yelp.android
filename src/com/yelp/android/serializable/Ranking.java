package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.appdata.AppData;
import com.yelp.android.services.r;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class Ranking
  extends _Ranking
  implements DisplayableAsUserBadge
{
  public static final JsonParser.DualCreator<Ranking> CREATOR = new cg();
  private boolean mIsEliteUser;
  private String mRankString;
  private String mRankStringVerbose;
  
  public int getFriendCount()
  {
    return mUserFriendCount;
  }
  
  public int getMediaCount()
  {
    return mUserPhotoCount + mUserVideoCount;
  }
  
  public int getPhotoCount()
  {
    return mUserPhotoCount;
  }
  
  public String getRankString()
  {
    return mRankString;
  }
  
  public String getRankStringVerbose()
  {
    return mRankStringVerbose;
  }
  
  public int getReviewCount()
  {
    return mUserReviewCount;
  }
  
  public int getVideoCount()
  {
    return mUserVideoCount;
  }
  
  public boolean isEliteUser()
  {
    return mIsEliteUser;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    paramJSONObject = AppData.b();
    int i = getRank();
    mRankString = paramJSONObject.getString(2131165490, new Object[] { Integer.valueOf(i) });
    mRankStringVerbose = paramJSONObject.getString(2131165491, new Object[] { Integer.valueOf(i) });
    mIsEliteUser = r.a(getUserEliteYears());
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mRankString = paramParcel.readString();
    mIsEliteUser = paramParcel.createBooleanArray()[0];
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(mRankString);
    paramParcel.writeBooleanArray(new boolean[] { mIsEliteUser });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Ranking
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */