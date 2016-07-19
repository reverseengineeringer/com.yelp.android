package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class RankLocation
  implements Parcelable
{
  public static final Parcelable.Creator<RankLocation> CREATOR = new RankLocation.2();
  public static final c<RankLocation> a = new RankLocation.1();
  private final String b;
  private final String c;
  private final int d;
  private final RankTitle.Rank e;
  private final YelpBusiness f;
  
  public RankLocation(String paramString1, String paramString2, int paramInt, RankTitle.Rank paramRank, YelpBusiness paramYelpBusiness)
  {
    b = paramString1;
    c = paramString2;
    e = paramRank;
    d = paramInt;
    f = paramYelpBusiness;
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public int c()
  {
    return d;
  }
  
  public YelpBusiness d()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeInt(d);
    if (e == null) {}
    for (String str = null;; str = e.name())
    {
      paramParcel.writeString(str);
      paramParcel.writeParcelable(f, 0);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.RankLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */