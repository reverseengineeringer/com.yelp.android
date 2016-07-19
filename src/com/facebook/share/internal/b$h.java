package com.facebook.share.internal;

import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

class b$h
  implements Runnable
{
  private static ArrayList<String> a = new ArrayList();
  private String b;
  private boolean c;
  
  b$h(String paramString, boolean paramBoolean)
  {
    b = paramString;
    c = paramBoolean;
  }
  
  public void run()
  {
    if (b != null)
    {
      a.remove(b);
      a.add(0, b);
    }
    if ((c) && (a.size() >= 128)) {
      while (64 < a.size())
      {
        String str = (String)a.remove(a.size() - 1);
        b.h().remove(str);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */