package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

abstract class _WeeklyIssue
  implements Parcelable
{
  protected ArrayList<YelpBusiness> mBusinesses;
  protected String mHeadlinePhotoCreditName;
  protected String mHeadlinePhotoTitle;
  protected String mHeadlinePhotoUrl;
  protected String mId;
  protected String mMarketId;
  protected String mMarketLocale;
  protected String mMarketName;
  protected String mPublishDate;
  protected ArrayList<Review> mReviews;
  protected String mText;
  
  protected _WeeklyIssue() {}
  
  protected _WeeklyIssue(ArrayList<Review> paramArrayList, ArrayList<YelpBusiness> paramArrayList1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    this();
    mReviews = paramArrayList;
    mBusinesses = paramArrayList1;
    mId = paramString1;
    mText = paramString2;
    mMarketId = paramString3;
    mMarketName = paramString4;
    mMarketLocale = paramString5;
    mHeadlinePhotoCreditName = paramString6;
    mHeadlinePhotoTitle = paramString7;
    mHeadlinePhotoUrl = paramString8;
    mPublishDate = paramString9;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ArrayList<YelpBusiness> getBusinesses()
  {
    return mBusinesses;
  }
  
  public String getHeadlinePhotoCreditName()
  {
    return mHeadlinePhotoCreditName;
  }
  
  public String getHeadlinePhotoTitle()
  {
    return mHeadlinePhotoTitle;
  }
  
  public String getHeadlinePhotoUrl()
  {
    return mHeadlinePhotoUrl;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getMarketId()
  {
    return mMarketId;
  }
  
  public String getMarketLocale()
  {
    return mMarketLocale;
  }
  
  public String getMarketName()
  {
    return mMarketName;
  }
  
  public String getPublishDate()
  {
    return mPublishDate;
  }
  
  public ArrayList<Review> getReviews()
  {
    return mReviews;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("reviews"))
    {
      mReviews = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("reviews"), Review.CREATOR);
      if (paramJSONObject.isNull("businesses")) {
        break label236;
      }
    }
    label236:
    for (mBusinesses = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("businesses"), YelpBusiness.CREATOR);; mBusinesses = new ArrayList())
    {
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("text")) {
        mText = paramJSONObject.optString("text");
      }
      if (!paramJSONObject.isNull("market_id")) {
        mMarketId = paramJSONObject.optString("market_id");
      }
      if (!paramJSONObject.isNull("market_name")) {
        mMarketName = paramJSONObject.optString("market_name");
      }
      if (!paramJSONObject.isNull("market_locale")) {
        mMarketLocale = paramJSONObject.optString("market_locale");
      }
      if (!paramJSONObject.isNull("headline_photo_credit_name")) {
        mHeadlinePhotoCreditName = paramJSONObject.optString("headline_photo_credit_name");
      }
      if (!paramJSONObject.isNull("headline_photo_title")) {
        mHeadlinePhotoTitle = paramJSONObject.optString("headline_photo_title");
      }
      if (!paramJSONObject.isNull("headline_photo_url")) {
        mHeadlinePhotoUrl = paramJSONObject.optString("headline_photo_url");
      }
      if (!paramJSONObject.isNull("publish_date")) {
        mPublishDate = paramJSONObject.optString("publish_date");
      }
      return;
      mReviews = new ArrayList();
      break;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mReviews = paramParcel.createTypedArrayList(Review.CREATOR);
    mBusinesses = paramParcel.createTypedArrayList(YelpBusiness.CREATOR);
    mId = paramParcel.readString();
    mText = paramParcel.readString();
    mMarketId = paramParcel.readString();
    mMarketName = paramParcel.readString();
    mMarketLocale = paramParcel.readString();
    mHeadlinePhotoCreditName = paramParcel.readString();
    mHeadlinePhotoTitle = paramParcel.readString();
    mHeadlinePhotoUrl = paramParcel.readString();
    mPublishDate = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mReviews);
    paramParcel.writeTypedList(mBusinesses);
    paramParcel.writeString(mId);
    paramParcel.writeString(mText);
    paramParcel.writeString(mMarketId);
    paramParcel.writeString(mMarketName);
    paramParcel.writeString(mMarketLocale);
    paramParcel.writeString(mHeadlinePhotoCreditName);
    paramParcel.writeString(mHeadlinePhotoTitle);
    paramParcel.writeString(mHeadlinePhotoUrl);
    paramParcel.writeString(mPublishDate);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._WeeklyIssue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */