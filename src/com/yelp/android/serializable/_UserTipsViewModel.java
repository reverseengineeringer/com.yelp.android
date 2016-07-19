package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import java.util.ArrayList;

abstract class _UserTipsViewModel
  implements Parcelable
{
  protected ArrayList<Tip> a;
  protected User b;
  protected UserTipsViewModel.ViewType c;
  protected int d;
  
  protected _UserTipsViewModel() {}
  
  protected _UserTipsViewModel(ArrayList<Tip> paramArrayList, User paramUser, UserTipsViewModel.ViewType paramViewType, int paramInt)
  {
    this();
    a = paramArrayList;
    b = paramUser;
    c = paramViewType;
    d = paramInt;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(Tip.class.getClassLoader());
    b = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    c = ((UserTipsViewModel.ViewType)paramParcel.readSerializable());
    d = paramParcel.readInt();
  }
  
  public UserTipsViewModel.ViewType c()
  {
    return c;
  }
  
  public User d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ArrayList<Tip> e()
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
    paramObject = (_UserTipsViewModel)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeParcelable(b, 0);
    paramParcel.writeSerializable(c);
    paramParcel.writeInt(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._UserTipsViewModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */