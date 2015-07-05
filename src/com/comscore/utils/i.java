package com.comscore.utils;

import android.content.Context;
import com.comscore.analytics.a;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

public class i
{
  public static ArrayList<String> a(Context paramContext)
  {
    Object localObject = null;
    File localFile = paramContext.getFilesDir();
    paramContext = (Context)localObject;
    if (localFile != null)
    {
      paramContext = (Context)localObject;
      if (localFile.isDirectory())
      {
        paramContext = localFile.list(new q());
        if (paramContext == null) {
          break label54;
        }
        Arrays.sort(paramContext);
      }
    }
    for (;;)
    {
      return new ArrayList(Arrays.asList(paramContext));
      label54:
      paramContext = new String[0];
    }
  }
  
  public static void a(a parama, String paramString1, int paramInt, String paramString2)
  {
    Object localObject2 = parama.N();
    m localm = parama.r();
    Object localObject1 = null;
    parama = null;
    int i = n.a(localm.b(paramString1), 0);
    for (;;)
    {
      try
      {
        localObject2 = ((Context)localObject2).openFileOutput(paramString1, paramInt);
        parama = (a)localObject2;
        localObject1 = localObject2;
        ((FileOutputStream)localObject2).write(paramString2.getBytes());
        parama = (a)localObject2;
        localObject1 = localObject2;
        localm.a(paramString1, String.valueOf(i + 1));
      }
      catch (Exception paramString1)
      {
        localObject1 = parama;
        c.b(i.class, "Exception in writeEvent:" + paramString1.getLocalizedMessage());
        localObject1 = parama;
        c.a(paramString1);
        if (parama == null) {
          continue;
        }
        try
        {
          parama.close();
          return;
        }
        catch (IOException parama)
        {
          c.a(parama);
          return;
        }
      }
      finally
      {
        if (localObject1 == null) {
          break label155;
        }
      }
      try
      {
        ((FileOutputStream)localObject2).close();
        return;
      }
      catch (IOException parama)
      {
        c.a(parama);
        return;
      }
    }
    try
    {
      ((FileOutputStream)localObject1).close();
      label155:
      throw parama;
    }
    catch (IOException paramString1)
    {
      for (;;)
      {
        c.a(paramString1);
      }
    }
  }
  
  public static boolean a(a parama, String paramString)
  {
    Context localContext = parama.N();
    parama = parama.r();
    boolean bool = localContext.deleteFile(paramString);
    if (bool)
    {
      c.a(i.class, "File" + paramString + " was removed");
      parama.c(paramString);
    }
    return bool;
  }
  
  /* Error */
  public static String[] a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: new 141	java/util/LinkedList
    //   3: dup
    //   4: invokespecial 142	java/util/LinkedList:<init>	()V
    //   7: astore_3
    //   8: aconst_null
    //   9: astore_2
    //   10: new 144	java/io/BufferedReader
    //   13: dup
    //   14: new 146	java/io/InputStreamReader
    //   17: dup
    //   18: aload_0
    //   19: aload_1
    //   20: invokevirtual 150	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   23: invokespecial 153	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   26: invokespecial 156	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   29: astore_1
    //   30: aload_1
    //   31: astore_0
    //   32: aload_1
    //   33: invokevirtual 159	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   36: astore_2
    //   37: aload_2
    //   38: ifnull +45 -> 83
    //   41: aload_1
    //   42: astore_0
    //   43: aload_3
    //   44: aload_2
    //   45: invokevirtual 163	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   48: pop
    //   49: goto -19 -> 30
    //   52: astore_2
    //   53: aload_1
    //   54: astore_0
    //   55: aload_2
    //   56: invokestatic 104	com/comscore/utils/c:a	(Ljava/lang/Exception;)V
    //   59: aload_1
    //   60: ifnull +7 -> 67
    //   63: aload_1
    //   64: invokevirtual 164	java/io/BufferedReader:close	()V
    //   67: aload_3
    //   68: invokevirtual 168	java/util/LinkedList:size	()I
    //   71: anewarray 47	java/lang/String
    //   74: astore_0
    //   75: aload_3
    //   76: aload_0
    //   77: invokevirtual 172	java/util/LinkedList:toArray	([Ljava/lang/Object;)[Ljava/lang/Object;
    //   80: pop
    //   81: aload_0
    //   82: areturn
    //   83: aload_1
    //   84: ifnull -17 -> 67
    //   87: aload_1
    //   88: invokevirtual 164	java/io/BufferedReader:close	()V
    //   91: goto -24 -> 67
    //   94: astore_0
    //   95: aload_0
    //   96: invokestatic 104	com/comscore/utils/c:a	(Ljava/lang/Exception;)V
    //   99: goto -32 -> 67
    //   102: astore_0
    //   103: aload_0
    //   104: invokestatic 104	com/comscore/utils/c:a	(Ljava/lang/Exception;)V
    //   107: goto -40 -> 67
    //   110: astore_0
    //   111: aload_2
    //   112: astore_1
    //   113: aload_1
    //   114: ifnull +7 -> 121
    //   117: aload_1
    //   118: invokevirtual 164	java/io/BufferedReader:close	()V
    //   121: aload_0
    //   122: athrow
    //   123: astore_1
    //   124: aload_1
    //   125: invokestatic 104	com/comscore/utils/c:a	(Ljava/lang/Exception;)V
    //   128: goto -7 -> 121
    //   131: astore_2
    //   132: aload_0
    //   133: astore_1
    //   134: aload_2
    //   135: astore_0
    //   136: goto -23 -> 113
    //   139: astore_2
    //   140: aconst_null
    //   141: astore_1
    //   142: goto -89 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	paramContext	Context
    //   0	145	1	paramString	String
    //   9	36	2	str	String
    //   52	60	2	localException1	Exception
    //   131	4	2	localObject	Object
    //   139	1	2	localException2	Exception
    //   7	69	3	localLinkedList	java.util.LinkedList
    // Exception table:
    //   from	to	target	type
    //   32	37	52	java/lang/Exception
    //   43	49	52	java/lang/Exception
    //   87	91	94	java/io/IOException
    //   63	67	102	java/io/IOException
    //   10	30	110	finally
    //   117	121	123	java/io/IOException
    //   32	37	131	finally
    //   43	49	131	finally
    //   55	59	131	finally
    //   10	30	139	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */