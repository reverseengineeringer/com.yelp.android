package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.a.a;
import java.lang.reflect.Field;

public class ListViewCompat
  extends ListView
{
  private static final int[] f = { 0 };
  final Rect a = new Rect();
  int b = 0;
  int c = 0;
  int d = 0;
  int e = 0;
  private Field g;
  private al h;
  
  public ListViewCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ListViewCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    try
    {
      g = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
      g.setAccessible(true);
      return;
    }
    catch (NoSuchFieldException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  public int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramInt2 = getListPaddingTop();
    int i = getListPaddingBottom();
    getListPaddingLeft();
    getListPaddingRight();
    paramInt3 = getDividerHeight();
    Object localObject = getDivider();
    ListAdapter localListAdapter = getAdapter();
    if (localListAdapter == null)
    {
      paramInt1 = paramInt2 + i;
      return paramInt1;
    }
    paramInt2 = i + paramInt2;
    label64:
    int j;
    label85:
    int m;
    if ((paramInt3 > 0) && (localObject != null))
    {
      j = 0;
      localObject = null;
      int k = 0;
      int n = localListAdapter.getCount();
      i = 0;
      if (i >= n) {
        break label283;
      }
      m = localListAdapter.getItemViewType(i);
      if (m == k) {
        break label285;
      }
      localObject = null;
      k = m;
      label117:
      localObject = localListAdapter.getView(i, (View)localObject, this);
      ViewGroup.LayoutParams localLayoutParams = ((View)localObject).getLayoutParams();
      if ((localLayoutParams == null) || (height <= 0)) {
        break label237;
      }
      m = View.MeasureSpec.makeMeasureSpec(height, 1073741824);
      label163:
      ((View)localObject).measure(paramInt1, m);
      if (i <= 0) {
        break label288;
      }
      paramInt2 += paramInt3;
    }
    label237:
    label283:
    label285:
    label288:
    for (;;)
    {
      paramInt2 += ((View)localObject).getMeasuredHeight();
      if (paramInt2 >= paramInt4)
      {
        paramInt1 = paramInt4;
        if (paramInt5 < 0) {
          break;
        }
        paramInt1 = paramInt4;
        if (i <= paramInt5) {
          break;
        }
        paramInt1 = paramInt4;
        if (j <= 0) {
          break;
        }
        paramInt1 = paramInt4;
        if (paramInt2 == paramInt4) {
          break;
        }
        return j;
        paramInt3 = 0;
        break label64;
        m = View.MeasureSpec.makeMeasureSpec(0, 0);
        break label163;
      }
      m = j;
      if (paramInt5 >= 0)
      {
        m = j;
        if (i >= paramInt5) {
          m = paramInt2;
        }
      }
      i += 1;
      j = m;
      break label85;
      return paramInt2;
      break label117;
    }
  }
  
  protected void a()
  {
    Drawable localDrawable = getSelector();
    if ((localDrawable != null) && (b())) {
      localDrawable.setState(getDrawableState());
    }
  }
  
  protected void a(int paramInt, View paramView)
  {
    boolean bool = true;
    Drawable localDrawable = getSelector();
    int i;
    float f1;
    float f2;
    if ((localDrawable != null) && (paramInt != -1))
    {
      i = 1;
      if (i != 0) {
        localDrawable.setVisible(false, false);
      }
      b(paramInt, paramView);
      if (i != 0)
      {
        paramView = a;
        f1 = paramView.exactCenterX();
        f2 = paramView.exactCenterY();
        if (getVisibility() != 0) {
          break label93;
        }
      }
    }
    for (;;)
    {
      localDrawable.setVisible(bool, false);
      a.a(localDrawable, f1, f2);
      return;
      i = 0;
      break;
      label93:
      bool = false;
    }
  }
  
  protected void a(int paramInt, View paramView, float paramFloat1, float paramFloat2)
  {
    a(paramInt, paramView);
    paramView = getSelector();
    if ((paramView != null) && (paramInt != -1)) {
      a.a(paramView, paramFloat1, paramFloat2);
    }
  }
  
  protected void a(Canvas paramCanvas)
  {
    if (!a.isEmpty())
    {
      Drawable localDrawable = getSelector();
      localDrawable.setBounds(a);
      localDrawable.draw(paramCanvas);
    }
  }
  
  protected void b(int paramInt, View paramView)
  {
    Rect localRect = a;
    localRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    left -= b;
    top -= c;
    right += d;
    bottom += e;
    try
    {
      boolean bool = g.getBoolean(this);
      if (paramView.isEnabled() != bool)
      {
        paramView = g;
        if (bool) {
          break label134;
        }
      }
      label134:
      for (bool = true;; bool = false)
      {
        paramView.set(this, Boolean.valueOf(bool));
        if (paramInt != -1) {
          refreshDrawableState();
        }
        return;
      }
      return;
    }
    catch (IllegalAccessException paramView)
    {
      paramView.printStackTrace();
    }
  }
  
  protected boolean b()
  {
    return (c()) && (isPressed());
  }
  
  protected boolean c()
  {
    return false;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    a(paramCanvas);
    super.dispatchDraw(paramCanvas);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    h.a(true);
    a();
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    h = new al(paramDrawable);
    super.setSelector(h);
    Rect localRect = new Rect();
    paramDrawable.getPadding(localRect);
    b = left;
    c = top;
    d = right;
    e = bottom;
  }
  
  protected void setSelectorEnabled(boolean paramBoolean)
  {
    h.a(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ListViewCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */