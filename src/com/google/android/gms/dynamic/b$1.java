package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;

class b$1
  implements e<T>
{
  b$1(b paramb) {}
  
  public void a(T paramT)
  {
    b.a(a, paramT);
    paramT = b.a(a).iterator();
    while (paramT.hasNext()) {
      ((b.a)paramT.next()).a(b.b(a));
    }
    b.a(a).clear();
    b.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */