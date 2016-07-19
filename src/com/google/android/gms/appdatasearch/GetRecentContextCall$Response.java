package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class GetRecentContextCall$Response
  implements Result, SafeParcelable
{
  public static final g CREATOR = new g();
  public Status a;
  public List<UsageInfo> b;
  @Deprecated
  public String[] c;
  final int d;
  
  public GetRecentContextCall$Response()
  {
    d = 1;
  }
  
  GetRecentContextCall$Response(int paramInt, Status paramStatus, List<UsageInfo> paramList, String[] paramArrayOfString)
  {
    d = paramInt;
    a = paramStatus;
    b = paramList;
    c = paramArrayOfString;
  }
  
  public int describeContents()
  {
    g localg = CREATOR;
    return 0;
  }
  
  public Status getStatus()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    g localg = CREATOR;
    g.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.GetRecentContextCall.Response
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */