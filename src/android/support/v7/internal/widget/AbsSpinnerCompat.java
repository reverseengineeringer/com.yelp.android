package android.support.v7.internal.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.ce;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.SpinnerAdapter;

abstract class AbsSpinnerCompat
  extends z<SpinnerAdapter>
{
  private DataSetObserver E;
  SpinnerAdapter a;
  int b;
  int c;
  int d = 0;
  int e = 0;
  int f = 0;
  int g = 0;
  final Rect h = new Rect();
  final c i = new c(this);
  
  AbsSpinnerCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    k();
  }
  
  private void k()
  {
    setFocusable(true);
    setWillNotDraw(false);
  }
  
  int a(View paramView)
  {
    return paramView.getMeasuredHeight();
  }
  
  void a()
  {
    u = false;
    o = false;
    removeAllViewsInLayout();
    B = -1;
    C = Long.MIN_VALUE;
    setSelectedPositionInt(-1);
    setNextSelectedPositionInt(-1);
    invalidate();
  }
  
  abstract void a(int paramInt, boolean paramBoolean);
  
  public void a(SpinnerAdapter paramSpinnerAdapter)
  {
    int j = -1;
    if (a != null)
    {
      a.unregisterDataSetObserver(E);
      a();
    }
    a = paramSpinnerAdapter;
    B = -1;
    C = Long.MIN_VALUE;
    if (a != null)
    {
      A = z;
      z = a.getCount();
      e();
      E = new ab(this);
      a.registerDataSetObserver(E);
      if (z > 0) {
        j = 0;
      }
      setSelectedPositionInt(j);
      setNextSelectedPositionInt(j);
      if (z == 0) {
        h();
      }
    }
    for (;;)
    {
      requestLayout();
      return;
      e();
      a();
      h();
    }
  }
  
  int b(View paramView)
  {
    return paramView.getMeasuredWidth();
  }
  
  void b()
  {
    int k = getChildCount();
    c localc = i;
    int m = this.j;
    int j = 0;
    while (j < k)
    {
      localc.a(m + j, getChildAt(j));
      j += 1;
    }
  }
  
  public SpinnerAdapter c()
  {
    return a;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.LayoutParams(-1, -2);
  }
  
  public int getCount()
  {
    return z;
  }
  
  public View getSelectedView()
  {
    if ((z > 0) && (x >= 0)) {
      return getChildAt(x - j);
    }
    return null;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = View.MeasureSpec.getMode(paramInt1);
    int j = getPaddingLeft();
    int n = getPaddingTop();
    int m = getPaddingRight();
    int k = getPaddingBottom();
    Object localObject = h;
    if (j > d)
    {
      left = j;
      localObject = h;
      if (n <= e) {
        break label411;
      }
      j = n;
      label67:
      top = j;
      localObject = h;
      if (m <= f) {
        break label419;
      }
      j = m;
      label91:
      right = j;
      localObject = h;
      if (k <= g) {
        break label427;
      }
      j = k;
      label115:
      bottom = j;
      if (u) {
        g();
      }
      j = getSelectedItemPosition();
      if ((j < 0) || (a == null) || (j >= a.getCount())) {
        break label435;
      }
      View localView = i.a(j);
      localObject = localView;
      if (localView == null) {
        localObject = a.getView(j, null, this);
      }
      if (localObject == null) {
        break label435;
      }
      i.a(j, (View)localObject);
      if (((View)localObject).getLayoutParams() == null)
      {
        D = true;
        ((View)localObject).setLayoutParams(generateDefaultLayoutParams());
        D = false;
      }
      measureChild((View)localObject, paramInt1, paramInt2);
      k = a((View)localObject) + h.top + h.bottom;
      j = b((View)localObject) + h.left + h.right;
      m = 0;
    }
    for (;;)
    {
      n = j;
      if (m != 0)
      {
        m = h.top + h.bottom;
        n = j;
        k = m;
        if (i1 == 0)
        {
          n = h.left + h.right;
          k = m;
        }
      }
      j = Math.max(k, getSuggestedMinimumHeight());
      k = Math.max(n, getSuggestedMinimumWidth());
      j = ce.a(j, paramInt2, 0);
      setMeasuredDimension(ce.a(k, paramInt1, 0), j);
      b = paramInt2;
      c = paramInt1;
      return;
      j = d;
      break;
      label411:
      j = e;
      break label67;
      label419:
      j = f;
      break label91;
      label427:
      j = g;
      break label115;
      label435:
      m = 1;
      j = 0;
      k = 0;
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (AbsSpinnerCompat.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (selectedId >= 0L)
    {
      u = true;
      o = true;
      m = selectedId;
      l = position;
      p = 0;
      requestLayout();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    AbsSpinnerCompat.SavedState localSavedState = new AbsSpinnerCompat.SavedState(super.onSaveInstanceState());
    selectedId = getSelectedItemId();
    if (selectedId >= 0L)
    {
      position = getSelectedItemPosition();
      return localSavedState;
    }
    position = -1;
    return localSavedState;
  }
  
  public void requestLayout()
  {
    if (!D) {
      super.requestLayout();
    }
  }
  
  public void setSelection(int paramInt)
  {
    setNextSelectedPositionInt(paramInt);
    requestLayout();
    invalidate();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.AbsSpinnerCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */