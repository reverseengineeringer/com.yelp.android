package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.List;

public class oc
  implements SafeParcelable
{
  public static final Parcelable.Creator<oc> CREATOR = new od();
  final int CK;
  private final String TW;
  private final LatLng ajX;
  private final List<oa> ajY;
  private final String ajZ;
  private final String aka;
  private final String mName;
  
  oc(int paramInt, String paramString1, LatLng paramLatLng, String paramString2, List<oa> paramList, String paramString3, String paramString4)
  {
    CK = paramInt;
    mName = paramString1;
    ajX = paramLatLng;
    TW = paramString2;
    ajY = new ArrayList(paramList);
    ajZ = paramString3;
    aka = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAddress()
  {
    return TW;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public String getPhoneNumber()
  {
    return ajZ;
  }
  
  public LatLng nx()
  {
    return ajX;
  }
  
  public List<oa> ny()
  {
    return ajY;
  }
  
  public String nz()
  {
    return aka;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    od.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */