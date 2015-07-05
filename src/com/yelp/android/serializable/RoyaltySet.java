package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public class RoyaltySet
  implements Parcelable
{
  public static final Parcelable.Creator<RoyaltySet> CREATOR = new cx();
  private final String mDescription;
  private final ArrayList<Royal> mRoyalty;
  
  private RoyaltySet(Parcel paramParcel)
  {
    mRoyalty = new ArrayList();
    paramParcel.readTypedList(mRoyalty, Royal.CREATOR);
    mDescription = paramParcel.readString();
  }
  
  public RoyaltySet(JSONObject paramJSONObject)
  {
    JSONArray localJSONArray = paramJSONObject.getJSONArray("rankings");
    int j = localJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    mDescription = paramJSONObject.getString("description");
    int i = 0;
    while (i < j)
    {
      paramJSONObject = localJSONArray.getJSONObject(i);
      localArrayList.add(new Royal((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")), paramJSONObject.optString("location_name"), paramJSONObject.getInt("top_user_count"), paramJSONObject.getString("title"), mDescription));
      i += 1;
    }
    mRoyalty = localArrayList;
  }
  
  public static ArrayList<RoyaltySet> royaltyFromJSONArray(JSONArray paramJSONArray)
  {
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(new RoyaltySet(paramJSONArray.getJSONObject(i)));
      i += 1;
    }
    return localArrayList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  public ArrayList<Royal> getRoyalty()
  {
    return mRoyalty;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mRoyalty);
    paramParcel.writeString(mDescription);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.RoyaltySet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */