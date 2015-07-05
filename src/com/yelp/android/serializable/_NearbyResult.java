package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _NearbyResult
  implements Parcelable
{
  protected String mAction;
  protected YelpBusiness mBusiness;
  protected String mBusinessId;
  protected NearbyReason mReason;
  protected String mResultId;
  
  protected _NearbyResult() {}
  
  protected _NearbyResult(NearbyReason paramNearbyReason, String paramString1, String paramString2, String paramString3, YelpBusiness paramYelpBusiness)
  {
    this();
    mReason = paramNearbyReason;
    mResultId = paramString1;
    mAction = paramString2;
    mBusinessId = paramString3;
    mBusiness = paramYelpBusiness;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAction()
  {
    return mAction;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public NearbyReason getReason()
  {
    return mReason;
  }
  
  public String getResultId()
  {
    return mResultId;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("reason")) {
      mReason = ((NearbyReason)NearbyReason.CREATOR.parse(paramJSONObject.getJSONObject("reason")));
    }
    if (!paramJSONObject.isNull("result_id")) {
      mResultId = paramJSONObject.optString("result_id");
    }
    if (!paramJSONObject.isNull("action")) {
      mAction = paramJSONObject.optString("action");
    }
    if (!paramJSONObject.isNull("business_id")) {
      mBusinessId = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("business")) {
      mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mReason = ((NearbyReason)paramParcel.readParcelable(NearbyReason.class.getClassLoader()));
    mResultId = paramParcel.readString();
    mAction = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mReason, 0);
    paramParcel.writeString(mResultId);
    paramParcel.writeString(mAction);
    paramParcel.writeString(mBusinessId);
    paramParcel.writeParcelable(mBusiness, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._NearbyResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */