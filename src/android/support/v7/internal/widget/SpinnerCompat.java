package android.support.v7.internal.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.ApplicationInfo;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.view.ce;
import android.support.v4.view.q;
import android.support.v7.widget.aq;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.SpinnerAdapter;
import com.yelp.android.g.l;

class SpinnerCompat
  extends AbsSpinnerCompat
  implements DialogInterface.OnClickListener
{
  int E;
  private aq F;
  private bb G;
  private ax H;
  private int I;
  private boolean J;
  private Rect K = new Rect();
  private final bd L;
  
  SpinnerCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  SpinnerCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1);
    bg localbg = bg.a(paramContext, paramAttributeSet, l.Spinner, paramInt1, 0);
    setBackgroundDrawable(localbg.a(l.Spinner_android_background));
    int i = paramInt2;
    if (paramInt2 == -1) {
      i = localbg.a(l.Spinner_spinnerMode, 0);
    }
    switch (i)
    {
    }
    for (;;)
    {
      I = localbg.a(l.Spinner_android_gravity, 17);
      G.a(localbg.c(l.Spinner_prompt));
      J = localbg.a(l.Spinner_disableChildrenWhenDisabled, false);
      localbg.b();
      if (H != null)
      {
        G.a(H);
        H = null;
      }
      L = localbg.c();
      return;
      G = new aw(this, null);
      continue;
      paramContext = new ay(this, paramContext, paramAttributeSet, paramInt1);
      E = localbg.e(l.Spinner_android_dropDownWidth, -2);
      paramContext.a(localbg.a(l.Spinner_android_popupBackground));
      G = paramContext;
      F = new au(this, this, paramContext);
    }
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams2 = paramView.getLayoutParams();
    ViewGroup.LayoutParams localLayoutParams1 = localLayoutParams2;
    if (localLayoutParams2 == null) {
      localLayoutParams1 = generateDefaultLayoutParams();
    }
    if (paramBoolean) {
      addViewInLayout(paramView, 0, localLayoutParams1);
    }
    paramView.setSelected(hasFocus());
    if (J) {
      paramView.setEnabled(isEnabled());
    }
    int i = ViewGroup.getChildMeasureSpec(b, h.top + h.bottom, height);
    paramView.measure(ViewGroup.getChildMeasureSpec(c, h.left + h.right, width), i);
    i = h.top + (getMeasuredHeight() - h.bottom - h.top - paramView.getMeasuredHeight()) / 2;
    int j = paramView.getMeasuredHeight();
    paramView.layout(0, i, paramView.getMeasuredWidth() + 0, j + i);
  }
  
  private View c(int paramInt, boolean paramBoolean)
  {
    if (!u)
    {
      localView = i.a(paramInt);
      if (localView != null)
      {
        a(localView, paramBoolean);
        return localView;
      }
    }
    View localView = a.getView(paramInt, null, this);
    a(localView, paramBoolean);
    return localView;
  }
  
  int a(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int n = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i = Math.max(0, getSelectedItemPosition());
    int i2 = Math.min(paramSpinnerAdapter.getCount(), i + 15);
    int j = Math.max(0, i - (15 - (i2 - i)));
    View localView = null;
    int k = 0;
    i = 0;
    if (j < i2)
    {
      int m = paramSpinnerAdapter.getItemViewType(j);
      if (m == i) {
        break label198;
      }
      localView = null;
      i = m;
    }
    label198:
    for (;;)
    {
      localView = paramSpinnerAdapter.getView(j, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(n, i1);
      k = Math.max(k, localView.getMeasuredWidth());
      j += 1;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(K);
        return K.left + K.right + k;
      }
      return k;
    }
  }
  
  void a(int paramInt, boolean paramBoolean)
  {
    paramInt = h.left;
    int i = getRight() - getLeft() - h.left - h.right;
    if (u) {
      g();
    }
    if (z == 0)
    {
      a();
      return;
    }
    if (v >= 0) {
      setSelectedPositionInt(v);
    }
    b();
    removeAllViewsInLayout();
    this.j = x;
    View localView;
    int j;
    if (a != null)
    {
      localView = c(x, true);
      j = localView.getMeasuredWidth();
      int k = ce.h(this);
      switch (q.a(I, k) & 0x7)
      {
      }
    }
    for (;;)
    {
      localView.offsetLeftAndRight(paramInt);
      this.i.a();
      invalidate();
      h();
      u = false;
      o = false;
      setNextSelectedPositionInt(x);
      return;
      paramInt = paramInt + i / 2 - j / 2;
      continue;
      paramInt = paramInt + i - j;
    }
  }
  
  void a(ac paramac)
  {
    super.setOnItemClickListener(paramac);
  }
  
  public void a(SpinnerAdapter paramSpinnerAdapter)
  {
    super.a(paramSpinnerAdapter);
    i.a();
    if ((getContextgetApplicationInfotargetSdkVersion >= 21) && (paramSpinnerAdapter != null) && (paramSpinnerAdapter.getViewTypeCount() != 1)) {
      throw new IllegalArgumentException("Spinner adapter view type count must be 1");
    }
    if (G != null)
    {
      G.a(new ax(paramSpinnerAdapter));
      return;
    }
    H = new ax(paramSpinnerAdapter);
  }
  
  public int getBaseline()
  {
    int j = -1;
    Object localObject2 = null;
    Object localObject1;
    if (getChildCount() > 0) {
      localObject1 = getChildAt(0);
    }
    for (;;)
    {
      int i = j;
      if (localObject1 != null)
      {
        int k = ((View)localObject1).getBaseline();
        i = j;
        if (k >= 0) {
          i = ((View)localObject1).getTop() + k;
        }
      }
      return i;
      localObject1 = localObject2;
      if (a != null)
      {
        localObject1 = localObject2;
        if (a.getCount() > 0)
        {
          localObject1 = c(0, false);
          this.i.a(0, (View)localObject1);
        }
      }
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    setSelection(paramInt);
    paramDialogInterface.dismiss();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((G != null) && (G.b())) {
      G.a();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    q = true;
    a(0, false);
    q = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((G != null) && (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(c(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SpinnerCompat.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (showDropdown)
    {
      paramParcelable = getViewTreeObserver();
      if (paramParcelable != null) {
        paramParcelable.addOnGlobalLayoutListener(new av(this));
      }
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    SpinnerCompat.SavedState localSavedState = new SpinnerCompat.SavedState(super.onSaveInstanceState());
    if ((G != null) && (G.b())) {}
    for (boolean bool = true;; bool = false)
    {
      showDropdown = bool;
      return localSavedState;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((F != null) && (F.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    boolean bool2 = super.performClick();
    boolean bool1 = bool2;
    if (!bool2)
    {
      bool2 = true;
      bool1 = bool2;
      if (!G.b())
      {
        G.c();
        bool1 = bool2;
      }
    }
    return bool1;
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (J)
    {
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        getChildAt(i).setEnabled(paramBoolean);
        i += 1;
      }
    }
  }
  
  public void setOnItemClickListener(ac paramac)
  {
    throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.SpinnerCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */