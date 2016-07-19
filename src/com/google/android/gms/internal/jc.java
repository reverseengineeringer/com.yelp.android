package com.google.android.gms.internal;

public class jc<T>
{
  public final T a;
  public final u.a b;
  public final zzr c;
  public boolean d = false;
  
  private jc(zzr paramzzr)
  {
    a = null;
    b = null;
    c = paramzzr;
  }
  
  private jc(T paramT, u.a parama)
  {
    a = paramT;
    b = parama;
    c = null;
  }
  
  public static <T> jc<T> a(zzr paramzzr)
  {
    return new jc(paramzzr);
  }
  
  public static <T> jc<T> a(T paramT, u.a parama)
  {
    return new jc(paramT, parama);
  }
  
  public boolean a()
  {
    return c == null;
  }
  
  public static abstract interface a
  {
    public abstract void a(zzr paramzzr);
  }
  
  public static abstract interface b<T>
  {
    public abstract void a(T paramT);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */