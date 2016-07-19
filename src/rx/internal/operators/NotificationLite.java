package rx.internal.operators;

import java.io.Serializable;
import rx.b;

public final class NotificationLite<T>
{
  private static final NotificationLite a = new NotificationLite();
  private static final Object b = new Serializable()
  {
    private static final long serialVersionUID = 1L;
    
    public String toString()
    {
      return "Notification=>Completed";
    }
  };
  private static final Object c = new Serializable()
  {
    private static final long serialVersionUID = 2L;
    
    public String toString()
    {
      return "Notification=>NULL";
    }
  };
  
  public static <T> NotificationLite<T> a()
  {
    return a;
  }
  
  public Object a(T paramT)
  {
    Object localObject = paramT;
    if (paramT == null) {
      localObject = c;
    }
    return localObject;
  }
  
  public Object a(Throwable paramThrowable)
  {
    return new OnErrorSentinel(paramThrowable);
  }
  
  public boolean a(b<? super T> paramb, Object paramObject)
  {
    if (paramObject == b)
    {
      paramb.a();
      return true;
    }
    if (paramObject == c)
    {
      paramb.a(null);
      return false;
    }
    if (paramObject != null)
    {
      if (paramObject.getClass() == OnErrorSentinel.class)
      {
        paramb.a(e);
        return true;
      }
      paramb.a(paramObject);
      return false;
    }
    throw new IllegalArgumentException("The lite notification can not be null");
  }
  
  public Object b()
  {
    return b;
  }
  
  public T b(Object paramObject)
  {
    Object localObject = paramObject;
    if (paramObject == c) {
      localObject = null;
    }
    return (T)localObject;
  }
  
  private static class OnErrorSentinel
    implements Serializable
  {
    private static final long serialVersionUID = 3L;
    final Throwable e;
    
    public OnErrorSentinel(Throwable paramThrowable)
    {
      e = paramThrowable;
    }
    
    public String toString()
    {
      return "Notification=>Error:" + e;
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.operators.NotificationLite
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */