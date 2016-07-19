package android.support.design.widget;

import android.support.v4.view.ai;
import android.support.v4.widget.ac;
import android.support.v4.widget.ac.a;
import android.view.View;

class SwipeDismissBehavior$1
  extends ac.a
{
  private int b;
  
  SwipeDismissBehavior$1(SwipeDismissBehavior paramSwipeDismissBehavior) {}
  
  private boolean a(View paramView, float paramFloat)
  {
    int i;
    if (paramFloat != 0.0F) {
      if (ai.h(paramView) == 1)
      {
        i = 1;
        if (SwipeDismissBehavior.c(a) != 2) {
          break label34;
        }
      }
    }
    label34:
    label56:
    label64:
    label87:
    int j;
    int k;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return true;
              i = 0;
              break;
              if (SwipeDismissBehavior.c(a) != 0) {
                break label64;
              }
              if (i == 0) {
                break label56;
              }
            } while (paramFloat < 0.0F);
            return false;
          } while (paramFloat > 0.0F);
          return false;
          if (SwipeDismissBehavior.c(a) != 1) {
            break label138;
          }
          if (i == 0) {
            break label87;
          }
        } while (paramFloat > 0.0F);
        return false;
      } while (paramFloat < 0.0F);
      return false;
      i = paramView.getLeft();
      j = b;
      k = Math.round(paramView.getWidth() * SwipeDismissBehavior.d(a));
    } while (Math.abs(i - j) >= k);
    return false;
    label138:
    return false;
  }
  
  public int a(View paramView)
  {
    return paramView.getWidth();
  }
  
  public int a(View paramView, int paramInt1, int paramInt2)
  {
    int i;
    if (ai.h(paramView) == 1)
    {
      paramInt2 = 1;
      if (SwipeDismissBehavior.c(a) != 0) {
        break label72;
      }
      if (paramInt2 == 0) {
        break label53;
      }
      i = b - paramView.getWidth();
      paramInt2 = b;
    }
    for (;;)
    {
      return SwipeDismissBehavior.a(i, paramInt1, paramInt2);
      paramInt2 = 0;
      break;
      label53:
      i = b;
      paramInt2 = b + paramView.getWidth();
      continue;
      label72:
      if (SwipeDismissBehavior.c(a) == 1)
      {
        if (paramInt2 != 0)
        {
          i = b;
          paramInt2 = b + paramView.getWidth();
        }
        else
        {
          i = b - paramView.getWidth();
          paramInt2 = b;
        }
      }
      else
      {
        i = b - paramView.getWidth();
        paramInt2 = b + paramView.getWidth();
      }
    }
  }
  
  public void a(int paramInt)
  {
    if (SwipeDismissBehavior.a(a) != null) {
      SwipeDismissBehavior.a(a).a(paramInt);
    }
  }
  
  public void a(View paramView, float paramFloat1, float paramFloat2)
  {
    int i = paramView.getWidth();
    boolean bool = false;
    if (a(paramView, paramFloat1)) {
      if (paramView.getLeft() < b)
      {
        i = b - i;
        bool = true;
        label41:
        if (!SwipeDismissBehavior.b(a).a(i, paramView.getTop())) {
          break label100;
        }
        ai.a(paramView, new SwipeDismissBehavior.b(a, paramView, bool));
      }
    }
    label100:
    while ((!bool) || (SwipeDismissBehavior.a(a) == null))
    {
      return;
      i = b + i;
      break;
      i = b;
      break label41;
    }
    SwipeDismissBehavior.a(a).a(paramView);
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = b + paramView.getWidth() * SwipeDismissBehavior.e(a);
    float f2 = b + paramView.getWidth() * SwipeDismissBehavior.f(a);
    if (paramInt1 <= f1)
    {
      ai.c(paramView, 1.0F);
      return;
    }
    if (paramInt1 >= f2)
    {
      ai.c(paramView, 0.0F);
      return;
    }
    ai.c(paramView, SwipeDismissBehavior.b(0.0F, 1.0F - SwipeDismissBehavior.a(f1, f2, paramInt1), 1.0F));
  }
  
  public boolean a(View paramView, int paramInt)
  {
    b = paramView.getLeft();
    return true;
  }
  
  public int b(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getTop();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.SwipeDismissBehavior.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */