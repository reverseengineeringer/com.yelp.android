package rx.internal.schedulers;

final class a$b
{
  final int a;
  final a.c[] b;
  long c;
  
  a$b(int paramInt)
  {
    a = paramInt;
    b = new a.c[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      b[i] = new a.c(a.b);
      i += 1;
    }
  }
  
  public a.c a()
  {
    int i = a;
    if (i == 0) {
      return a.d;
    }
    a.c[] arrayOfc = b;
    long l = c;
    c = (1L + l);
    return arrayOfc[((int)(l % i))];
  }
  
  public void b()
  {
    a.c[] arrayOfc = b;
    int j = arrayOfc.length;
    int i = 0;
    while (i < j)
    {
      arrayOfc[i].unsubscribe();
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.schedulers.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */