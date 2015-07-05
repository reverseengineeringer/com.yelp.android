package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _RecentFriendCheckIns
  implements Parcelable
{
  protected int mCount;
  protected int mInterval;
  protected List<RecentCheckIn> mUsers;
  
  protected _RecentFriendCheckIns() {}
  
  protected _RecentFriendCheckIns(List<RecentCheckIn> paramList, int paramInt1, int paramInt2)
  {
    this();
    mUsers = paramList;
    mCount = paramInt1;
    mInterval = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getCount()
  {
    return mCount;
  }
  
  public int getInterval()
  {
    return mInterval;
  }
  
  public List<RecentCheckIn> getUsers()
  {
    return mUsers;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("users")) {}
    for (mUsers = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("users"), RecentCheckIn.CREATOR);; mUsers = Collections.emptyList())
    {
      mCount = paramJSONObject.optInt("count");
      mInterval = paramJSONObject.optInt("interval");
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mUsers = paramParcel.createTypedArrayList(RecentCheckIn.CREATOR);
    mCount = paramParcel.readInt();
    mInterval = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mUsers != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = mUsers.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((RecentCheckIn)localIterator.next()).writeJSON());
      }
      localJSONObject.put("users", localJSONArray);
    }
    localJSONObject.put("count", mCount);
    localJSONObject.put("interval", mInterval);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mUsers);
    paramParcel.writeInt(mCount);
    paramParcel.writeInt(mInterval);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._RecentFriendCheckIns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */