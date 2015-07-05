package com.yelp.common.base;

class b
  implements c
{
  public Class<?> loadFinalizer()
  {
    try
    {
      Class localClass = Class.forName("com.yelp.common.base.internal.Finalizer");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new AssertionError(localClassNotFoundException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.base.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */