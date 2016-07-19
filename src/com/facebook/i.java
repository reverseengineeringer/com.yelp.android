package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class i
  extends AbstractList<GraphRequest>
{
  private static AtomicInteger a = new AtomicInteger();
  private Handler b;
  private List<GraphRequest> c = new ArrayList();
  private int d = 0;
  private final String e = Integer.valueOf(a.incrementAndGet()).toString();
  private List<a> f = new ArrayList();
  private String g;
  
  public i()
  {
    c = new ArrayList();
  }
  
  public i(Collection<GraphRequest> paramCollection)
  {
    c = new ArrayList(paramCollection);
  }
  
  public i(GraphRequest... paramVarArgs)
  {
    c = Arrays.asList(paramVarArgs);
  }
  
  public int a()
  {
    return d;
  }
  
  public final GraphRequest a(int paramInt)
  {
    return (GraphRequest)c.get(paramInt);
  }
  
  public final void a(int paramInt, GraphRequest paramGraphRequest)
  {
    c.add(paramInt, paramGraphRequest);
  }
  
  final void a(Handler paramHandler)
  {
    b = paramHandler;
  }
  
  public void a(a parama)
  {
    if (!f.contains(parama)) {
      f.add(parama);
    }
  }
  
  public final boolean a(GraphRequest paramGraphRequest)
  {
    return c.add(paramGraphRequest);
  }
  
  public final GraphRequest b(int paramInt)
  {
    return (GraphRequest)c.remove(paramInt);
  }
  
  public final GraphRequest b(int paramInt, GraphRequest paramGraphRequest)
  {
    return (GraphRequest)c.set(paramInt, paramGraphRequest);
  }
  
  final String b()
  {
    return e;
  }
  
  final Handler c()
  {
    return b;
  }
  
  public final void clear()
  {
    c.clear();
  }
  
  final List<GraphRequest> d()
  {
    return c;
  }
  
  final List<a> e()
  {
    return f;
  }
  
  public final String f()
  {
    return g;
  }
  
  public final List<GraphResponse> g()
  {
    return i();
  }
  
  public final h h()
  {
    return j();
  }
  
  List<GraphResponse> i()
  {
    return GraphRequest.b(this);
  }
  
  h j()
  {
    return GraphRequest.c(this);
  }
  
  public final int size()
  {
    return c.size();
  }
  
  public static abstract interface a
  {
    public abstract void a(i parami);
  }
  
  public static abstract interface b
    extends i.a
  {
    public abstract void a(i parami, long paramLong1, long paramLong2);
  }
}

/* Location:
 * Qualified Name:     com.facebook.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */