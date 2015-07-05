package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.b;
import java.util.concurrent.ExecutorService;

class e
{
  private final ExecutorService a;
  private final ExecutorService b;
  private final m c;
  
  public e(ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, m paramm)
  {
    a = paramExecutorService1;
    b = paramExecutorService2;
    c = paramm;
  }
  
  public i a(b paramb, boolean paramBoolean)
  {
    return new i(paramb, a, b, paramBoolean, c);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */