package android.support.v4.view;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.os.e;
import android.support.v4.os.f;
import android.view.View.BaseSavedState;

public class ViewPager$SavedState
  extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = e.a(new f()
  {
    public ViewPager.SavedState b(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
    {
      return new ViewPager.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
    }
    
    public ViewPager.SavedState[] b(int paramAnonymousInt)
    {
      return new ViewPager.SavedState[paramAnonymousInt];
    }
  });
  int a;
  Parcelable b;
  ClassLoader c;
  
  ViewPager$SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    super(paramParcel);
    ClassLoader localClassLoader = paramClassLoader;
    if (paramClassLoader == null) {
      localClassLoader = getClass().getClassLoader();
    }
    a = paramParcel.readInt();
    b = paramParcel.readParcelable(localClassLoader);
    c = localClassLoader;
  }
  
  public ViewPager$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public String toString()
  {
    return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + a + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(a);
    paramParcel.writeParcelable(b, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ViewPager.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */