package rx.internal.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.exceptions.a;
import rx.f;

public final class e
  implements f
{
  private LinkedList<f> a;
  private volatile boolean b;
  
  public e() {}
  
  public e(f paramf)
  {
    a = new LinkedList();
    a.add(paramf);
  }
  
  public e(f... paramVarArgs)
  {
    a = new LinkedList(Arrays.asList(paramVarArgs));
  }
  
  private static void a(Collection<f> paramCollection)
  {
    if (paramCollection == null) {
      return;
    }
    f localf = null;
    Iterator localIterator = paramCollection.iterator();
    paramCollection = localf;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label68;
      }
      localf = (f)localIterator.next();
      try
      {
        localf.unsubscribe();
      }
      catch (Throwable localThrowable)
      {
        if (paramCollection != null) {
          break label73;
        }
      }
    }
    paramCollection = new ArrayList();
    label68:
    label73:
    for (;;)
    {
      paramCollection.add(localThrowable);
      break;
      a.a(paramCollection);
      return;
    }
  }
  
  public void a(f paramf)
  {
    if (paramf.isUnsubscribed()) {
      return;
    }
    if (!b) {
      try
      {
        if (!b)
        {
          LinkedList localLinkedList2 = a;
          LinkedList localLinkedList1 = localLinkedList2;
          if (localLinkedList2 == null)
          {
            localLinkedList1 = new LinkedList();
            a = localLinkedList1;
          }
          localLinkedList1.add(paramf);
          return;
        }
      }
      finally {}
    }
    paramf.unsubscribe();
  }
  
  public void b(f paramf)
  {
    if (!b) {
      try
      {
        LinkedList localLinkedList = a;
        if ((b) || (localLinkedList == null)) {
          return;
        }
        boolean bool = localLinkedList.remove(paramf);
        if (bool)
        {
          paramf.unsubscribe();
          return;
        }
      }
      finally {}
    }
  }
  
  public boolean isUnsubscribed()
  {
    return b;
  }
  
  public void unsubscribe()
  {
    if (!b) {
      try
      {
        if (b) {
          return;
        }
        b = true;
        LinkedList localLinkedList = a;
        a = null;
        a(localLinkedList);
        return;
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */