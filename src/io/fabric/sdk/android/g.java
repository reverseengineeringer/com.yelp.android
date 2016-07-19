package io.fabric.sdk.android;

import io.fabric.sdk.android.services.common.q;
import io.fabric.sdk.android.services.concurrency.Priority;
import io.fabric.sdk.android.services.concurrency.c;

class g<Result>
  extends c<Void, Void, Result>
{
  final h<Result> a;
  
  public g(h<Result> paramh)
  {
    a = paramh;
  }
  
  private q a(String paramString)
  {
    paramString = new q(a.b() + "." + paramString, "KitInitialization");
    paramString.a();
    return paramString;
  }
  
  protected Result a(Void... paramVarArgs)
  {
    q localq = a("doInBackground");
    paramVarArgs = null;
    if (!e()) {
      paramVarArgs = a.f();
    }
    localq.b();
    return paramVarArgs;
  }
  
  /* Error */
  protected void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 72	io/fabric/sdk/android/services/concurrency/c:a	()V
    //   4: aload_0
    //   5: ldc 74
    //   7: invokespecial 56	io/fabric/sdk/android/g:a	(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/q;
    //   10: astore_2
    //   11: aload_0
    //   12: getfield 15	io/fabric/sdk/android/g:a	Lio/fabric/sdk/android/h;
    //   15: invokevirtual 77	io/fabric/sdk/android/h:c_	()Z
    //   18: istore_1
    //   19: aload_2
    //   20: invokevirtual 66	io/fabric/sdk/android/services/common/q:b	()V
    //   23: iload_1
    //   24: ifne +9 -> 33
    //   27: aload_0
    //   28: iconst_1
    //   29: invokevirtual 80	io/fabric/sdk/android/g:a	(Z)Z
    //   32: pop
    //   33: return
    //   34: astore_3
    //   35: aload_3
    //   36: athrow
    //   37: astore_3
    //   38: aload_2
    //   39: invokevirtual 66	io/fabric/sdk/android/services/common/q:b	()V
    //   42: aload_0
    //   43: iconst_1
    //   44: invokevirtual 80	io/fabric/sdk/android/g:a	(Z)Z
    //   47: pop
    //   48: aload_3
    //   49: athrow
    //   50: astore_3
    //   51: invokestatic 86	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   54: ldc 88
    //   56: ldc 90
    //   58: aload_3
    //   59: invokeinterface 95 4 0
    //   64: aload_2
    //   65: invokevirtual 66	io/fabric/sdk/android/services/common/q:b	()V
    //   68: aload_0
    //   69: iconst_1
    //   70: invokevirtual 80	io/fabric/sdk/android/g:a	(Z)Z
    //   73: pop
    //   74: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	g
    //   18	6	1	bool	boolean
    //   10	55	2	localq	q
    //   34	2	3	localUnmetDependencyException	io.fabric.sdk.android.services.concurrency.UnmetDependencyException
    //   37	12	3	localObject	Object
    //   50	9	3	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   11	19	34	io/fabric/sdk/android/services/concurrency/UnmetDependencyException
    //   11	19	37	finally
    //   35	37	37	finally
    //   51	64	37	finally
    //   11	19	50	java/lang/Exception
  }
  
  protected void a(Result paramResult)
  {
    a.a(paramResult);
    a.h.a(paramResult);
  }
  
  public Priority b()
  {
    return Priority.HIGH;
  }
  
  protected void b(Result paramResult)
  {
    a.b(paramResult);
    paramResult = new InitializationException(a.b() + " Initialization was cancelled");
    a.h.a(paramResult);
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */