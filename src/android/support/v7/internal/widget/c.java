package android.support.v7.internal.widget;

import android.util.SparseArray;
import android.view.View;

class c
{
  private final SparseArray<View> b = new SparseArray();
  
  c(AbsSpinnerCompat paramAbsSpinnerCompat) {}
  
  View a(int paramInt)
  {
    View localView = (View)b.get(paramInt);
    if (localView != null) {
      b.delete(paramInt);
    }
    return localView;
  }
  
  void a()
  {
    SparseArray localSparseArray = b;
    int j = localSparseArray.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)localSparseArray.valueAt(i);
      if (localView != null) {
        AbsSpinnerCompat.a(a, localView, true);
      }
      i += 1;
    }
    localSparseArray.clear();
  }
  
  public void a(int paramInt, View paramView)
  {
    b.put(paramInt, paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */