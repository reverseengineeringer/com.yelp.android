package android.support.v4.os;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public class e
{
  public static <T> Parcelable.Creator<T> a(f<T> paramf)
  {
    if (Build.VERSION.SDK_INT >= 13) {
      return h.a(paramf);
    }
    return new a(paramf);
  }
  
  static class a<T>
    implements Parcelable.Creator<T>
  {
    final f<T> a;
    
    public a(f<T> paramf)
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
}

/* Location:
 * Qualified Name:     android.support.v4.os.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */