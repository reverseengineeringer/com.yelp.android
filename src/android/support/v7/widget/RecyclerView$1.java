package android.support.v7.widget;

import android.support.v4.os.i;

class RecyclerView$1
  implements Runnable
{
  RecyclerView$1(RecyclerView paramRecyclerView) {}
  
  public void run()
  {
    if (!RecyclerView.a(a)) {}
    do
    {
      return;
      if (RecyclerView.b(a))
      {
        i.a("RV FullInvalidate");
        a.k();
        i.a();
        return;
      }
    } while (!a.b.d());
    i.a("RV PartialInvalidate");
    a.b();
    a.b.b();
    if (!RecyclerView.c(a)) {
      a.o();
    }
    a.a(true);
    i.a();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */