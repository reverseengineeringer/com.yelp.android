package com.yelp.android.appdata.webrequests;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.yelp.android.co.a.j;

public class YelpException
  extends Exception
  implements Parcelable
{
  public static final Parcelable.Creator<YelpException> CREATOR = new Parcelable.Creator()
  {
    public YelpException a(Parcel paramAnonymousParcel)
    {
      YelpException localYelpException = new YelpException(paramAnonymousParcel.readInt());
      if (paramAnonymousParcel.readByte() != 0) {}
      for (boolean bool = true;; bool = false)
      {
        localYelpException.setIsRecoverable(bool);
        return localYelpException;
      }
    }
    
    public YelpException[] a(int paramAnonymousInt)
    {
      return new YelpException[paramAnonymousInt];
    }
  };
  public static final int YPErrorCannotConnectToHost;
  public static final int YPErrorCheckInNoLocation;
  public static final int YPErrorCountryNotSupported;
  public static final int YPErrorFacebookConnect;
  public static final int YPErrorInvalidData;
  public static final int YPErrorInvalidMIMEType;
  public static final int YPErrorLocationServicesDisabled;
  public static final int YPErrorNotConnectedToInternet;
  public static final int YPErrorServerMaintenance;
  public static final int YPErrorServerResourceNotFound;
  public static final int YPErrorServerResponse;
  public static final int YPErrorUnknown = a.j.YPErrorUnknown;
  private static final long serialVersionUID = 1L;
  private boolean mIsRecoverable = false;
  private int mMessageResource;
  
  static
  {
    YPErrorServerResourceNotFound = a.j.YPErrorServerResourceNotFound;
    YPErrorServerMaintenance = a.j.YPErrorServerMaintenance;
    YPErrorServerResponse = a.j.YPErrorServerResponse;
    YPErrorCannotConnectToHost = a.j.YPErrorCannotConnectToHost;
    YPErrorNotConnectedToInternet = a.j.YPErrorNotConnectedToInternet;
    YPErrorInvalidMIMEType = a.j.YPErrorInvalidMIMEType;
    YPErrorInvalidData = a.j.YPErrorUnknown;
    YPErrorFacebookConnect = a.j.YPErrorFacebookConnect;
    YPErrorLocationServicesDisabled = a.j.YPErrorLocationServicesDisabled;
    YPErrorCountryNotSupported = a.j.YPErrorCountryNotSupported;
    YPErrorCheckInNoLocation = a.j.YPErrorCheckInNoLocation;
  }
  
  public YelpException(int paramInt)
  {
    mMessageResource = paramInt;
  }
  
  public YelpException(Throwable paramThrowable, int paramInt)
  {
    super(paramThrowable);
    mMessageResource = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getErrorCode()
  {
    return "ANDROID_CLIENT_ERROR";
  }
  
  public String getMessage(Context paramContext)
  {
    return paramContext.getResources().getString(mMessageResource, new Object[] { paramContext.getText(a.j.site_name) });
  }
  
  public int getMessageResource()
  {
    return mMessageResource;
  }
  
  public boolean isRecoverable()
  {
    return mIsRecoverable;
  }
  
  public void setIsRecoverable(boolean paramBoolean)
  {
    mIsRecoverable = paramBoolean;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(mMessageResource);
    if (mIsRecoverable) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.YelpException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */