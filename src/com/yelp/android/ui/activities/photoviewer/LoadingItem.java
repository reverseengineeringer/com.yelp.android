package com.yelp.android.ui.activities.photoviewer;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Passport;
import java.util.Date;

public class LoadingItem
  implements Media
{
  public static final Parcelable.Creator<LoadingItem> CREATOR = new LoadingItem.1();
  
  public String a()
  {
    return null;
  }
  
  public boolean a(Media.MediaType paramMediaType)
  {
    return paramMediaType.equals(Media.MediaType.LOADING);
  }
  
  public String b()
  {
    return null;
  }
  
  public int d()
  {
    return 0;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int e()
  {
    return 0;
  }
  
  public String f()
  {
    return null;
  }
  
  public String g()
  {
    return null;
  }
  
  public Date h()
  {
    return null;
  }
  
  public Passport i()
  {
    return null;
  }
  
  public Feedback j()
  {
    return null;
  }
  
  public String k()
  {
    return null;
  }
  
  public String l()
  {
    return null;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.LoadingItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */