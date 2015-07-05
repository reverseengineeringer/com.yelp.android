package com.google.android.gms.internal;

import java.util.Arrays;

public final class jv
{
  public static boolean equal(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public static jv.a h(Object paramObject)
  {
    return new jv.a(paramObject, null);
  }
  
  public static int hashCode(Object... paramVarArgs)
  {
    return Arrays.hashCode(paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */