package com.path.android.jobqueue;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

@Deprecated
public abstract class BaseJob
  implements Serializable
{
  public static final int DEFAULT_RETRY_LIMIT = 20;
  private transient int a;
  private String groupId;
  private boolean persistent;
  private boolean requiresNetwork;
  
  protected BaseJob(String paramString)
  {
    this(false, false, paramString);
  }
  
  protected BaseJob(boolean paramBoolean)
  {
    this(paramBoolean, false, null);
  }
  
  protected BaseJob(boolean paramBoolean, String paramString)
  {
    this(paramBoolean, false, paramString);
  }
  
  public BaseJob(boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramBoolean1, paramBoolean2, null);
  }
  
  protected BaseJob(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    requiresNetwork = paramBoolean1;
    persistent = paramBoolean2;
    groupId = paramString;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    requiresNetwork = paramObjectInputStream.readBoolean();
    groupId = ((String)paramObjectInputStream.readObject());
    persistent = paramObjectInputStream.readBoolean();
  }
  
  private void writeObject(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeBoolean(requiresNetwork);
    paramObjectOutputStream.writeObject(groupId);
    paramObjectOutputStream.writeBoolean(persistent);
  }
  
  protected int getCurrentRunCount()
  {
    return a;
  }
  
  protected int getRetryLimit()
  {
    return 20;
  }
  
  public final String getRunGroupId()
  {
    return groupId;
  }
  
  public final boolean isPersistent()
  {
    return persistent;
  }
  
  public abstract void onAdded();
  
  protected abstract void onCancel();
  
  public abstract void onRun();
  
  public final boolean requiresNetwork()
  {
    return requiresNetwork;
  }
  
  /* Error */
  public final boolean safeRun(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: putfield 61	com/path/android/jobqueue/BaseJob:a	I
    //   5: invokestatic 76	com/yelp/android/at/b:a	()Z
    //   8: ifeq +22 -> 30
    //   11: ldc 78
    //   13: iconst_1
    //   14: anewarray 4	java/lang/Object
    //   17: dup
    //   18: iconst_0
    //   19: aload_0
    //   20: invokevirtual 82	java/lang/Object:getClass	()Ljava/lang/Class;
    //   23: invokevirtual 87	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   26: aastore
    //   27: invokestatic 90	com/yelp/android/at/b:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   30: aload_0
    //   31: invokevirtual 92	com/path/android/jobqueue/BaseJob:onRun	()V
    //   34: invokestatic 76	com/yelp/android/at/b:a	()Z
    //   37: ifeq +22 -> 59
    //   40: ldc 94
    //   42: iconst_1
    //   43: anewarray 4	java/lang/Object
    //   46: dup
    //   47: iconst_0
    //   48: aload_0
    //   49: invokevirtual 82	java/lang/Object:getClass	()Ljava/lang/Class;
    //   52: invokevirtual 87	java/lang/Class:getSimpleName	()Ljava/lang/String;
    //   55: aastore
    //   56: invokestatic 90	com/yelp/android/at/b:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   59: iconst_1
    //   60: ireturn
    //   61: astore 5
    //   63: aload 5
    //   65: ldc 96
    //   67: iconst_0
    //   68: anewarray 4	java/lang/Object
    //   71: invokestatic 99	com/yelp/android/at/b:a	(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    //   74: aload_0
    //   75: invokevirtual 101	com/path/android/jobqueue/BaseJob:getRetryLimit	()I
    //   78: istore_2
    //   79: iload_1
    //   80: iload_2
    //   81: if_icmpge +27 -> 108
    //   84: iconst_1
    //   85: istore_3
    //   86: iload_3
    //   87: istore 4
    //   89: iload_3
    //   90: ifeq +11 -> 101
    //   93: aload_0
    //   94: aload 5
    //   96: invokevirtual 105	com/path/android/jobqueue/BaseJob:shouldReRunOnThrowable	(Ljava/lang/Throwable;)Z
    //   99: istore 4
    //   101: iload 4
    //   103: ifeq +39 -> 142
    //   106: iconst_0
    //   107: ireturn
    //   108: iconst_0
    //   109: istore_3
    //   110: goto -24 -> 86
    //   113: astore 5
    //   115: aload 5
    //   117: ldc 107
    //   119: iconst_0
    //   120: anewarray 4	java/lang/Object
    //   123: invokestatic 99	com/yelp/android/at/b:a	(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    //   126: iload_3
    //   127: istore 4
    //   129: goto -28 -> 101
    //   132: astore 5
    //   134: iconst_1
    //   135: istore_1
    //   136: iload_3
    //   137: ifeq +15 -> 152
    //   140: iconst_0
    //   141: ireturn
    //   142: aload_0
    //   143: invokevirtual 109	com/path/android/jobqueue/BaseJob:onCancel	()V
    //   146: iconst_1
    //   147: ireturn
    //   148: astore 5
    //   150: iconst_1
    //   151: ireturn
    //   152: iload_1
    //   153: ifeq +7 -> 160
    //   156: aload_0
    //   157: invokevirtual 109	com/path/android/jobqueue/BaseJob:onCancel	()V
    //   160: aload 5
    //   162: athrow
    //   163: astore 6
    //   165: goto -5 -> 160
    //   168: astore 5
    //   170: iconst_0
    //   171: istore_1
    //   172: iconst_0
    //   173: istore_3
    //   174: goto -38 -> 136
    //   177: astore 5
    //   179: iconst_0
    //   180: istore_3
    //   181: iconst_1
    //   182: istore_1
    //   183: goto -47 -> 136
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	186	0	this	BaseJob
    //   0	186	1	paramInt	int
    //   78	4	2	i	int
    //   85	96	3	bool1	boolean
    //   87	41	4	bool2	boolean
    //   61	34	5	localThrowable1	Throwable
    //   113	3	5	localThrowable2	Throwable
    //   132	1	5	localObject1	Object
    //   148	13	5	localThrowable3	Throwable
    //   168	1	5	localObject2	Object
    //   177	1	5	localObject3	Object
    //   163	1	6	localThrowable4	Throwable
    // Exception table:
    //   from	to	target	type
    //   30	59	61	java/lang/Throwable
    //   93	101	113	java/lang/Throwable
    //   93	101	132	finally
    //   115	126	132	finally
    //   142	146	148	java/lang/Throwable
    //   156	160	163	java/lang/Throwable
    //   30	59	168	finally
    //   63	79	177	finally
  }
  
  protected abstract boolean shouldReRunOnThrowable(Throwable paramThrowable);
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.BaseJob
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */