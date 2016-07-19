package com.bumptech.glide.request;

class d$a
{
  public void a(Object paramObject)
  {
    paramObject.notifyAll();
  }
  
  public void a(Object paramObject, long paramLong)
    throws InterruptedException
  {
    paramObject.wait(paramLong);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.request.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */