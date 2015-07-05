package com.yelp.android.ui;

import android.view.WindowManager.LayoutParams;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

class v
  implements InvocationHandler
{
  private final int a;
  private final Object b;
  
  public v(int paramInt, Object paramObject)
  {
    a = paramInt;
    b = paramObject;
  }
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    int j;
    int i;
    if (paramMethod.getName().equals("relayout"))
    {
      j = paramArrayOfObject.length;
      i = 0;
    }
    for (;;)
    {
      if (i < j)
      {
        paramObject = paramArrayOfObject[i];
        if ((paramObject instanceof WindowManager.LayoutParams)) {
          type = a;
        }
      }
      else
      {
        return paramMethod.invoke(b, paramArrayOfObject);
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */