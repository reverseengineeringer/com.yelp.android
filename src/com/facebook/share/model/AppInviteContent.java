package com.facebook.share.model;

import android.os.Parcel;

public final class AppInviteContent
  implements ShareModel
{
  private final String a;
  private final String b;
  
  private AppInviteContent(a parama)
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
    
    public AppInviteContent a()
    {
      return new AppInviteContent(this, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.AppInviteContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */