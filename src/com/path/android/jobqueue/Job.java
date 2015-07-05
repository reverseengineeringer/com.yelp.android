package com.path.android.jobqueue;

import java.io.Serializable;

public abstract class Job
  extends BaseJob
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private transient int a;
  private transient long b;
  
  protected Job(h paramh)
  {
    super(paramh.c(), paramh.e(), paramh.d());
    a = paramh.f();
    b = paramh.g();
  }
  
  public final long getDelayInMs()
  {
    return b;
  }
  
  public final int getPriority()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.Job
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */