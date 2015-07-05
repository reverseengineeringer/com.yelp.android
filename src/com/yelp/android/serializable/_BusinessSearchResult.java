package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

abstract class _BusinessSearchResult
  implements Parcelable
{
  protected List<SearchResultAnnotation> mAnnotations;
  protected String mBizDimension;
  protected YelpBusiness mBusiness;
  
  protected _BusinessSearchResult() {}
  
  protected _BusinessSearchResult(List<SearchResultAnnotation> paramList, String paramString, YelpBusiness paramYelpBusiness)
  {
    this();
    mAnnotations = paramList;
    mBizDimension = paramString;
    mBusiness = paramYelpBusiness;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<SearchResultAnnotation> getAnnotations()
  {
    return mAnnotations;
  }
  
  public String getBizDimension()
  {
    return mBizDimension;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("annotations")) {}
    for (mAnnotations = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("annotations"), SearchResultAnnotation.CREATOR);; mAnnotations = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("biz_dimension")) {
        mBizDimension = paramJSONObject.optString("biz_dimension");
      }
      if (!paramJSONObject.isNull("business")) {
        mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
      }
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mAnnotations = paramParcel.createTypedArrayList(SearchResultAnnotation.CREATOR);
    mBizDimension = paramParcel.readString();
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mAnnotations);
    paramParcel.writeString(mBizDimension);
    paramParcel.writeParcelable(mBusiness, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._BusinessSearchResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */