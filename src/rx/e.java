package rx;

public abstract class e<T>
  implements b<T>, f
{
  private static final Long a = Long.valueOf(Long.MIN_VALUE);
  private final rx.internal.util.e b;
  private final e<?> c;
  private c d;
  private long e = a.longValue();
  
  protected e()
  {
    this(null, false);
  }
  
  protected e(e<?> parame)
  {
    this(parame, true);
  }
  
  protected e(e<?> parame, boolean paramBoolean)
  {
    c = parame;
    if ((paramBoolean) && (parame != null)) {}
    for (parame = b;; parame = new rx.internal.util.e())
    {
      b = parame;
      return;
    }
  }
  
  private void b(long paramLong)
  {
    if (e == a.longValue())
    {
      e = paramLong;
      return;
    }
    paramLong = e + paramLong;
    if (paramLong < 0L)
    {
      e = Long.MAX_VALUE;
      return;
    }
    e = paramLong;
  }
  
  protected final void a(long paramLong)
  {
    if (paramLong < 0L) {
      throw new IllegalArgumentException("number requested cannot be negative: " + paramLong);
    }
    try
    {
      if (d != null)
      {
        c localc = d;
        localc.request(paramLong);
        return;
      }
      b(paramLong);
      return;
    }
    finally {}
  }
  
  public void a(c paramc)
  {
    int j = 0;
    long l;
    try
    {
      l = e;
      d = paramc;
      int i = j;
      if (c != null)
      {
        i = j;
        if (l == a.longValue()) {
          i = 1;
        }
      }
      if (i != 0)
      {
        c.a(d);
        return;
      }
    }
    finally {}
    if (l == a.longValue())
    {
      d.request(Long.MAX_VALUE);
      return;
    }
    d.request(l);
  }
  
  public final void a(f paramf)
  {
    b.a(paramf);
  }
  
  public void b() {}
  
  public final boolean isUnsubscribed()
  {
    return b.isUnsubscribed();
  }
  
  public final void unsubscribe()
  {
    b.unsubscribe();
  }
}

/* Location:
 * Qualified Name:     rx.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */