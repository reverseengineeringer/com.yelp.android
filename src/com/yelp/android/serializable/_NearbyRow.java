package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

abstract class _NearbyRow
  implements Parcelable
{
  protected String mEndAction;
  protected String mEndActionString;
  protected String mHeader;
  protected List<NearbyResult> mResults;
  protected String mRowId;
  protected String mTag;
  protected int mTopResultCount;
  
  protected _NearbyRow() {}
  
  protected _NearbyRow(List<NearbyResult> paramList, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt)
  {
    this();
    mResults = paramList;
    mHeader = paramString1;
    mEndAction = paramString2;
    mEndActionString = paramString3;
    mRowId = paramString4;
    mTag = paramString5;
    mTopResultCount = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getEndAction()
  {
    return mEndAction;
  }
  
  public String getEndActionString()
  {
    return mEndActionString;
  }
  
  public String getHeader()
  {
    return mHeader;
  }
  
  public List<NearbyResult> getResults()
  {
    return mResults;
  }
  
  public String getRowId()
  {
    return mRowId;
  }
  
  public String getTag()
  {
    return mTag;
  }
  
  public int getTopResultCount()
  {
    return mTopResultCount;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("results")) {}
    for (mResults = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("results"), NearbyResult.CREATOR);; mResults = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("header")) {
        mHeader = paramJSONObject.optString("header");
      }
      if (!paramJSONObject.isNull("end_action")) {
        mEndAction = paramJSONObject.optString("end_action");
      }
      if (!paramJSONObject.isNull("end_action_string")) {
        mEndActionString = paramJSONObject.optString("end_action_string");
      }
      if (!paramJSONObject.isNull("row_id")) {
        mRowId = paramJSONObject.optString("row_id");
      }
      if (!paramJSONObject.isNull("tag")) {
        mTag = paramJSONObject.optString("tag");
      }
      mTopResultCount = paramJSONObject.optInt("top_result_count");
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mResults = paramParcel.createTypedArrayList(NearbyResult.CREATOR);
    mHeader = paramParcel.readString();
    mEndAction = paramParcel.readString();
    mEndActionString = paramParcel.readString();
    mRowId = paramParcel.readString();
    mTag = paramParcel.readString();
    mTopResultCount = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mResults);
    paramParcel.writeString(mHeader);
    paramParcel.writeString(mEndAction);
    paramParcel.writeString(mEndActionString);
    paramParcel.writeString(mRowId);
    paramParcel.writeString(mTag);
    paramParcel.writeInt(mTopResultCount);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._NearbyRow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */