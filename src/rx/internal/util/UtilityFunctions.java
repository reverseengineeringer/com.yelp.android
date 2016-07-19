package rx.internal.util;

import com.yelp.android.dg.d;
import com.yelp.android.dg.e;

public final class UtilityFunctions
{
  private static final a a = new a();
  
  private static enum AlwaysFalse
    implements e<Object, Boolean>
  {
    INSTANCE;
    
    private AlwaysFalse() {}
    
    public Boolean call(Object paramObject)
    {
      return Boolean.valueOf(false);
    }
  }
  
  private static enum AlwaysTrue
    implements e<Object, Boolean>
  {
    INSTANCE;
    
    private AlwaysTrue() {}
    
    public Boolean call(Object paramObject)
    {
      return Boolean.valueOf(true);
    }
  }
  
  private static final class a<T0, T1, T2, T3, T4, T5, T6, T7, T8, T9, R>
    implements d<R>, e<T0, R>
  {
    public R call()
    {
      return null;
    }
    
    public R call(T0 paramT0)
    {
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.UtilityFunctions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */