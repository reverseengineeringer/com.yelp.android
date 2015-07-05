package android.support.v7.widget;

import android.view.View;

class ch
{
  static int a(cb paramcb, ba paramba, View paramView1, View paramView2, br parambr, boolean paramBoolean)
  {
    if ((parambr.q() == 0) || (paramcb.e() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return Math.abs(parambr.d(paramView1) - parambr.d(paramView2)) + 1;
    }
    int i = paramba.b(paramView2);
    int j = paramba.a(paramView1);
    return Math.min(paramba.f(), i - j);
  }
  
  static int a(cb paramcb, ba paramba, View paramView1, View paramView2, br parambr, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = 0;
    int j = i;
    if (parambr.q() != 0)
    {
      j = i;
      if (paramcb.e() != 0)
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
    i = Math.min(parambr.d(paramView1), parambr.d(paramView2));
    j = Math.max(parambr.d(paramView1), parambr.d(paramView2));
    if (paramBoolean2) {}
    for (i = Math.max(0, paramcb.e() - j - 1);; i = Math.max(0, i))
    {
      j = i;
      if (!paramBoolean1) {
        break;
      }
      j = Math.abs(paramba.b(paramView2) - paramba.a(paramView1));
      int k = Math.abs(parambr.d(paramView1) - parambr.d(paramView2));
      float f = j / (k + 1);
      return Math.round(i * f + (paramba.c() - paramba.a(paramView1)));
    }
  }
  
  static int b(cb paramcb, ba paramba, View paramView1, View paramView2, br parambr, boolean paramBoolean)
  {
    if ((parambr.q() == 0) || (paramcb.e() == 0) || (paramView1 == null) || (paramView2 == null)) {
      return 0;
    }
    if (!paramBoolean) {
      return paramcb.e();
    }
    int i = paramba.b(paramView2);
    int j = paramba.a(paramView1);
    int k = Math.abs(parambr.d(paramView1) - parambr.d(paramView2));
    return (int)((i - j) / (k + 1) * paramcb.e());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */