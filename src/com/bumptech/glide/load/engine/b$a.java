package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.b;
import java.util.concurrent.ExecutorService;

class b$a
{
  private final ExecutorService a;
  private final ExecutorService b;
  private final d c;
  
  public b$a(ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, d paramd)
  {
    a = paramExecutorService1;
    b = paramExecutorService2;
    c = paramd;
  }
  
  public c a(b paramb, boolean paramBoolean)
  {
    return new c(paramb, a, b, paramBoolean, c);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */