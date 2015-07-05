package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v4.view.ce;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class d
  implements x
{
  protected Context a;
  protected Context b;
  protected i c;
  protected LayoutInflater d;
  protected LayoutInflater e;
  protected z f;
  private y g;
  private int h;
  private int i;
  private int j;
  
  public d(Context paramContext, int paramInt1, int paramInt2)
  {
    a = paramContext;
    d = LayoutInflater.from(paramContext);
    h = paramInt1;
    i = paramInt2;
  }
  
  public y a()
  {
    return g;
  }
  
  public z a(ViewGroup paramViewGroup)
  {
    if (f == null)
    {
      f = ((z)d.inflate(h, paramViewGroup, false));
      f.a(c);
      b(true);
    }
    return f;
  }
  
  public View a(m paramm, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof aa)) {}
    for (paramView = (aa)paramView;; paramView = b(paramViewGroup))
    {
      a(paramm, paramView);
      return (View)paramView;
    }
  }
  
  public void a(int paramInt)
  {
    j = paramInt;
  }
  
  public void a(Context paramContext, i parami)
  {
    b = paramContext;
    e = LayoutInflater.from(b);
    c = parami;
  }
  
  public void a(i parami, boolean paramBoolean)
  {
    if (g != null) {
      g.a(parami, paramBoolean);
    }
  }
  
  public abstract void a(m paramm, aa paramaa);
  
  public void a(y paramy)
  {
    g = paramy;
  }
  
  protected void a(View paramView, int paramInt)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(paramView);
    }
    ((ViewGroup)f).addView(paramView, paramInt);
  }
  
  public boolean a(int paramInt, m paramm)
  {
    return true;
  }
  
  public boolean a(ad paramad)
  {
    if (g != null) {
      return g.a(paramad);
    }
    return false;
  }
  
  public boolean a(i parami, m paramm)
  {
    return false;
  }
  
  protected boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public aa b(ViewGroup paramViewGroup)
  {
    return (aa)d.inflate(i, paramViewGroup, false);
  }
  
  public void b(boolean paramBoolean)
  {
    ViewGroup localViewGroup = (ViewGroup)f;
    if (localViewGroup == null) {}
    label198:
    label204:
    for (;;)
    {
      return;
      int m;
      if (c != null)
      {
        c.j();
        ArrayList localArrayList = c.i();
        int i1 = localArrayList.size();
        int n = 0;
        int k = 0;
        m = k;
        if (n < i1)
        {
          m localm2 = (m)localArrayList.get(n);
          if (!a(k, localm2)) {
            break label198;
          }
          View localView1 = localViewGroup.getChildAt(k);
          if ((localView1 instanceof aa)) {}
          for (m localm1 = ((aa)localView1).getItemData();; localm1 = null)
          {
            View localView2 = a(localm2, localView1, localViewGroup);
            if (localm2 != localm1)
            {
              localView2.setPressed(false);
              ce.v(localView2);
            }
            if (localView2 != localView1) {
              a(localView2, k);
            }
            k += 1;
            n += 1;
            break;
          }
        }
      }
      for (;;)
      {
        if (m >= localViewGroup.getChildCount()) {
          break label204;
        }
        if (!a(localViewGroup, m))
        {
          m += 1;
          continue;
          break;
          m = 0;
        }
      }
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean b(i parami, m paramm)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */