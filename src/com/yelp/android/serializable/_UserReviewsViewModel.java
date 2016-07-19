package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import java.util.List;

abstract class _UserReviewsViewModel
  implements Parcelable
{
  protected List<YelpBusinessReview> a;
  protected User b;
  protected boolean c;
  protected int d;
  
  protected _UserReviewsViewModel() {}
  
  protected _UserReviewsViewModel(List<YelpBusinessReview> paramList, User paramUser, boolean paramBoolean, int paramInt)
  {
    this();
    a = paramList;
    b = paramUser;
    c = paramBoolean;
    d = paramInt;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(YelpBusinessReview.class.getClassLoader());
    b = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    c = paramParcel.createBooleanArray()[0];
    d = paramParcel.readInt();
  }
  
  public int b()
  {
    return d;
  }
  
  public boolean c()
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
  
  public List<YelpBusinessReview> e()
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
    paramObject = (_UserReviewsViewModel)paramObject;
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
    paramParcel.writeBooleanArray(new boolean[] { c });
    paramParcel.writeInt(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._UserReviewsViewModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */