package android.support.design.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.ai;
import android.support.v4.view.t;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.List;

public class AppBarLayout$Behavior
  extends ViewOffsetBehavior<AppBarLayout>
{
  private int a;
  private boolean b;
  private Runnable c;
  private android.support.v4.widget.v d;
  private p e;
  private int f = -1;
  private boolean g;
  private float h;
  private boolean i;
  private int j = -1;
  private int k;
  private int l = -1;
  private WeakReference<View> m;
  
  public AppBarLayout$Behavior() {}
  
  public AppBarLayout$Behavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private int a(AppBarLayout paramAppBarLayout, int paramInt)
  {
    int i2 = Math.abs(paramInt);
    int i3 = paramAppBarLayout.getChildCount();
    int n = 0;
    int i1 = paramInt;
    View localView;
    Interpolator localInterpolator;
    if (n < i3)
    {
      localView = paramAppBarLayout.getChildAt(n);
      AppBarLayout.LayoutParams localLayoutParams = (AppBarLayout.LayoutParams)localView.getLayoutParams();
      localInterpolator = localLayoutParams.b();
      if ((i2 < localView.getTop()) || (i2 > localView.getBottom())) {
        break label203;
      }
      i1 = paramInt;
      if (localInterpolator != null)
      {
        i3 = localLayoutParams.a();
        if ((i3 & 0x1) == 0) {
          break label212;
        }
        n = localView.getHeight();
        i1 = topMargin;
        i1 = bottomMargin + (n + i1) + 0;
        n = i1;
        if ((i3 & 0x2) == 0) {}
      }
    }
    label203:
    label212:
    for (n = i1 - ai.r(localView);; n = 0)
    {
      i1 = paramInt;
      if (n > 0)
      {
        i1 = localView.getTop();
        float f1 = n;
        n = Math.round(localInterpolator.getInterpolation((i2 - i1) / n) * f1);
        i1 = Integer.signum(paramInt) * (n + localView.getTop());
      }
      return i1;
      n += 1;
      break;
    }
  }
  
  private void a(AppBarLayout paramAppBarLayout)
  {
    List localList = AppBarLayout.a(paramAppBarLayout);
    int i1 = localList.size();
    int n = 0;
    while (n < i1)
    {
      AppBarLayout.a locala = (AppBarLayout.a)localList.get(n);
      if (locala != null) {
        locala.a(paramAppBarLayout, b());
      }
      n += 1;
    }
  }
  
  private boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, float paramFloat)
  {
    if (c != null) {
      paramAppBarLayout.removeCallbacks(c);
    }
    if (d == null) {
      d = android.support.v4.widget.v.a(paramAppBarLayout.getContext());
    }
    d.a(0, a(), 0, Math.round(paramFloat), 0, 0, paramInt1, paramInt2);
    if (d.g())
    {
      c = new a(paramCoordinatorLayout, paramAppBarLayout);
      ai.a(paramAppBarLayout, c);
      return true;
    }
    c = null;
    return false;
  }
  
  private int b(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    return a(paramCoordinatorLayout, paramAppBarLayout, a() - paramInt1, paramInt2, paramInt3);
  }
  
  private void c(final CoordinatorLayout paramCoordinatorLayout, final AppBarLayout paramAppBarLayout, int paramInt)
  {
    if (e == null)
    {
      e = v.a();
      e.a(a.c);
      e.a(new p.c()
      {
        public void a(p paramAnonymousp)
        {
          b(paramCoordinatorLayout, paramAppBarLayout, paramAnonymousp.c());
        }
      });
    }
    for (;;)
    {
      e.a(a(), paramInt);
      e.a();
      return;
      e.e();
    }
  }
  
  private boolean c()
  {
    if (m != null)
    {
      View localView = (View)m.get();
      return (localView != null) && (localView.isShown()) && (!ai.b(localView, -1));
    }
    return false;
  }
  
  final int a()
  {
    return b() + a;
  }
  
  final int a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    int i2 = a();
    int i1 = 0;
    int n = i1;
    if (paramInt2 != 0)
    {
      n = i1;
      if (i2 >= paramInt2)
      {
        n = i1;
        if (i2 <= paramInt3)
        {
          paramInt2 = k.a(paramInt1, paramInt2, paramInt3);
          n = i1;
          if (i2 != paramInt2) {
            if (!paramAppBarLayout.b()) {
              break label123;
            }
          }
        }
      }
    }
    label123:
    for (paramInt1 = a(paramAppBarLayout, paramInt2);; paramInt1 = paramInt2)
    {
      boolean bool = a(paramInt1);
      a = (paramInt2 - paramInt1);
      if ((!bool) && (paramAppBarLayout.b())) {
        paramCoordinatorLayout.c(paramAppBarLayout);
      }
      a(paramAppBarLayout);
      n = i2 - paramInt2;
      return n;
    }
  }
  
  public Parcelable a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout)
  {
    boolean bool = false;
    Parcelable localParcelable = super.a(paramCoordinatorLayout, paramAppBarLayout);
    int i1 = b();
    int i2 = paramAppBarLayout.getChildCount();
    int n = 0;
    while (n < i2)
    {
      paramCoordinatorLayout = paramAppBarLayout.getChildAt(n);
      int i3 = paramCoordinatorLayout.getBottom() + i1;
      if ((paramCoordinatorLayout.getTop() + i1 <= 0) && (i3 >= 0))
      {
        paramAppBarLayout = new SavedState(localParcelable);
        a = n;
        if (i3 == ai.r(paramCoordinatorLayout)) {
          bool = true;
        }
        c = bool;
        b = (i3 / paramCoordinatorLayout.getHeight());
        return paramAppBarLayout;
      }
      n += 1;
    }
    return localParcelable;
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof SavedState))
    {
      paramParcelable = (SavedState)paramParcelable;
      super.a(paramCoordinatorLayout, paramAppBarLayout, paramParcelable.getSuperState());
      f = a;
      h = b;
      g = c;
      return;
    }
    super.a(paramCoordinatorLayout, paramAppBarLayout, paramParcelable);
    f = -1;
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView)
  {
    b = false;
    m = new WeakReference(paramView);
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt4 < 0)
    {
      b(paramCoordinatorLayout, paramAppBarLayout, paramInt4, -paramAppBarLayout.getDownNestedScrollRange(), 0);
      b = true;
      return;
    }
    b = false;
  }
  
  public void a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    if ((paramInt2 != 0) && (!b))
    {
      if (paramInt2 >= 0) {
        break label50;
      }
      paramInt1 = -paramAppBarLayout.getTotalScrollRange();
    }
    for (int n = paramInt1 + paramAppBarLayout.getDownNestedPreScrollRange();; n = 0)
    {
      paramArrayOfInt[1] = b(paramCoordinatorLayout, paramAppBarLayout, paramInt2, paramInt1, n);
      return;
      label50:
      paramInt1 = -paramAppBarLayout.getUpNestedPreScrollRange();
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt)
  {
    boolean bool = super.a(paramCoordinatorLayout, paramAppBarLayout, paramInt);
    int n = paramAppBarLayout.getPendingAction();
    if (n != 0) {
      if ((n & 0x4) != 0)
      {
        paramInt = 1;
        if ((n & 0x2) == 0) {
          break label84;
        }
        n = -paramAppBarLayout.getUpNestedPreScrollRange();
        if (paramInt == 0) {
          break label72;
        }
        c(paramCoordinatorLayout, paramAppBarLayout, n);
        paramAppBarLayout.d();
      }
    }
    label72:
    label84:
    while (f < 0) {
      for (;;)
      {
        a(paramAppBarLayout);
        return bool;
        paramInt = 0;
        continue;
        b(paramCoordinatorLayout, paramAppBarLayout, n);
        continue;
        if ((n & 0x1) != 0) {
          if (paramInt != 0) {
            c(paramCoordinatorLayout, paramAppBarLayout, 0);
          } else {
            b(paramCoordinatorLayout, paramAppBarLayout, 0);
          }
        }
      }
    }
    paramCoordinatorLayout = paramAppBarLayout.getChildAt(f);
    paramInt = -paramCoordinatorLayout.getBottom();
    if (g) {}
    for (paramInt = ai.r(paramCoordinatorLayout) + paramInt;; paramInt = Math.round(paramCoordinatorLayout.getHeight() * h) + paramInt)
    {
      a(paramInt);
      f = -1;
      break;
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, MotionEvent paramMotionEvent)
  {
    if (l < 0) {
      l = ViewConfiguration.get(paramCoordinatorLayout.getContext()).getScaledTouchSlop();
    }
    if ((paramMotionEvent.getAction() == 2) && (i)) {
      return true;
    }
    switch (t.a(paramMotionEvent))
    {
    }
    for (;;)
    {
      return i;
      int n = j;
      if (n != -1)
      {
        n = t.a(paramMotionEvent, n);
        if (n != -1)
        {
          n = (int)t.d(paramMotionEvent, n);
          if (Math.abs(n - k) > l)
          {
            i = true;
            k = n;
            continue;
            i = false;
            n = (int)paramMotionEvent.getX();
            int i1 = (int)paramMotionEvent.getY();
            if ((paramCoordinatorLayout.a(paramAppBarLayout, n, i1)) && (c()))
            {
              k = i1;
              j = t.b(paramMotionEvent, 0);
              continue;
              i = false;
              j = -1;
            }
          }
        }
      }
    }
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    boolean bool = false;
    if (!paramBoolean) {
      paramBoolean = a(paramCoordinatorLayout, paramAppBarLayout, -paramAppBarLayout.getTotalScrollRange(), 0, -paramFloat2);
    }
    int n;
    do
    {
      return paramBoolean;
      if (paramFloat2 >= 0.0F) {
        break;
      }
      n = -paramAppBarLayout.getTotalScrollRange() + paramAppBarLayout.getDownNestedPreScrollRange();
      paramBoolean = bool;
    } while (a() > n);
    int i1;
    do
    {
      paramBoolean = bool;
      if (a() == n) {
        break;
      }
      c(paramCoordinatorLayout, paramAppBarLayout, n);
      return true;
      i1 = -paramAppBarLayout.getUpNestedPreScrollRange();
      n = i1;
    } while (a() >= i1);
    return false;
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, View paramView1, View paramView2, int paramInt)
  {
    if (((paramInt & 0x2) != 0) && (paramAppBarLayout.c()) && (paramCoordinatorLayout.getHeight() - paramView1.getHeight() <= paramAppBarLayout.getHeight())) {}
    for (boolean bool = true;; bool = false)
    {
      if ((bool) && (e != null)) {
        e.e();
      }
      m = null;
      return bool;
    }
  }
  
  final int b(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt)
  {
    return a(paramCoordinatorLayout, paramAppBarLayout, paramInt, Integer.MIN_VALUE, Integer.MAX_VALUE);
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    if (l < 0) {
      l = ViewConfiguration.get(paramCoordinatorLayout.getContext()).getScaledTouchSlop();
    }
    int n = (int)paramMotionEvent.getX();
    int i1 = (int)paramMotionEvent.getY();
    switch (t.a(paramMotionEvent))
    {
    }
    for (;;)
    {
      boolean bool1 = true;
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!paramCoordinatorLayout.a(paramAppBarLayout, n, i1));
          bool1 = bool2;
        } while (!c());
        k = i1;
        j = t.b(paramMotionEvent, 0);
        break;
        n = t.a(paramMotionEvent, j);
        bool1 = bool2;
      } while (n == -1);
      int i2 = (int)t.d(paramMotionEvent, n);
      i1 = k - i2;
      n = i1;
      if (!i)
      {
        n = i1;
        if (Math.abs(i1) > l)
        {
          i = true;
          if (i1 <= 0) {
            break label238;
          }
        }
      }
      label238:
      for (n = i1 - l; i; n = i1 + l)
      {
        k = i2;
        b(paramCoordinatorLayout, paramAppBarLayout, n, -paramAppBarLayout.getDownNestedScrollRange(), 0);
        break;
      }
      i = false;
      j = -1;
    }
  }
  
  protected static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public AppBarLayout.Behavior.SavedState a(Parcel paramAnonymousParcel)
      {
        return new AppBarLayout.Behavior.SavedState(paramAnonymousParcel);
      }
      
      public AppBarLayout.Behavior.SavedState[] a(int paramAnonymousInt)
      {
        return new AppBarLayout.Behavior.SavedState[paramAnonymousInt];
      }
    };
    int a;
    float b;
    boolean c;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readInt();
      b = paramParcel.readFloat();
      if (paramParcel.readByte() != 0) {}
      for (boolean bool = true;; bool = false)
      {
        c = bool;
        return;
      }
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(a);
      paramParcel.writeFloat(b);
      if (c) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeByte((byte)paramInt);
        return;
      }
    }
  }
  
  private class a
    implements Runnable
  {
    private final CoordinatorLayout b;
    private final AppBarLayout c;
    
    a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout)
    {
      b = paramCoordinatorLayout;
      c = paramAppBarLayout;
    }
    
    public void run()
    {
      if ((c != null) && (AppBarLayout.Behavior.a(AppBarLayout.Behavior.this) != null) && (AppBarLayout.Behavior.a(AppBarLayout.Behavior.this).g()))
      {
        b(b, c, AppBarLayout.Behavior.a(AppBarLayout.Behavior.this).c());
        ai.a(c, this);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout.Behavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */