package com.facebook.share.internal;

import com.facebook.share.widget.LikeView.ObjectType;

class b$b
  implements Runnable
{
  private String a;
  private LikeView.ObjectType b;
  private b.c c;
  
  b$b(String paramString, LikeView.ObjectType paramObjectType, b.c paramc)
  {
    a = paramString;
    b = paramObjectType;
    c = paramc;
  }
  
  public void run()
  {
    b.b(a, b, c);
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */