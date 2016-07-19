package android.support.v7.widget;

class RecyclerView$f
  implements RecyclerView.e.b
{
  private RecyclerView$f(RecyclerView paramRecyclerView) {}
  
  public void a(RecyclerView.u paramu)
  {
    paramu.a(true);
    if ((!RecyclerView.c(a, a)) && (paramu.q())) {
      a.removeDetachedView(a, false);
    }
  }
  
  public void b(RecyclerView.u paramu)
  {
    paramu.a(true);
    if (!RecyclerView.u.d(paramu)) {
      RecyclerView.c(a, a);
    }
  }
  
  public void c(RecyclerView.u paramu)
  {
    paramu.a(true);
    if (!RecyclerView.u.d(paramu)) {
      RecyclerView.c(a, a);
    }
  }
  
  public void d(RecyclerView.u paramu)
  {
    paramu.a(true);
    if ((g != null) && (h == null))
    {
      g = null;
      paramu.a(-65, RecyclerView.u.e(paramu));
    }
    h = null;
    if (!RecyclerView.u.d(paramu)) {
      RecyclerView.c(a, a);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */