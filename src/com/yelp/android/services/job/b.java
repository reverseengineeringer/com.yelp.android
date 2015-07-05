package com.yelp.android.services.job;

import com.yelp.android.at.a;
import com.yelp.android.util.YelpLog;

final class b
  implements a
{
  public void a(String paramString, Object... paramVarArgs)
  {
    YelpLog.d("JobManager", String.format(paramString, paramVarArgs));
  }
  
  public void a(Throwable paramThrowable, String paramString, Object... paramVarArgs)
  {
    YelpLog.e("JobManager", String.format(paramString, paramVarArgs), paramThrowable);
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void b(String paramString, Object... paramVarArgs)
  {
    YelpLog.e("JobManager", String.format(paramString, paramVarArgs));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.job.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */