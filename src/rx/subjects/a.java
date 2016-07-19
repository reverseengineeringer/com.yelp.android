package rx.subjects;

import java.util.ArrayList;
import java.util.List;
import rx.a.a;
import rx.internal.operators.NotificationLite;

public final class a<T>
  extends b<T, T>
{
  final SubjectSubscriptionManager<T> c;
  private final NotificationLite<T> d = NotificationLite.a();
  
  protected a(a.a<T> parama, SubjectSubscriptionManager<T> paramSubjectSubscriptionManager)
  {
    super(parama);
    c = paramSubjectSubscriptionManager;
  }
  
  public static <T> a<T> b()
  {
    SubjectSubscriptionManager localSubjectSubscriptionManager = new SubjectSubscriptionManager();
    onTerminated = new com.yelp.android.dg.b()
    {
      public void a(SubjectSubscriptionManager.b<T> paramAnonymousb)
      {
        paramAnonymousb.b(a.getLatest(), a.nl);
      }
    };
    return new a(localSubjectSubscriptionManager, localSubjectSubscriptionManager);
  }
  
  public void a()
  {
    if (c.active)
    {
      Object localObject = d.b();
      SubjectSubscriptionManager.b[] arrayOfb = c.terminate(localObject);
      int j = arrayOfb.length;
      int i = 0;
      while (i < j)
      {
        arrayOfb[i].a(localObject, c.nl);
        i += 1;
      }
    }
  }
  
  public void a(T paramT)
  {
    SubjectSubscriptionManager.b[] arrayOfb = c.observers();
    int j = arrayOfb.length;
    int i = 0;
    while (i < j)
    {
      arrayOfb[i].a(paramT);
      i += 1;
    }
  }
  
  public void a(Throwable paramThrowable)
  {
    if (c.active)
    {
      Object localObject2 = d.a(paramThrowable);
      SubjectSubscriptionManager.b[] arrayOfb = c.terminate(localObject2);
      int j = arrayOfb.length;
      int i = 0;
      paramThrowable = null;
      for (;;)
      {
        if (i < j)
        {
          Object localObject1 = arrayOfb[i];
          try
          {
            ((SubjectSubscriptionManager.b)localObject1).a(localObject2, c.nl);
            i += 1;
          }
          catch (Throwable localThrowable)
          {
            for (;;)
            {
              localObject1 = paramThrowable;
              if (paramThrowable == null) {
                localObject1 = new ArrayList();
              }
              ((List)localObject1).add(localThrowable);
              paramThrowable = (Throwable)localObject1;
            }
          }
        }
      }
      rx.exceptions.a.a(paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     rx.subjects.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */