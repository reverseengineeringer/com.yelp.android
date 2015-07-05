package com.yelp.android.ab;

import com.yelp.android.ai.f;
import com.yelp.android.p.e;
import java.util.Queue;

class q
{
  private final Queue<e> a = f.a(0);
  
  public e a(byte[] paramArrayOfByte)
  {
    try
    {
      e locale2 = (e)a.poll();
      e locale1 = locale2;
      if (locale2 == null) {
        locale1 = new e();
      }
      paramArrayOfByte = locale1.a(paramArrayOfByte);
      return paramArrayOfByte;
    }
    finally {}
  }
  
  public void a(e parame)
  {
    try
    {
      parame.a();
      a.offer(parame);
      return;
    }
    finally
    {
      parame = finally;
      throw parame;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */