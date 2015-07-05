package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;

class a$1
  implements f<T>
{
  a$1(a parama) {}
  
  public void a(T paramT)
  {
    a.a(Ty, paramT);
    paramT = a.a(Ty).iterator();
    while (paramT.hasNext()) {
      ((a.a)paramT.next()).b(a.b(Ty));
    }
    a.a(Ty).clear();
    a.a(Ty, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */