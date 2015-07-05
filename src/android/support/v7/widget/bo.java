package android.support.v7.widget;

class bo
  implements bn
{
  private bo(RecyclerView paramRecyclerView) {}
  
  public void a(ce paramce)
  {
    paramce.a(true);
    if ((!RecyclerView.c(a, a)) && (paramce.q())) {
      a.removeDetachedView(a, false);
    }
  }
  
  public void b(ce paramce)
  {
    paramce.a(true);
    if (!ce.b(paramce)) {
      RecyclerView.c(a, a);
    }
  }
  
  public void c(ce paramce)
  {
    paramce.a(true);
    if (!ce.b(paramce)) {
      RecyclerView.c(a, a);
    }
  }
  
  public void d(ce paramce)
  {
    paramce.a(true);
    if ((g != null) && (h == null))
    {
      g = null;
      paramce.a(-65, ce.c(paramce));
    }
    h = null;
    if (!ce.b(paramce)) {
      RecyclerView.c(a, a);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */