package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ey
public final class bj
  implements SafeParcelable
{
  public static final bk CREATOR = new bk();
  public final int backgroundColor;
  public final int oQ;
  public final int oR;
  public final int oS;
  public final int oT;
  public final int oU;
  public final int oV;
  public final int oW;
  public final String oX;
  public final int oY;
  public final String oZ;
  public final int pa;
  public final int pb;
  public final String pc;
  public final int versionCode;
  
  bj(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, String paramString1, int paramInt10, String paramString2, int paramInt11, int paramInt12, String paramString3)
  {
    versionCode = paramInt1;
    oQ = paramInt2;
    backgroundColor = paramInt3;
    oR = paramInt4;
    oS = paramInt5;
    oT = paramInt6;
    oU = paramInt7;
    oV = paramInt8;
    oW = paramInt9;
    oX = paramString1;
    oY = paramInt10;
    oZ = paramString2;
    pa = paramInt11;
    pb = paramInt12;
    pc = paramString3;
  }
  
  public bj(SearchAdRequest paramSearchAdRequest)
  {
    versionCode = 1;
    oQ = paramSearchAdRequest.getAnchorTextColor();
    backgroundColor = paramSearchAdRequest.getBackgroundColor();
    oR = paramSearchAdRequest.getBackgroundGradientBottom();
    oS = paramSearchAdRequest.getBackgroundGradientTop();
    oT = paramSearchAdRequest.getBorderColor();
    oU = paramSearchAdRequest.getBorderThickness();
    oV = paramSearchAdRequest.getBorderType();
    oW = paramSearchAdRequest.getCallButtonColor();
    oX = paramSearchAdRequest.getCustomChannels();
    oY = paramSearchAdRequest.getDescriptionTextColor();
    oZ = paramSearchAdRequest.getFontFace();
    pa = paramSearchAdRequest.getHeaderTextColor();
    pb = paramSearchAdRequest.getHeaderTextSize();
    pc = paramSearchAdRequest.getQuery();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    bk.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */