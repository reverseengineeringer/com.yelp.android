package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

@fv
public class hr
{
  public static <A, B> hs<B> a(final hs<A> paramhs, final a<A, B> parama)
  {
    hp localhp = new hp();
    paramhs.a(new Runnable()
    {
      public void run()
      {
        try
        {
          a.b(parama.a(paramhs.get()));
          return;
        }
        catch (ExecutionException localExecutionException)
        {
          a.cancel(true);
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          for (;;) {}
        }
        catch (CancellationException localCancellationException)
        {
          for (;;) {}
        }
      }
    });
    return localhp;
  }
  
  public static <V> hs<List<V>> a(final List<hs<V>> paramList)
  {
    final hp localhp = new hp();
    final int i = paramList.size();
    AtomicInteger localAtomicInteger = new AtomicInteger(0);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext()) {
      ((hs)localIterator.next()).a(new Runnable()
      {
        public void run()
        {
          if (a.incrementAndGet() >= i) {}
          try
          {
            localhp.b(hr.b(paramList));
            return;
          }
          catch (InterruptedException localInterruptedException)
          {
            gz.d("Unable to convert list of futures to a future of list", localInterruptedException);
            return;
          }
          catch (ExecutionException localExecutionException)
          {
            for (;;) {}
          }
        }
      });
    }
    return localhp;
  }
  
  private static <V> List<V> c(List<hs<V>> paramList)
    throws ExecutionException, InterruptedException
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Object localObject = ((hs)paramList.next()).get();
      if (localObject != null) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public static abstract interface a<D, R>
  {
    public abstract R a(D paramD);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */