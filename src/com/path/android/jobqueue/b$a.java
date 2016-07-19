package com.path.android.jobqueue;

import android.content.Context;
import com.path.android.jobqueue.nonPersistentQueue.f;
import com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue;
import com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue.a;
import com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue.b;
import com.yelp.android.bl.a;

public class b$a
  implements e
{
  SqliteJobQueue.b a = new SqliteJobQueue.a();
  
  public c a(Context paramContext, Long paramLong, String paramString, boolean paramBoolean)
  {
    return new a(new SqliteJobQueue(paramContext, paramLong.longValue(), paramString, a, paramBoolean));
  }
  
  public c b(Context paramContext, Long paramLong, String paramString, boolean paramBoolean)
  {
    return new a(new f(paramLong.longValue(), paramString, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */