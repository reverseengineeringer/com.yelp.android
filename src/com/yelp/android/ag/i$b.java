package com.yelp.android.ag;

import com.yelp.android.ao.h;
import com.yelp.android.u.d;
import java.util.Queue;

class i$b
{
  private final Queue<d> a = h.a(0);
  
  public d a(byte[] paramArrayOfByte)
  {
    try
    {
      d locald2 = (d)a.poll();
      d locald1 = locald2;
      if (locald2 == null) {
        locald1 = new d();
      }
      paramArrayOfByte = locald1.a(paramArrayOfByte);
      return paramArrayOfByte;
    }
    finally {}
  }
  
  public void a(d paramd)
  {
    try
    {
      paramd.a();
      a.offer(paramd);
      return;
    }
    finally
    {
      paramd = finally;
      throw paramd;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.i.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */