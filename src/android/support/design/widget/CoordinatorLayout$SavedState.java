package android.support.design.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseArray;
import android.view.View.BaseSavedState;

public class CoordinatorLayout$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
  {
    public CoordinatorLayout.SavedState a(Parcel paramAnonymousParcel)
    {
      return new CoordinatorLayout.SavedState(paramAnonymousParcel);
    }
    
    public CoordinatorLayout.SavedState[] a(int paramAnonymousInt)
    {
      return new CoordinatorLayout.SavedState[paramAnonymousInt];
    }
  };
  SparseArray<Parcelable> a;
  
  public CoordinatorLayout$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    int j = paramParcel.readInt();
    int[] arrayOfInt = new int[j];
    paramParcel.readIntArray(arrayOfInt);
    paramParcel = paramParcel.readParcelableArray(CoordinatorLayout.class.getClassLoader());
    a = new SparseArray(j);
    int i = 0;
    while (i < j)
    {
      a.append(arrayOfInt[i], paramParcel[i]);
      i += 1;
    }
  }
  
  public CoordinatorLayout$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int j = 0;
    super.writeToParcel(paramParcel, paramInt);
    if (a != null) {}
    int[] arrayOfInt;
    Parcelable[] arrayOfParcelable;
    for (int i = a.size();; i = 0)
    {
      paramParcel.writeInt(i);
      arrayOfInt = new int[i];
      arrayOfParcelable = new Parcelable[i];
      while (j < i)
      {
        arrayOfInt[j] = a.keyAt(j);
        arrayOfParcelable[j] = ((Parcelable)a.valueAt(j));
        j += 1;
      }
    }
    paramParcel.writeIntArray(arrayOfInt);
    paramParcel.writeParcelableArray(arrayOfParcelable, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CoordinatorLayout.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */