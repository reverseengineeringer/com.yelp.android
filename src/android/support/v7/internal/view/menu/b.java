package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v4.view.ai;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

public abstract class b
  implements l
{
  protected Context a;
  protected Context b;
  protected f c;
  protected LayoutInflater d;
  protected LayoutInflater e;
  protected m f;
  private l.a g;
  private int h;
  private int i;
  private int j;
  
  public b(Context paramContext, int paramInt1, int paramInt2)
  {
    a = paramContext;
    d = LayoutInflater.from(paramContext);
    h = paramInt1;
    i = paramInt2;
  }
  
  public m a(ViewGroup paramViewGroup)
  {
    if (f == null)
    {
      f = ((m)d.inflate(h, paramViewGroup, false));
      f.a(c);
      a(true);
    }
    return f;
  }
  
  public View a(h paramh, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView instanceof m.a)) {}
    for (paramView = (m.a)paramView;; paramView = b(paramViewGroup))
    {
      a(paramh, paramView);
      return (View)paramView;
    }
  }
  
  public void a(int paramInt)
  {
    j = paramInt;
  }
  
  public void a(Context paramContext, f paramf)
  {
    b = paramContext;
    e = LayoutInflater.from(b);
    c = paramf;
  }
  
  public void a(f paramf, boolean paramBoolean)
  {
    if (g != null) {
      g.a(paramf, paramBoolean);
    }
  }
  
  public abstract void a(h paramh, m.a parama);
  
  public void a(l.a parama)
  {
    g = parama;
  }
  
  protected void a(View paramView, int paramInt)
  {
    ViewGroup localViewGroup = (ViewGroup)paramView.getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(paramView);
    }
    ((ViewGroup)f).addView(paramView, paramInt);
  }
  
  public void a(boolean paramBoolean)
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
          h localh2 = (h)localArrayList.get(n);
          if (!a(k, localh2)) {
            break label198;
          }
          View localView1 = localViewGroup.getChildAt(k);
          if ((localView1 instanceof m.a)) {}
          for (h localh1 = ((m.a)localView1).getItemData();; localh1 = null)
          {
            View localView2 = a(localh2, localView1, localViewGroup);
            if (localh2 != localh1)
            {
              localView2.setPressed(false);
              ai.y(localView2);
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
  
  public boolean a()
  {
    return false;
  }
  
  public boolean a(int paramInt, h paramh)
  {
    return true;
  }
  
  public boolean a(f paramf, h paramh)
  {
    return false;
  }
  
  public boolean a(p paramp)
  {
    if (g != null) {
      return g.a(paramp);
    }
    return false;
  }
  
  protected boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    paramViewGroup.removeViewAt(paramInt);
    return true;
  }
  
  public int b()
  {
    return j;
  }
  
  public m.a b(ViewGroup paramViewGroup)
  {
    return (m.a)d.inflate(i, paramViewGroup, false);
  }
  
  public boolean b(f paramf, h paramh)
  {
    return false;
  }
  
  public l.a d()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */