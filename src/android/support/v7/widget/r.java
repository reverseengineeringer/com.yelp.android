package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

class r
{
  final t a;
  final s b;
  final List<View> c;
  
  r(t paramt)
  {
    a = paramt;
    b = new s();
    c = new ArrayList();
  }
  
  private int e(int paramInt)
  {
    if (paramInt < 0)
    {
      paramInt = -1;
      return paramInt;
    }
    int j = a.a();
    int i = paramInt;
    for (;;)
    {
      if (i >= j) {
        break label72;
      }
      int k = paramInt - (i - b.e(i));
      if (k == 0) {
        for (;;)
        {
          paramInt = i;
          if (!b.c(i)) {
            break;
          }
          i += 1;
        }
      }
      i += k;
    }
    label72:
    return -1;
  }
  
  View a(int paramInt1, int paramInt2)
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      View localView = (View)c.get(i);
      ce localce = a.b(localView);
      if ((localce.d() == paramInt1) && (!localce.l()) && ((paramInt2 == -1) || (localce.f() == paramInt2))) {
        return localView;
      }
      i += 1;
    }
    return null;
  }
  
  void a()
  {
    b.a();
    c.clear();
    a.b();
  }
  
  void a(int paramInt)
  {
    paramInt = e(paramInt);
    View localView = a.b(paramInt);
    if (localView == null) {
      return;
    }
    if (b.d(paramInt)) {
      c.remove(localView);
    }
    a.a(paramInt);
  }
  
  void a(View paramView)
  {
    int i = a.a(paramView);
    if (i < 0) {
      return;
    }
    if (b.d(i)) {
      c.remove(paramView);
    }
    a.a(i);
  }
  
  void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = a.a();; paramInt = e(paramInt))
    {
      b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        c.add(paramView);
      }
      a.a(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = a.a();; paramInt = e(paramInt))
    {
      b.a(paramInt, paramBoolean);
      if (paramBoolean) {
        c.add(paramView);
      }
      a.a(paramView, paramInt);
      return;
    }
  }
  
  void a(View paramView, boolean paramBoolean)
  {
    a(paramView, -1, paramBoolean);
  }
  
  int b()
  {
    return a.a() - c.size();
  }
  
  int b(View paramView)
  {
    int i = a.a(paramView);
    if (i == -1) {}
    while (b.c(i)) {
      return -1;
    }
    return i - b.e(i);
  }
  
  View b(int paramInt)
  {
    paramInt = e(paramInt);
    return a.b(paramInt);
  }
  
  int c()
  {
    return a.a();
  }
  
  View c(int paramInt)
  {
    return a.b(paramInt);
  }
  
  boolean c(View paramView)
  {
    return c.contains(paramView);
  }
  
  void d(int paramInt)
  {
    paramInt = e(paramInt);
    b.d(paramInt);
    a.c(paramInt);
  }
  
  void d(View paramView)
  {
    int i = a.a(paramView);
    if (i < 0) {
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView);
    }
    b.a(i);
    c.add(paramView);
  }
  
  boolean e(View paramView)
  {
    int i = a.a(paramView);
    if (i == -1)
    {
      if (c.remove(paramView)) {}
      return true;
    }
    if (b.c(i))
    {
      b.d(i);
      if (!c.remove(paramView)) {}
      a.a(i);
      return true;
    }
    return false;
  }
  
  public String toString()
  {
    return b.toString() + ", hidden list:" + c.size();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */