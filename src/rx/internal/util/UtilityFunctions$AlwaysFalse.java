package rx.internal.util;

import com.yelp.android.dg.e;

 enum UtilityFunctions$AlwaysFalse
  implements e<Object, Boolean>
{
  INSTANCE;
  
  private UtilityFunctions$AlwaysFalse() {}
  
  public Boolean call(Object paramObject)
  {
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     rx.internal.util.UtilityFunctions.AlwaysFalse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */