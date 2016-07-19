package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.io.OutputStream;
import java.io.Writer;

final class n
{
  private static String a(Throwable paramThrowable)
  {
    paramThrowable = paramThrowable.getLocalizedMessage();
    if (paramThrowable == null) {
      return null;
    }
    return paramThrowable.replaceAll("(\r\n|\n|\f)", " ");
  }
  
  public static void a(Throwable paramThrowable, OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {
      b(paramThrowable, paramOutputStream);
    }
  }
  
  private static void a(Throwable paramThrowable, Writer paramWriter)
  {
    int i = 1;
    if (paramThrowable != null) {}
    for (;;)
    {
      String str;
      try
      {
        localObject = a(paramThrowable);
        if (localObject == null) {
          break label162;
        }
      }
      catch (Exception paramThrowable)
      {
        int j;
        c.h().e("Fabric", "Could not write stack trace", paramThrowable);
      }
      paramWriter.write(str + paramThrowable.getClass().getName() + ": " + (String)localObject + "\n");
      Object localObject = paramThrowable.getStackTrace();
      j = localObject.length;
      i = 0;
      if (i < j)
      {
        str = localObject[i];
        paramWriter.write("\tat " + str.toString() + "\n");
        i += 1;
      }
      else
      {
        paramThrowable = paramThrowable.getCause();
        i = 0;
        break;
        return;
        for (;;)
        {
          if (i == 0) {
            break label169;
          }
          str = "";
          break;
          label162:
          localObject = "";
        }
        label169:
        str = "Caused by: ";
      }
    }
  }
  
  /* Error */
  private static void b(Throwable paramThrowable, OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: new 99	java/io/PrintWriter
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 102	java/io/PrintWriter:<init>	(Ljava/io/OutputStream;)V
    //   8: astore_2
    //   9: aload_2
    //   10: astore_1
    //   11: aload_0
    //   12: aload_2
    //   13: invokestatic 104	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/Writer;)V
    //   16: aload_2
    //   17: ldc 106
    //   19: invokestatic 111	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   22: return
    //   23: astore_3
    //   24: aconst_null
    //   25: astore_0
    //   26: aload_0
    //   27: astore_1
    //   28: invokestatic 83	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   31: ldc 85
    //   33: ldc 113
    //   35: aload_3
    //   36: invokeinterface 93 4 0
    //   41: aload_0
    //   42: ldc 106
    //   44: invokestatic 111	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   47: return
    //   48: astore_0
    //   49: aconst_null
    //   50: astore_1
    //   51: aload_1
    //   52: ldc 106
    //   54: invokestatic 111	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   57: aload_0
    //   58: athrow
    //   59: astore_0
    //   60: goto -9 -> 51
    //   63: astore_3
    //   64: aload_2
    //   65: astore_0
    //   66: goto -40 -> 26
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	paramThrowable	Throwable
    //   0	69	1	paramOutputStream	OutputStream
    //   8	57	2	localPrintWriter	java.io.PrintWriter
    //   23	13	3	localException1	Exception
    //   63	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	9	23	java/lang/Exception
    //   0	9	48	finally
    //   11	16	59	finally
    //   28	41	59	finally
    //   11	16	63	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */