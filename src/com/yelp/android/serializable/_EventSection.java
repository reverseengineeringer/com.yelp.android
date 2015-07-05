package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _EventSection
  implements Parcelable
{
  protected String mAlias;
  protected List<YelpBusiness> mBusinesses;
  protected List<Event> mEvents;
  protected String mHeader;
  protected int[] mItemsToShow;
  protected int mTotal;
  protected List<User> mUsers;
  
  protected _EventSection() {}
  
  protected _EventSection(List<Event> paramList, List<User> paramList1, List<YelpBusiness> paramList2, String paramString1, String paramString2, int paramInt, int[] paramArrayOfInt)
  {
    this();
    mEvents = paramList;
    mUsers = paramList1;
    mBusinesses = paramList2;
    mAlias = paramString1;
    mHeader = paramString2;
    mTotal = paramInt;
    mItemsToShow = paramArrayOfInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAlias()
  {
    return mAlias;
  }
  
  public List<YelpBusiness> getBusinesses()
  {
    return mBusinesses;
  }
  
  public List<Event> getEvents()
  {
    return mEvents;
  }
  
  public String getHeader()
  {
    return mHeader;
  }
  
  public int[] getItemsToShow()
  {
    return mItemsToShow;
  }
  
  public int getTotal()
  {
    return mTotal;
  }
  
  public List<User> getUsers()
  {
    return mUsers;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("events"))
    {
      mEvents = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("events"), Event.CREATOR);
      if (paramJSONObject.isNull("users")) {
        break label186;
      }
      mUsers = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("users"), User.CREATOR);
      label50:
      if (paramJSONObject.isNull("businesses")) {
        break label196;
      }
    }
    label186:
    label196:
    for (mBusinesses = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("businesses"), YelpBusiness.CREATOR);; mBusinesses = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("alias")) {
        mAlias = paramJSONObject.optString("alias");
      }
      if (!paramJSONObject.isNull("header")) {
        mHeader = paramJSONObject.optString("header");
      }
      mTotal = paramJSONObject.optInt("total");
      if (paramJSONObject.isNull("items_to_show")) {
        return;
      }
      paramJSONObject = paramJSONObject.getJSONArray("items_to_show");
      int j = paramJSONObject.length();
      mItemsToShow = new int[j];
      int i = 0;
      while (i < j)
      {
        mItemsToShow[i] = paramJSONObject.getInt(i);
        i += 1;
      }
      mEvents = Collections.emptyList();
      break;
      mUsers = Collections.emptyList();
      break label50;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mEvents = paramParcel.createTypedArrayList(Event.CREATOR);
    mUsers = paramParcel.createTypedArrayList(User.CREATOR);
    mBusinesses = paramParcel.createTypedArrayList(YelpBusiness.CREATOR);
    mAlias = paramParcel.readString();
    mHeader = paramParcel.readString();
    mTotal = paramParcel.readInt();
    mItemsToShow = paramParcel.createIntArray();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mEvents);
    paramParcel.writeTypedList(mUsers);
    paramParcel.writeTypedList(mBusinesses);
    paramParcel.writeString(mAlias);
    paramParcel.writeString(mHeader);
    paramParcel.writeInt(mTotal);
    paramParcel.writeIntArray(mItemsToShow);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._EventSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */