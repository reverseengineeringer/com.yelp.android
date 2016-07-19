package android.support.v7.widget;

class f$a
{
  public RecyclerView.u a;
  public RecyclerView.u b;
  public int c;
  public int d;
  public int e;
  public int f;
  
  private f$a(RecyclerView.u paramu1, RecyclerView.u paramu2)
  {
    a = paramu1;
    b = paramu2;
  }
  
  private f$a(RecyclerView.u paramu1, RecyclerView.u paramu2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this(paramu1, paramu2);
    c = paramInt1;
    d = paramInt2;
    e = paramInt3;
    f = paramInt4;
  }
  
  public String toString()
  {
    return "ChangeInfo{oldHolder=" + a + ", newHolder=" + b + ", fromX=" + c + ", fromY=" + d + ", toX=" + e + ", toY=" + f + '}';
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */