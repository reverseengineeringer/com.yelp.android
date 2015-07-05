package bolts;

public class s
{
  private s(k paramk) {}
  
  public k<TResult> a()
  {
    return a;
  }
  
  public boolean a(Exception paramException)
  {
    synchronized (k.a(a))
    {
      if (k.b(a)) {
        return false;
      }
      k.a(a, true);
      k.a(a, paramException);
      k.a(a).notifyAll();
      k.c(a);
      return true;
    }
  }
  
  public boolean a(TResult paramTResult)
  {
    synchronized (k.a(a))
    {
      if (k.b(a)) {
        return false;
      }
      k.a(a, true);
      k.a(a, paramTResult);
      k.a(a).notifyAll();
      k.c(a);
      return true;
    }
  }
  
  public void b(Exception paramException)
  {
    if (!a(paramException)) {
      throw new IllegalStateException("Cannot set the error on a completed task.");
    }
  }
  
  public void b(TResult paramTResult)
  {
    if (!a(paramTResult)) {
      throw new IllegalStateException("Cannot set the result of a completed task.");
    }
  }
  
  public boolean b()
  {
    synchronized (k.a(a))
    {
      if (k.b(a)) {
        return false;
      }
      k.a(a, true);
      k.b(a, true);
      k.a(a).notifyAll();
      k.c(a);
      return true;
    }
  }
  
  public void c()
  {
    if (!b()) {
      throw new IllegalStateException("Cannot cancel a completed task.");
    }
  }
}

/* Location:
 * Qualified Name:     bolts.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */