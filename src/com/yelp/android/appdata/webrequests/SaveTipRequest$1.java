package com.yelp.android.appdata.webrequests;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.io.File;
import java.io.FileNotFoundException;

final class SaveTipRequest$1
  implements Parcelable.Creator<SaveTipRequest>
{
  public SaveTipRequest a(Parcel paramParcel)
  {
    File localFile = TipUploadRequestBase.a(paramParcel);
    String str = paramParcel.readString();
    paramParcel = paramParcel.readString();
    try
    {
      paramParcel = new SaveTipRequest(str, paramParcel, localFile);
      return paramParcel;
    }
    catch (FileNotFoundException paramParcel)
    {
      throw new IllegalStateException("File Deleted while parceled", paramParcel);
    }
  }
  
  public SaveTipRequest[] a(int paramInt)
  {
    return new SaveTipRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.SaveTipRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */