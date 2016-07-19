package android.support.design.widget;

import android.support.v4.view.ai;
import android.support.v4.view.t;
import android.support.v4.widget.ac;
import android.support.v4.widget.ac.a;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

public class SwipeDismissBehavior<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  private ac a;
  private a b;
  private boolean c;
  private float d = 0.0F;
  private boolean e;
  private int f = 2;
  private float g = 0.5F;
  private float h = 0.0F;
  private float i = 0.5F;
  private final ac.a j = new ac.a()
  {
    private int b;
    
    private boolean a(View paramAnonymousView, float paramAnonymousFloat)
    {
      int i;
      if (paramAnonymousFloat != 0.0F) {
        if (ai.h(paramAnonymousView) == 1)
        {
          i = 1;
          if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) != 2) {
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
                if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) != 0) {
                  break label64;
                }
                if (i == 0) {
                  break label56;
                }
              } while (paramAnonymousFloat < 0.0F);
              return false;
            } while (paramAnonymousFloat > 0.0F);
            return false;
            if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) != 1) {
              break label138;
            }
            if (i == 0) {
              break label87;
            }
          } while (paramAnonymousFloat > 0.0F);
          return false;
        } while (paramAnonymousFloat < 0.0F);
        return false;
        i = paramAnonymousView.getLeft();
        j = b;
        k = Math.round(paramAnonymousView.getWidth() * SwipeDismissBehavior.d(SwipeDismissBehavior.this));
      } while (Math.abs(i - j) >= k);
      return false;
      label138:
      return false;
    }
    
    public int a(View paramAnonymousView)
    {
      return paramAnonymousView.getWidth();
    }
    
    public int a(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      int i;
      if (ai.h(paramAnonymousView) == 1)
      {
        paramAnonymousInt2 = 1;
        if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) != 0) {
          break label72;
        }
        if (paramAnonymousInt2 == 0) {
          break label53;
        }
        i = b - paramAnonymousView.getWidth();
        paramAnonymousInt2 = b;
      }
      for (;;)
      {
        return SwipeDismissBehavior.a(i, paramAnonymousInt1, paramAnonymousInt2);
        paramAnonymousInt2 = 0;
        break;
        label53:
        i = b;
        paramAnonymousInt2 = b + paramAnonymousView.getWidth();
        continue;
        label72:
        if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) == 1)
        {
          if (paramAnonymousInt2 != 0)
          {
            i = b;
            paramAnonymousInt2 = b + paramAnonymousView.getWidth();
          }
          else
          {
            i = b - paramAnonymousView.getWidth();
            paramAnonymousInt2 = b;
          }
        }
        else
        {
          i = b - paramAnonymousView.getWidth();
          paramAnonymousInt2 = b + paramAnonymousView.getWidth();
        }
      }
    }
    
    public void a(int paramAnonymousInt)
    {
      if (SwipeDismissBehavior.a(SwipeDismissBehavior.this) != null) {
        SwipeDismissBehavior.a(SwipeDismissBehavior.this).a(paramAnonymousInt);
      }
    }
    
    public void a(View paramAnonymousView, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      int i = paramAnonymousView.getWidth();
      boolean bool = false;
      if (a(paramAnonymousView, paramAnonymousFloat1)) {
        if (paramAnonymousView.getLeft() < b)
        {
          i = b - i;
          bool = true;
          label41:
          if (!SwipeDismissBehavior.b(SwipeDismissBehavior.this).a(i, paramAnonymousView.getTop())) {
            break label100;
          }
          ai.a(paramAnonymousView, new SwipeDismissBehavior.b(SwipeDismissBehavior.this, paramAnonymousView, bool));
        }
      }
      label100:
      while ((!bool) || (SwipeDismissBehavior.a(SwipeDismissBehavior.this) == null))
      {
        return;
        i = b + i;
        break;
        i = b;
        break label41;
      }
      SwipeDismissBehavior.a(SwipeDismissBehavior.this).a(paramAnonymousView);
    }
    
    public void a(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      float f1 = b + paramAnonymousView.getWidth() * SwipeDismissBehavior.e(SwipeDismissBehavior.this);
      float f2 = b + paramAnonymousView.getWidth() * SwipeDismissBehavior.f(SwipeDismissBehavior.this);
      if (paramAnonymousInt1 <= f1)
      {
        ai.c(paramAnonymousView, 1.0F);
        return;
      }
      if (paramAnonymousInt1 >= f2)
      {
        ai.c(paramAnonymousView, 0.0F);
        return;
      }
      ai.c(paramAnonymousView, SwipeDismissBehavior.b(0.0F, 1.0F - SwipeDismissBehavior.a(f1, f2, paramAnonymousInt1), 1.0F));
    }
    
    public boolean a(View paramAnonymousView, int paramAnonymousInt)
    {
      b = paramAnonymousView.getLeft();
      return true;
    }
    
    public int b(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return paramAnonymousView.getTop();
    }
  };
  
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1);
  }
  
  private void a(ViewGroup paramViewGroup)
  {
    if (a == null) {
      if (!e) {
        break label33;
      }
    }
    label33:
    for (paramViewGroup = ac.a(paramViewGroup, d, j);; paramViewGroup = ac.a(paramViewGroup, j))
    {
      a = paramViewGroup;
      return;
    }
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    return Math.min(Math.max(paramInt1, paramInt2), paramInt3);
  }
  
  private static float c(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return Math.min(Math.max(paramFloat1, paramFloat2), paramFloat3);
  }
  
  public int a()
  {
    if (a != null) {
      return a.a();
    }
    return 0;
  }
  
  public void a(float paramFloat)
  {
    h = c(0.0F, paramFloat, 1.0F);
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void a(a parama)
  {
    b = parama;
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (a != null)
    {
      a.b(paramMotionEvent);
      return true;
    }
    return false;
  }
  
  public void b(float paramFloat)
  {
    i = c(0.0F, paramFloat, 1.0F);
  }
  
  public boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    switch (t.a(paramMotionEvent))
    {
    case 2: 
    default: 
      if (paramCoordinatorLayout.a(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
        break;
      }
    }
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      do
      {
        if (!c) {
          break;
        }
        return false;
      } while (!c);
      c = false;
      return false;
    }
    a(paramCoordinatorLayout);
    return a.a(paramMotionEvent);
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt);
    
    public abstract void a(View paramView);
  }
  
  private class b
    implements Runnable
  {
    private final View b;
    private final boolean c;
    
    b(View paramView, boolean paramBoolean)
    {
      b = paramView;
      c = paramBoolean;
    }
    
    public void run()
    {
      if ((SwipeDismissBehavior.b(SwipeDismissBehavior.this) != null) && (SwipeDismissBehavior.b(SwipeDismissBehavior.this).a(true))) {
        ai.a(b, this);
      }
      while ((!c) || (SwipeDismissBehavior.a(SwipeDismissBehavior.this) == null)) {
        return;
      }
      SwipeDismissBehavior.a(SwipeDismissBehavior.this).a(b);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.SwipeDismissBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */