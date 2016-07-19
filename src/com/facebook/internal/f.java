package com.facebook.internal;

import android.app.Activity;
import android.support.v4.app.Fragment;
import android.util.Log;
import com.facebook.FacebookException;
import com.facebook.g;
import java.util.Iterator;
import java.util.List;

public abstract class f<CONTENT, RESULT>
{
  protected static final Object a = new Object();
  private final Activity b;
  private final Fragment c;
  private List<f<CONTENT, RESULT>.a> d;
  private int e;
  
  protected f(Activity paramActivity, int paramInt)
  {
    v.a(paramActivity, "activity");
    b = paramActivity;
    c = null;
    e = paramInt;
  }
  
  protected f(Fragment paramFragment, int paramInt)
  {
    v.a(paramFragment, "fragment");
    c = paramFragment;
    b = null;
    e = paramInt;
    if (paramFragment.getActivity() == null) {
      throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity");
    }
  }
  
  private a b(CONTENT paramCONTENT, Object paramObject)
  {
    int i;
    a locala;
    if (paramObject == a)
    {
      i = 1;
      Iterator localIterator = e().iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        locala = (a)localIterator.next();
      } while (((i == 0) && (!u.a(locala.a(), paramObject))) || (!locala.a(paramCONTENT)));
    }
    for (;;)
    {
      try
      {
        paramCONTENT = locala.b(paramCONTENT);
        paramObject = paramCONTENT;
        if (paramCONTENT == null)
        {
          paramObject = d();
          e.a((a)paramObject);
        }
        return (a)paramObject;
        i = 0;
      }
      catch (FacebookException paramObject)
      {
        paramCONTENT = d();
        e.a(paramCONTENT, (FacebookException)paramObject);
        continue;
      }
      paramCONTENT = null;
    }
  }
  
  private List<f<CONTENT, RESULT>.a> e()
  {
    if (d == null) {
      d = c();
    }
    return d;
  }
  
  public int a()
  {
    return e;
  }
  
  public void a(CONTENT paramCONTENT)
  {
    a(paramCONTENT, a);
  }
  
  protected void a(CONTENT paramCONTENT, Object paramObject)
  {
    paramCONTENT = b(paramCONTENT, paramObject);
    if (paramCONTENT != null) {
      if (c != null) {
        e.a(paramCONTENT, c);
      }
    }
    do
    {
      return;
      e.a(paramCONTENT, b);
      return;
      Log.e("FacebookDialog", "No code path should ever result in a null appCall");
    } while (!g.b());
    throw new IllegalStateException("No code path should ever result in a null appCall");
  }
  
  protected Activity b()
  {
    if (b != null) {
      return b;
    }
    if (c != null) {
      return c.getActivity();
    }
    return null;
  }
  
  protected abstract List<f<CONTENT, RESULT>.a> c();
  
  protected abstract a d();
  
  protected abstract class a
  {
    protected a() {}
    
    public Object a()
    {
      return f.a;
    }
    
    public abstract boolean a(CONTENT paramCONTENT);
    
    public abstract a b(CONTENT paramCONTENT);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */