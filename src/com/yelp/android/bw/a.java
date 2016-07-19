package com.yelp.android.bw;

import android.os.Bundle;
import com.yelp.android.bx.b;
import com.yelp.android.bx.c;

public abstract class a<V extends b, M extends c>
  implements com.yelp.android.bx.a
{
  protected final V a;
  protected final M b;
  private boolean c;
  
  public a(V paramV, M paramM)
  {
    a = ((b)com.yelp.android.by.a.a(paramV));
    b = ((c)com.yelp.android.by.a.a(paramM));
  }
  
  public void a()
  {
    c = true;
  }
  
  public void a(Bundle paramBundle)
  {
    b.a(paramBundle);
  }
  
  public void b()
  {
    if (!c) {
      throw new IllegalStateException("You need to manually call Presenter#onCreate once your View is setup!");
    }
  }
  
  public void c() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.bw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */