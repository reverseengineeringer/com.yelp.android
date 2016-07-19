package pl.droidsonroids.gif;

import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class GifViewSavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<GifViewSavedState> CREATOR = new Parcelable.Creator()
  {
    public GifViewSavedState a(Parcel paramAnonymousParcel)
    {
      return new GifViewSavedState(paramAnonymousParcel, null);
    }
    
    public GifViewSavedState[] a(int paramAnonymousInt)
    {
      return new GifViewSavedState[paramAnonymousInt];
    }
  };
  final long[][] a;
  
  private GifViewSavedState(Parcel paramParcel)
  {
    super(paramParcel);
    a = new long[paramParcel.readInt()][];
    int i = 0;
    while (i < a.length)
    {
      a[i] = paramParcel.createLongArray();
      i += 1;
    }
  }
  
  public GifViewSavedState(Parcelable paramParcelable, long[] paramArrayOfLong)
  {
    super(paramParcelable);
    a = new long[1][];
    a[0] = paramArrayOfLong;
  }
  
  GifViewSavedState(Parcelable paramParcelable, Drawable... paramVarArgs)
  {
    super(paramParcelable);
    a = new long[paramVarArgs.length][];
    int i = 0;
    if (i < paramVarArgs.length)
    {
      paramParcelable = paramVarArgs[i];
      if ((paramParcelable instanceof c)) {
        a[i] = f.m();
      }
      for (;;)
      {
        i += 1;
        break;
        a[i] = null;
      }
    }
  }
  
  void a(Drawable paramDrawable, int paramInt)
  {
    if ((a[paramInt] != null) && ((paramDrawable instanceof c)))
    {
      paramDrawable = (c)paramDrawable;
      paramDrawable.a(f.a(a[paramInt], e));
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(a.length);
    long[][] arrayOfLong = a;
    int i = arrayOfLong.length;
    paramInt = 0;
    while (paramInt < i)
    {
      paramParcel.writeLongArray(arrayOfLong[paramInt]);
      paramInt += 1;
    }
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.GifViewSavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */