package com.path.android.jobqueue;

import android.content.Context;
import com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue;
import com.path.android.jobqueue.persistentQueue.sqlite.e;
import com.yelp.android.ap.a;

public class f
  implements i
{
  com.path.android.jobqueue.persistentQueue.sqlite.f a = new e();
  
  public g a(Context paramContext, Long paramLong, String paramString)
  {
    return new a(new SqliteJobQueue(paramContext, paramLong.longValue(), paramString, a));
  }
  
  public g b(Context paramContext, Long paramLong, String paramString)
  {
    return new a(new com.path.android.jobqueue.nonPersistentQueue.f(paramLong.longValue(), paramString));
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */