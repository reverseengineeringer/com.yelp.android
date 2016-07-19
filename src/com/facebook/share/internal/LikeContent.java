package com.facebook.share.internal;

import android.os.Parcel;
import com.facebook.share.model.ShareModel;

public class LikeContent
  implements ShareModel
{
  private final String a;
  private final String b;
  
  private LikeContent(a parama)
  {
    a = a.a(parama);
    b = a.b(parama);
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
  }
  
  public static class a
  {
    private String a;
    private String b;
    
    public a a(String paramString)
    {
      a = paramString;
      return this;
    }
    
    public LikeContent a()
    {
      return new LikeContent(this, null);
    }
    
    public a b(String paramString)
    {
      b = paramString;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.LikeContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */