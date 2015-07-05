package android.support.v7.widget;

import com.yelp.android.c.h;

class bd
  implements Runnable
{
  bd(RecyclerView paramRecyclerView) {}
  
  public void run()
  {
    if (!RecyclerView.a(a)) {}
    do
    {
      return;
      if (RecyclerView.b(a))
      {
        h.a("RV FullInvalidate");
        a.j();
        h.a();
        return;
      }
    } while (!a.b.d());
    h.a("RV PartialInvalidate");
    a.b();
    a.b.b();
    if (!RecyclerView.c(a)) {
      a.n();
    }
    a.a(true);
    h.a();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */