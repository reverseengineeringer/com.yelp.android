package android.support.v4.os;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class e$a<T>
  implements Parcelable.Creator<T>
{
  final f<T> a;
  
  public e$a(f<T> paramf)
  {
    a = paramf;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return (T)a.a(paramParcel, null);
  }
  
  public T[] newArray(int paramInt)
  {
    return a.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */