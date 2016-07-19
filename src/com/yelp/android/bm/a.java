package com.yelp.android.bm;

import android.content.Context;
import com.path.android.jobqueue.b.a;
import com.path.android.jobqueue.e;
import com.yelp.android.bq.b;
import com.yelp.android.bq.c;

public class a
{
  private String a = "default_job_manager";
  private int b = 5;
  private int c = 0;
  private int d = 15;
  private int e = 3;
  private e f;
  private com.yelp.android.bn.a g;
  private b h;
  private com.yelp.android.bp.a i;
  private boolean j = false;
  
  public String a()
  {
    return a;
  }
  
  public e b()
  {
    return f;
  }
  
  public com.yelp.android.bn.a c()
  {
    return g;
  }
  
  public int d()
  {
    return d;
  }
  
  public b e()
  {
    return h;
  }
  
  public int f()
  {
    return b;
  }
  
  public int g()
  {
    return c;
  }
  
  public com.yelp.android.bp.a h()
  {
    return i;
  }
  
  public int i()
  {
    return e;
  }
  
  public boolean j()
  {
    return j;
  }
  
  public static final class a
  {
    private a a = new a(null);
    private Context b;
    
    public a(Context paramContext)
    {
      b = paramContext.getApplicationContext();
    }
    
    public a a(int paramInt)
    {
      a.a(a, paramInt);
      return this;
    }
    
    public a a(com.yelp.android.bp.a parama)
    {
      a.a(a, parama);
      return this;
    }
    
    public a a()
    {
      if (a.a(a) == null) {
        a.a(a, new b.a());
      }
      if (a.b(a) == null) {
        a.a(a, new c(b));
      }
      return a;
    }
    
    public a b(int paramInt)
    {
      a.b(a, paramInt);
      return this;
    }
    
    public a c(int paramInt)
    {
      a.c(a, paramInt);
      return this;
    }
    
    public a d(int paramInt)
    {
      a.d(a, paramInt);
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */