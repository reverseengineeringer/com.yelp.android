package android.support.v4.widget;

import android.support.v4.view.ai;

class a$b
  implements Runnable
{
  private a$b(a parama) {}
  
  public void run()
  {
    if (!a.a(a)) {
      return;
    }
    if (a.b(a))
    {
      a.a(a, false);
      a.c(a).a();
    }
    a.a locala = a.c(a);
    if ((locala.c()) || (!a.d(a)))
    {
      a.b(a, false);
      return;
    }
    if (a.e(a))
    {
      a.c(a, false);
      a.f(a);
    }
    locala.d();
    int i = locala.g();
    int j = locala.h();
    a.a(i, j);
    ai.a(a.g(a), this);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */