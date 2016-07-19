package android.support.v7.widget;

class a$b
{
  int a;
  int b;
  Object c;
  int d;
  
  a$b(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    a = paramInt1;
    b = paramInt2;
    d = paramInt3;
    c = paramObject;
  }
  
  String a()
  {
    switch (a)
    {
    default: 
      return "??";
    case 0: 
      return "add";
    case 1: 
      return "rm";
    case 2: 
      return "up";
    }
    return "mv";
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        do
        {
          return true;
          if ((paramObject == null) || (getClass() != paramObject.getClass())) {
            return false;
          }
          paramObject = (b)paramObject;
          if (a != a) {
            return false;
          }
        } while ((a == 3) && (Math.abs(d - b) == 1) && (d == b) && (b == d));
        if (d != d) {
          return false;
        }
        if (b != b) {
          return false;
        }
        if (c == null) {
          break;
        }
      } while (c.equals(c));
      return false;
    } while (c == null);
    return false;
  }
  
  public int hashCode()
  {
    return (a * 31 + b) * 31 + d;
  }
  
  public String toString()
  {
    return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + b + "c:" + d + ",p:" + c + "]";
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */