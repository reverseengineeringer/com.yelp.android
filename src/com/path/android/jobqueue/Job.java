package com.path.android.jobqueue;

import android.content.Context;
import com.yelp.android.bp.b;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class Job
  implements Serializable
{
  public static final int DEFAULT_RETRY_LIMIT = 20;
  private static final long serialVersionUID = 3L;
  private transient int a;
  private transient long b;
  private transient Context c;
  transient boolean cancelled;
  private String groupId;
  private boolean persistent;
  transient int priority;
  private Set<String> readonlyTags;
  private boolean requiresNetwork;
  transient f retryConstraint;
  
  protected Job(d paramd)
  {
    requiresNetwork = paramd.c();
    persistent = paramd.e();
    groupId = paramd.d();
    priority = paramd.f();
    b = paramd.g();
    paramd = paramd.h();
    if (paramd == null) {}
    for (paramd = null;; paramd = Collections.unmodifiableSet(paramd))
    {
      readonlyTags = paramd;
      return;
    }
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
    throws ClassNotFoundException, IOException
  {
    requiresNetwork = paramObjectInputStream.readBoolean();
    groupId = ((String)paramObjectInputStream.readObject());
    persistent = paramObjectInputStream.readBoolean();
    int j = paramObjectInputStream.readInt();
    if (j > 0)
    {
      readonlyTags = new HashSet(j);
      int i = 0;
      while (i < j)
      {
        readonlyTags.add(paramObjectInputStream.readUTF());
        i += 1;
      }
    }
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
    throws IOException
  {
    paramObjectOutputStream.writeBoolean(requiresNetwork);
    paramObjectOutputStream.writeObject(groupId);
    paramObjectOutputStream.writeBoolean(persistent);
    if (readonlyTags == null) {}
    for (int i = 0;; i = readonlyTags.size())
    {
      paramObjectOutputStream.writeInt(i);
      if (i <= 0) {
        break;
      }
      Iterator localIterator = readonlyTags.iterator();
      while (localIterator.hasNext()) {
        paramObjectOutputStream.writeUTF((String)localIterator.next());
      }
    }
  }
  
  public void assertNotCancelled()
  {
    if (cancelled) {
      throw new RuntimeException("job is cancelled");
    }
  }
  
  public Context getApplicationContext()
  {
    return c;
  }
  
  protected int getCurrentRunCount()
  {
    return a;
  }
  
  public final long getDelayInMs()
  {
    return b;
  }
  
  public final int getPriority()
  {
    return priority;
  }
  
  protected int getRetryLimit()
  {
    return 20;
  }
  
  public final String getRunGroupId()
  {
    return groupId;
  }
  
  public final Set<String> getTags()
  {
    return readonlyTags;
  }
  
  public boolean isCancelled()
  {
    return cancelled;
  }
  
  public final boolean isPersistent()
  {
    return persistent;
  }
  
  public abstract void onAdded();
  
  protected abstract void onCancel();
  
  public abstract void onRun()
    throws Throwable;
  
  public final boolean requiresNetwork()
  {
    return requiresNetwork;
  }
  
  final int safeRun(a parama, int paramInt)
  {
    boolean bool2 = false;
    a = paramInt;
    if (b.a()) {
      b.a("running job %s", new Object[] { getClass().getSimpleName() });
    }
    try
    {
      onRun();
      if (b.a()) {
        b.a("finished job %s", new Object[] { this });
      }
      paramInt = 0;
      bool1 = false;
    }
    catch (Throwable localThrowable1)
    {
      boolean bool1;
      for (;;)
      {
        b.a(localThrowable1, "error while executing job %s", new Object[] { this });
        if (paramInt < getRetryLimit()) {}
        for (bool1 = true;; bool1 = false)
        {
          if ((!bool1) || (cancelled)) {
            break label215;
          }
          try
          {
            localf = shouldReRunOnThrowable(localThrowable1, paramInt, getRetryLimit());
            localObject = localf;
            if (localf == null) {
              localObject = f.a;
            }
            retryConstraint = ((f)localObject);
            bool3 = ((f)localObject).a();
            bool1 = bool3;
            paramInt = 1;
          }
          catch (Throwable localThrowable2)
          {
            b.a(localThrowable2, "shouldReRunOnThrowable did throw an exception", new Object[0]);
          }
        }
        label215:
        paramInt = 1;
      }
      if (!parama.k()) {
        break label229;
      }
      return 3;
      label229:
      if (!bool1) {
        break label235;
      }
      return 4;
    }
    if (paramInt == 0) {
      bool2 = true;
    }
    b.a("safeRunResult for %s : %s. re run:%s. cancelled: %s", new Object[] { this, Boolean.valueOf(bool2), Boolean.valueOf(bool1), Boolean.valueOf(cancelled) });
    if (paramInt == 0) {
      return 1;
    }
    try
    {
      f localf;
      Object localObject;
      boolean bool3;
      label235:
      onCancel();
      return 2;
    }
    catch (Throwable parama)
    {
      for (;;) {}
    }
  }
  
  void setApplicationContext(Context paramContext)
  {
    c = paramContext;
  }
  
  protected f shouldReRunOnThrowable(Throwable paramThrowable, int paramInt1, int paramInt2)
  {
    if (shouldReRunOnThrowable(paramThrowable)) {
      return f.a;
    }
    return f.b;
  }
  
  @Deprecated
  protected boolean shouldReRunOnThrowable(Throwable paramThrowable)
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.Job
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */