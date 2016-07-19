package android.support.design.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.v4.view.ai;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

class TabLayout$b
  extends LinearLayout
{
  private int b;
  private final Paint c;
  private int d = -1;
  private float e;
  private int f = -1;
  private int g = -1;
  
  TabLayout$b(TabLayout paramTabLayout, Context paramContext)
  {
    super(paramContext);
    setWillNotDraw(false);
    c = new Paint();
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != f) || (paramInt2 != g))
    {
      f = paramInt1;
      g = paramInt2;
      ai.d(this);
    }
  }
  
  private void c()
  {
    View localView = getChildAt(d);
    int i;
    int j;
    if ((localView != null) && (localView.getWidth() > 0))
    {
      int m = localView.getLeft();
      int k = localView.getRight();
      i = k;
      j = m;
      if (e > 0.0F)
      {
        i = k;
        j = m;
        if (d < getChildCount() - 1)
        {
          localView = getChildAt(d + 1);
          float f1 = e;
          float f2 = localView.getLeft();
          float f3 = e;
          j = (int)(m * (1.0F - f3) + f1 * f2);
          f1 = e;
          f2 = localView.getRight();
          f3 = e;
          i = (int)(k * (1.0F - f3) + f2 * f1);
        }
      }
    }
    for (;;)
    {
      b(j, i);
      return;
      i = -1;
      j = -1;
    }
  }
  
  void a(int paramInt)
  {
    if (c.getColor() != paramInt)
    {
      c.setColor(paramInt);
      ai.d(this);
    }
  }
  
  void a(int paramInt, float paramFloat)
  {
    d = paramInt;
    e = paramFloat;
    c();
  }
  
  void a(final int paramInt1, int paramInt2)
  {
    final int i;
    Object localObject;
    final int k;
    final int m;
    final int j;
    if (ai.h(this) == 1)
    {
      i = 1;
      localObject = getChildAt(paramInt1);
      k = ((View)localObject).getLeft();
      m = ((View)localObject).getRight();
      if (Math.abs(paramInt1 - d) > 1) {
        break label146;
      }
      i = f;
      j = g;
    }
    for (;;)
    {
      if ((i != k) || (j != m))
      {
        localObject = TabLayout.a(a, v.a());
        ((p)localObject).a(a.b);
        ((p)localObject).a(paramInt2);
        ((p)localObject).a(0.0F, 1.0F);
        ((p)localObject).a(new p.c()
        {
          public void a(p paramAnonymousp)
          {
            float f = paramAnonymousp.f();
            TabLayout.b.a(TabLayout.b.this, a.a(i, k, f), a.a(j, m, f));
          }
        });
        ((p)localObject).a(new p.b()
        {
          public void a(p paramAnonymousp)
          {
            TabLayout.b.a(TabLayout.b.this, paramInt1);
            TabLayout.b.a(TabLayout.b.this, 0.0F);
          }
          
          public void b(p paramAnonymousp)
          {
            TabLayout.b.a(TabLayout.b.this, paramInt1);
            TabLayout.b.a(TabLayout.b.this, 0.0F);
          }
        });
        ((p)localObject).a();
      }
      return;
      i = 0;
      break;
      label146:
      j = TabLayout.b(a, 24);
      if (paramInt1 < d)
      {
        if (i != 0)
        {
          j = k - j;
          i = j;
        }
        else
        {
          j = m + j;
          i = j;
        }
      }
      else if (i != 0)
      {
        j = m + j;
        i = j;
      }
      else
      {
        j = k - j;
        i = j;
      }
    }
  }
  
  boolean a()
  {
    boolean bool2 = false;
    int j = getChildCount();
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (getChildAt(i).getWidth() <= 0) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  float b()
  {
    return d + e;
  }
  
  void b(int paramInt)
  {
    if (b != paramInt)
    {
      b = paramInt;
      ai.d(this);
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if ((f >= 0) && (g > f)) {
      paramCanvas.drawRect(f, getHeight() - b, g, getHeight(), c);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    c();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {}
    int k;
    int i;
    Object localObject;
    do
    {
      do
      {
        return;
      } while ((TabLayout.j(a) != 1) || (TabLayout.k(a) != 1));
      k = getChildCount();
      int m = View.MeasureSpec.makeMeasureSpec(0, 0);
      j = 0;
      i = 0;
      while (j < k)
      {
        localObject = getChildAt(j);
        ((View)localObject).measure(m, paramInt2);
        i = Math.max(i, ((View)localObject).getMeasuredWidth());
        j += 1;
      }
    } while (i <= 0);
    int j = TabLayout.b(a, 16);
    if (i * k <= getMeasuredWidth() - j * 2)
    {
      j = 0;
      while (j < k)
      {
        localObject = (LinearLayout.LayoutParams)getChildAt(j).getLayoutParams();
        width = i;
        weight = 0.0F;
        j += 1;
      }
    }
    TabLayout.c(a, 0);
    TabLayout.l(a);
    super.onMeasure(paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */