package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import java.util.Set;

public abstract class ShareOpenGraphValueContainer<P extends ShareOpenGraphValueContainer, E extends a>
  implements ShareModel
{
  private final Bundle a;
  
  ShareOpenGraphValueContainer(Parcel paramParcel)
  {
    a = paramParcel.readBundle(a.class.getClassLoader());
  }
  
  protected ShareOpenGraphValueContainer(a<P, E> parama)
  {
    a = ((Bundle)a.a(parama).clone());
  }
  
  public Object a(String paramString)
  {
    return a.get(paramString);
  }
  
  public Bundle b()
  {
    return (Bundle)a.clone();
  }
  
  public String b(String paramString)
  {
    return a.getString(paramString);
  }
  
  public Set<String> c()
  {
    return a.keySet();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(a);
  }
  
  public static abstract class a<P extends ShareOpenGraphValueContainer, E extends a>
  {
    private Bundle a = new Bundle();
    
    public E a(P paramP)
    {
      if (paramP != null) {
        a.putAll(paramP.b());
      }
      return this;
    }
    
    public E a(String paramString1, String paramString2)
    {
      a.putString(paramString1, paramString2);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.model.ShareOpenGraphValueContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */