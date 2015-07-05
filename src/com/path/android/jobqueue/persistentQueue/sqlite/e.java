package com.path.android.jobqueue.persistentQueue.sqlite;

import com.path.android.jobqueue.BaseJob;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;

public class e
  implements f
{
  public <T extends BaseJob> T a(byte[] paramArrayOfByte)
  {
    localObjectInputStream = null;
    localObject = localObjectInputStream;
    if (paramArrayOfByte != null)
    {
      if (paramArrayOfByte.length == 0) {
        localObject = localObjectInputStream;
      }
    }
    else {
      label15:
      return (T)localObject;
    }
    try
    {
      localObjectInputStream = new ObjectInputStream(new ByteArrayInputStream(paramArrayOfByte));
    }
    finally
    {
      try
      {
        paramArrayOfByte = (BaseJob)localObjectInputStream.readObject();
        localObject = paramArrayOfByte;
        if (localObjectInputStream == null) {
          break label15;
        }
        localObjectInputStream.close();
        return paramArrayOfByte;
      }
      finally
      {
        localObject = localObjectInputStream;
      }
      paramArrayOfByte = finally;
      localObject = null;
    }
    if (localObject != null) {
      ((ObjectInputStream)localObject).close();
    }
    throw paramArrayOfByte;
  }
  
  /* Error */
  public byte[] a(Object paramObject)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ifnonnull +7 -> 10
    //   6: aload_2
    //   7: astore_1
    //   8: aload_1
    //   9: areturn
    //   10: new 37	java/io/ByteArrayOutputStream
    //   13: dup
    //   14: invokespecial 38	java/io/ByteArrayOutputStream:<init>	()V
    //   17: astore_3
    //   18: new 40	java/io/ObjectOutputStream
    //   21: dup
    //   22: aload_3
    //   23: invokespecial 43	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   26: aload_1
    //   27: invokeinterface 49 2 0
    //   32: aload_3
    //   33: invokevirtual 53	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   36: astore_2
    //   37: aload_2
    //   38: astore_1
    //   39: aload_3
    //   40: ifnull -32 -> 8
    //   43: aload_3
    //   44: invokevirtual 54	java/io/ByteArrayOutputStream:close	()V
    //   47: aload_2
    //   48: areturn
    //   49: astore_1
    //   50: aconst_null
    //   51: astore_2
    //   52: aload_2
    //   53: ifnull +7 -> 60
    //   56: aload_2
    //   57: invokevirtual 54	java/io/ByteArrayOutputStream:close	()V
    //   60: aload_1
    //   61: athrow
    //   62: astore_1
    //   63: aload_3
    //   64: astore_2
    //   65: goto -13 -> 52
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	e
    //   0	68	1	paramObject	Object
    //   1	64	2	localObject	Object
    //   17	47	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   10	18	49	finally
    //   18	37	62	finally
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.persistentQueue.sqlite.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */