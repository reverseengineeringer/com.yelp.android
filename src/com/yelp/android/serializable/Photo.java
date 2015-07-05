package com.yelp.android.serializable;

import android.os.Parcel;
import android.text.TextUtils;
import com.yelp.android.ui.util.PhotoConfig.Aspect;
import com.yelp.android.ui.util.PhotoConfig.Size;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Collections;
import org.json.JSONObject;

public class Photo
  extends _Photo
  implements Complimentable, IdentifiableMedia
{
  public static final JsonParser.DualCreator<Photo> CREATOR = new bt();
  private Feedback mFeedback;
  protected String mOverrideUrl;
  protected String mTempId;
  
  public Photo()
  {
    mFeedback = new Feedback();
    mTempId = "";
  }
  
  public Photo(String paramString1, String paramString2, String paramString3)
  {
    super(null, Collections.emptyList(), null, paramString1, paramString3, null, null, null, 0, 0);
    mOverrideUrl = paramString2;
    mFeedback = new Feedback();
    mTempId = "";
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof Photo)) {
          return false;
        }
        paramObject = (Photo)paramObject;
        if (mId != null) {
          break;
        }
      } while (mId == null);
      return false;
    } while (mId.equals(mId));
    return false;
  }
  
  public boolean equalsId(ay paramay)
  {
    if ((paramay == null) || (!(paramay instanceof Photo))) {}
    label85:
    label88:
    for (;;)
    {
      return false;
      paramay = (Photo)paramay;
      int i;
      if ((!TextUtils.isEmpty(paramay.getId())) && (paramay.getId().equals(mId)))
      {
        i = 1;
        if ((TextUtils.isEmpty(paramay.getTempId())) || (!paramay.getTempId().equals(mTempId))) {
          break label85;
        }
      }
      for (int j = 1;; j = 0)
      {
        if ((i == 0) && (j == 0)) {
          break label88;
        }
        return true;
        i = 0;
        break;
      }
    }
  }
  
  public String getCustomUrl(PhotoConfig.Size paramSize, PhotoConfig.Aspect paramAspect)
  {
    if (!TextUtils.isEmpty(mOverrideUrl)) {
      return mOverrideUrl;
    }
    if ((TextUtils.isEmpty(mUrlPrefix)) && (TextUtils.isEmpty(mUrlSuffix))) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(80);
    localStringBuilder.append(mUrlPrefix).append(type).append(shape);
    if (!TextUtils.isEmpty(mUrlSuffix)) {
      localStringBuilder.append(mUrlSuffix);
    }
    return localStringBuilder.toString();
  }
  
  public Feedback getFeedback()
  {
    return mFeedback;
  }
  
  public String getLargeSquareUrl()
  {
    return getCustomUrl(PhotoConfig.Size.Large, PhotoConfig.Aspect.Square);
  }
  
  public String getLargeUrl()
  {
    return getCustomUrl(PhotoConfig.Size.Large, PhotoConfig.Aspect.Normal);
  }
  
  public String getLargestUrl()
  {
    return getCustomUrl(PhotoConfig.Size.Original, PhotoConfig.Aspect.Normal);
  }
  
  public String getSmallUrl()
  {
    return getCustomUrl(PhotoConfig.Size.Small, PhotoConfig.Aspect.Normal);
  }
  
  public String getTempId()
  {
    return mTempId;
  }
  
  public String getThumbnailUrl()
  {
    return getCustomUrl(PhotoConfig.Size.Medium, PhotoConfig.Aspect.Square);
  }
  
  public Compliment.ComplimentableItemType getType()
  {
    if (getBusinessId() != null) {
      return Compliment.ComplimentableItemType.BIZ_PHOTO;
    }
    return Compliment.ComplimentableItemType.USER_PHOTO;
  }
  
  public String getUserId()
  {
    if (mUserPassport != null) {
      return mUserPassport.getId();
    }
    return null;
  }
  
  public int hashCode()
  {
    if (mId == null) {}
    for (int i = 0;; i = mId.hashCode()) {
      return i + 31;
    }
  }
  
  public boolean isMediaType(Media.MediaType paramMediaType)
  {
    return Media.MediaType.PHOTO.equals(paramMediaType);
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mFeedback = new Feedback(getPrivateFeedback(), mFeedbackPositiveCount);
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mFeedback = ((Feedback)paramParcel.readParcelable(Feedback.class.getClassLoader()));
    mOverrideUrl = paramParcel.readString();
    mTempId = paramParcel.readString();
  }
  
  public void setCaption(String paramString)
  {
    mCaption = paramString;
  }
  
  public void setFeedback(Feedback paramFeedback)
  {
    mFeedback = paramFeedback;
  }
  
  public void setTempId(String paramString)
  {
    mTempId = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(mFeedback, paramInt);
    paramParcel.writeString(mOverrideUrl);
    paramParcel.writeString(mTempId);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Photo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */