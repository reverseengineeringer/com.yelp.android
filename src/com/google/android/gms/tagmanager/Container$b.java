package com.google.android.gms.tagmanager;

import java.util.Map;

class Container$b
  implements s.a
{
  private Container$b(Container paramContainer) {}
  
  public Object b(String paramString, Map<String, Object> paramMap)
  {
    Container.FunctionCallTagCallback localFunctionCallTagCallback = aqt.cq(paramString);
    if (localFunctionCallTagCallback != null) {
      localFunctionCallTagCallback.execute(paramString, paramMap);
    }
    return di.ra();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.Container.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */