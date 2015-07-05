package com.yelp.android.ui.activities.addphoto;

import android.os.Parcel;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.IdentifiableMedia;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.ay;
import java.util.Date;

public class MediaStub
  implements IdentifiableMedia
{
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equalsId(ay paramay)
  {
    return false;
  }
  
  public String getBusinessId()
  {
    return null;
  }
  
  public String getCaption()
  {
    return null;
  }
  
  public Feedback getFeedback()
  {
    return null;
  }
  
  public int getFeedbackPositiveCount()
  {
    return 0;
  }
  
  public String getId()
  {
    return null;
  }
  
  public int getIndex()
  {
    return 0;
  }
  
  public String getThumbnailUrl()
  {
    return null;
  }
  
  public Date getTimeCreated()
  {
    return null;
  }
  
  public String getUserId()
  {
    return null;
  }
  
  public Passport getUserPassport()
  {
    return null;
  }
  
  public boolean isMediaType(Media.MediaType paramMediaType)
  {
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.MediaStub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */