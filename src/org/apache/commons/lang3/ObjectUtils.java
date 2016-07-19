package org.apache.commons.lang3;

import java.io.Serializable;

public class ObjectUtils
{
  public static final Null a = new Null();
  
  @Deprecated
  public static String a(Object paramObject)
  {
    if (paramObject == null) {
      return "";
    }
    return paramObject.toString();
  }
  
  @Deprecated
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == paramObject2) {
      return true;
    }
    if ((paramObject1 == null) || (paramObject2 == null)) {
      return false;
    }
    return paramObject1.equals(paramObject2);
  }
  
  public static class Null
    implements Serializable
  {
    private static final long serialVersionUID = 7092611880189329093L;
    
    private Object readResolve()
    {
      return ObjectUtils.a;
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.commons.lang3.ObjectUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */