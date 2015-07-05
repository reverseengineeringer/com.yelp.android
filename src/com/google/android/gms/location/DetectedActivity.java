package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Comparator;

public class DetectedActivity
  implements SafeParcelable
{
  public static final DetectedActivityCreator CREATOR = new DetectedActivityCreator();
  public static final int IN_VEHICLE = 0;
  public static final int ON_BICYCLE = 1;
  public static final int ON_FOOT = 2;
  public static final int RUNNING = 8;
  public static final int STILL = 3;
  public static final int TILTING = 5;
  public static final int UNKNOWN = 4;
  public static final int WALKING = 7;
  public static final Comparator<DetectedActivity> aga = new DetectedActivity.1();
  private final int CK;
  int agb;
  int agc;
  
  public DetectedActivity(int paramInt1, int paramInt2)
  {
    CK = 1;
    agb = paramInt1;
    agc = paramInt2;
  }
  
  public DetectedActivity(int paramInt1, int paramInt2, int paramInt3)
  {
    CK = paramInt1;
    agb = paramInt2;
    agc = paramInt3;
  }
  
  private int ev(int paramInt)
  {
    int i = paramInt;
    if (paramInt > 9) {
      i = 4;
    }
    return i;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getConfidence()
  {
    return agc;
  }
  
  public int getType()
  {
    return ev(agb);
  }
  
  public int getVersionCode()
  {
    return CK;
  }
  
  public String toString()
  {
    return "DetectedActivity [type=" + getType() + ", confidence=" + agc + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    DetectedActivityCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.DetectedActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */