package com.yelp.android.services.job;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.PowerManager;
import com.path.android.jobqueue.Job;
import com.path.android.jobqueue.d;
import com.path.android.jobqueue.f;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.YelpLog;

public abstract class YelpJob
  extends Job
{
  protected static final int JOB_PRIORITY_HIGH = 3;
  protected static final int JOB_PRIORITY_LOW = 1;
  protected static final int JOB_PRIORITY_MEDIUM = 2;
  private final transient d a;
  private final long mCreationTimeMillis;
  
  protected YelpJob(d paramd)
  {
    super(paramd);
    a = paramd;
    mCreationTimeMillis = System.currentTimeMillis();
  }
  
  public static f createTruncatedExponentialBackoff(int paramInt, long paramLong1, long paramLong2)
  {
    f localf = new f(true);
    localf.a(Long.valueOf(Math.min(Math.pow(2.0D, Math.max(0, paramInt - 1)) * paramLong1, paramLong2)));
    return localf;
  }
  
  public Context getContext()
  {
    return AppData.b();
  }
  
  public long getCreationTimeMillis()
  {
    return mCreationTimeMillis;
  }
  
  public d getParams()
  {
    return a;
  }
  
  protected long getTimeSinceCreation()
  {
    return System.currentTimeMillis() - mCreationTimeMillis;
  }
  
  public void onAdded() {}
  
  public void onCancel() {}
  
  public void onRun()
    throws Throwable
  {
    if ((requiresNetwork()) && (Build.VERSION.SDK_INT >= 23) && (((PowerManager)AppData.b().getSystemService("power")).isDeviceIdleMode())) {
      YelpLog.remoteError("YelpJob", new RunDuringIdleException("onRun() called when device is idle and has no network"));
    }
  }
  
  public f shouldReRunOnThrowable(Throwable paramThrowable, int paramInt1, int paramInt2)
  {
    if (shouldReRunOnThrowable(paramThrowable)) {
      return createTruncatedExponentialBackoff(paramInt1, 1000L, 28800000L);
    }
    return f.b;
  }
  
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