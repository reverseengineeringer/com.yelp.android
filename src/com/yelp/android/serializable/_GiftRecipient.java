package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;

abstract class _GiftRecipient
  implements Parcelable
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  
  protected _GiftRecipient() {}
  
  protected _GiftRecipient(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this();
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((String)paramParcel.readValue(String.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public String b()
  {
    return d;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
    } while (paramObject.getClass() != getClass());
    paramObject = (_GiftRecipient)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(a);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._GiftRecipient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */