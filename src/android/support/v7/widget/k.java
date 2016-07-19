package android.support.v7.widget;

import android.view.View;

class k
{
  static int a(RecyclerView.r paramr, i parami, View paramView1, View paramView2, RecyclerView.i parami1, boolean paramBoolean)
  {
    if ((parami1.r() == 0) || (paramr.e() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return Math.abs(parami1.d(paramView1) - parami1.d(paramView2)) + 1;
    }
    int i = parami.b(paramView2);
    int j = parami.a(paramView1);
    return Math.min(parami.f(), i - j);
  }
  
  static int a(RecyclerView.r paramr, i parami, View paramView1, View paramView2, RecyclerView.i parami1, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 0;
    int j = i;
    if (parami1.r() != 0)
    {
      j = i;
      if (paramr.e() != 0)
      {
        j = i;
        if (paramView1 != null)
        {
          if (paramView2 != null) {
            break label45;
          }
          j = i;
        }
      }
    }
    return j;
    label45:
    i = Math.min(parami1.d(paramView1), parami1.d(paramView2));
    j = Math.max(parami1.d(paramView1), parami1.d(paramView2));
    if (paramBoolean2) {}
    for (i = Math.max(0, paramr.e() - j - 1);; i = Math.max(0, i))
    {
      j = i;
      if (!paramBoolean1) {
        break;
      }
      j = Math.abs(parami.b(paramView2) - parami.a(paramView1));
      int k = Math.abs(parami1.d(paramView1) - parami1.d(paramView2));
      float f = j / (k + 1);
      return Math.round(i * f + (parami.c() - parami.a(paramView1)));
    }
  }
  
  static int b(RecyclerView.r paramr, i parami, View paramView1, View paramView2, RecyclerView.i parami1, boolean paramBoolean)
  {
    if ((parami1.r() == 0) || (paramr.e() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return paramr.e();
    }
    int i = parami.b(paramView2);
    int j = parami.a(paramView1);
    int k = Math.abs(parami1.d(paramView1) - parami1.d(paramView2));
    return (int)((i - j) / (k + 1) * paramr.e());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */