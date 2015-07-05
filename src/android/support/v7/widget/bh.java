package android.support.v7.widget;

class bh
  implements p
{
  bh(RecyclerView paramRecyclerView) {}
  
  public ce a(int paramInt)
  {
    ce localce = a.a(paramInt, true);
    if (localce == null) {}
    while (a.c.c(a)) {
      return null;
    }
    return localce;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2, true);
    a.f = true;
    cb.a(a.e, paramInt2);
  }
  
  public void a(q paramq)
  {
    c(paramq);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    a.a(paramInt1, paramInt2, false);
    a.f = true;
  }
  
  public void b(q paramq)
  {
    c(paramq);
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    a.f(paramInt1, paramInt2);
    a.g = true;
  }
  
  void c(q paramq)
  {
    switch (a)
    {
    default: 
      return;
    case 0: 
      RecyclerView.d(a).a(a, b, c);
      return;
    case 1: 
      RecyclerView.d(a).b(a, b, c);
      return;
    case 2: 
      RecyclerView.d(a).c(a, b, c);
      return;
    }
    RecyclerView.d(a).a(a, b, c, 1);
  }
  
  public void d(int paramInt1, int paramInt2)
  {
    a.e(paramInt1, paramInt2);
    a.f = true;
  }
  
  public void e(int paramInt1, int paramInt2)
  {
    a.d(paramInt1, paramInt2);
    a.f = true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */