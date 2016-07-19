package android.support.v7.widget;

class RecyclerView$5
  implements a.a
{
  RecyclerView$5(RecyclerView paramRecyclerView) {}
  
  public RecyclerView.u a(int paramInt)
  {
    RecyclerView.u localu = a.a(paramInt, true);
    if (localu == null) {}
    while (a.c.c(a)) {
      return null;
    }
    return localu;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2, true);
    a.f = true;
    RecyclerView.r.a(a.e, paramInt2);
  }
  
  public void a(int paramInt1, int paramInt2, Object paramObject)
  {
    a.a(paramInt1, paramInt2, paramObject);
    a.g = true;
  }
  
  public void a(a.b paramb)
  {
    c(paramb);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2, false);
    a.f = true;
  }
  
  public void b(a.b paramb)
  {
    c(paramb);
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    a.e(paramInt1, paramInt2);
    a.f = true;
  }
  
  void c(a.b paramb)
  {
    switch (a)
    {
    default: 
      return;
    case 0: 
      RecyclerView.d(a).a(a, b, d);
      return;
    case 1: 
      RecyclerView.d(a).b(a, b, d);
      return;
    case 2: 
      RecyclerView.d(a).a(a, b, d, c);
      return;
    }
    RecyclerView.d(a).a(a, b, d, 1);
  }
  
  public void d(int paramInt1, int paramInt2)
  {
    a.d(paramInt1, paramInt2);
    a.f = true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */