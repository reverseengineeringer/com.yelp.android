package com.path.android.jobqueue.persistentQueue.sqlite;

import com.path.android.jobqueue.Job;
import java.io.IOException;

public abstract interface SqliteJobQueue$b
{
  public abstract <T extends Job> T a(byte[] paramArrayOfByte)
    throws IOException, ClassNotFoundException;
  
  public abstract byte[] a(Object paramObject)
    throws IOException;
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */