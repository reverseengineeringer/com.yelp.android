package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.io.File;
import java.io.FileNotFoundException;

final class bo
  implements Parcelable.Creator<EditTipRequest>
{
  public EditTipRequest a(Parcel paramParcel)
  {
    File localFile = PhotoUploadRequestBase.readFromParcel(paramParcel);
    String str = paramParcel.readString();
    paramParcel = paramParcel.readString();
    try
    {
      paramParcel = new EditTipRequest(str, paramParcel, localFile);
      return paramParcel;
    }
    catch (FileNotFoundException paramParcel)
    {
      throw new IllegalStateException("File Deleted while parceled", paramParcel);
    }
  }
  
  public EditTipRequest[] a(int paramInt)
  {
    return new EditTipRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */