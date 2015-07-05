package com.yelp.android.services.job;

import com.path.android.jobqueue.Job;
import com.path.android.jobqueue.h;

public abstract class YelpJob
  extends Job
{
  protected static final int JOB_PRIORITY_HIGH = 3;
  protected static final int JOB_PRIORITY_LOW = 1;
  protected static final int JOB_PRIORITY_MEDIUM = 2;
  private final transient h a;
  private final long mCreationTimeMillis;
  
  protected YelpJob(h paramh)
  {
    super(paramh);
    a = paramh;
    mCreationTimeMillis = System.currentTimeMillis();
  }
  
  public long getCreationTimeMillis()
  {
    return mCreationTimeMillis;
  }
  
  public h getParams()
  {
    return a;
  }
  
  protected long getTimeSinceCreation()
  {
    return System.currentTimeMillis() - mCreationTimeMillis;
  }
  
  public void onAdded() {}
  
  public void onCancel() {}
  
  public boolean shouldReRunOnThrowable(Throwable paramThrowable)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.YelpJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */