package com.yelp.android.serializable;

import android.os.Parcel;
import android.text.TextUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Collections;
import java.util.Date;
import org.json.JSONObject;

public class Video
  extends _Video
  implements IdentifiableMedia
{
  public static final JsonParser.DualCreator<Video> CREATOR = new do();
  private Feedback mFeedback = new Feedback();
  
  public Video() {}
  
  public Video(Date paramDate, Passport paramPassport, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    super(paramDate, paramPassport, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramBoolean, paramInt1, paramInt2);
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
        if (!(paramObject instanceof Video)) {
          return false;
        }
        paramObject = (Video)paramObject;
        if (!getProvider().equals(((Video)paramObject).getProvider())) {
          return false;
        }
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
    if ((paramay == null) || (!(paramay instanceof Video))) {}
    do
    {
      return false;
      paramay = (Video)paramay;
    } while ((TextUtils.isEmpty(paramay.getId())) || (!paramay.getId().equals(mId)));
    return true;
  }
  
  public Feedback getFeedback()
  {
    return mFeedback;
  }
  
  public Video.Provider getProvider()
  {
    return Video.Provider.access$000(mVideoSource);
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
    return Media.MediaType.VIDEO.equals(paramMediaType);
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mFeedback = new Feedback(Collections.emptyList(), mFeedbackPositiveCount);
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mFeedback = ((Feedback)paramParcel.readParcelable(Feedback.class.getClassLoader()));
  }
  
  public boolean uploadedByBusinessOwner()
  {
    return getProvider().equals(Video.Provider.OOYALA);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(mFeedback, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Video
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */