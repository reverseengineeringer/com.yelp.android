package com.bugsnag.android;

import android.content.Context;
import java.io.File;

class ErrorStore
{
  final Configuration config;
  final String path;
  
  ErrorStore(Configuration paramConfiguration, Context paramContext)
  {
    config = paramConfiguration;
    try
    {
      paramConfiguration = paramContext.getCacheDir().getAbsolutePath() + "/bugsnag-errors/";
      paramContext = new File(paramConfiguration);
      paramContext.mkdirs();
      if (paramContext.exists()) {
        break label83;
      }
      Logger.warn("Could not prepare error storage directory");
      paramConfiguration = (Configuration)localObject;
    }
    catch (Exception paramConfiguration)
    {
      for (;;)
      {
        Logger.warn("Could not prepare error storage directory", paramConfiguration);
        paramConfiguration = (Configuration)localObject;
      }
    }
    path = paramConfiguration;
  }
  
  void flush()
  {
    if (path == null) {
      return;
    }
    Async.run(new Runnable()
    {
      public void run()
      {
        Object localObject = new File(path);
        if ((!((File)localObject).exists()) || (!((File)localObject).isDirectory())) {}
        do
        {
          return;
          localObject = ((File)localObject).listFiles();
        } while ((localObject == null) || (localObject.length <= 0));
        Logger.info(String.format("Sending %d saved error(s) to Bugsnag", new Object[] { Integer.valueOf(localObject.length) }));
        int j = localObject.length;
        int i = 0;
        while (i < j)
        {
          File localFile = localObject[i];
          try
          {
            Notification localNotification = new Notification(config);
            localNotification.addError(localFile);
            localNotification.deliver();
            Logger.info("Deleting sent error file " + localFile.getName());
            if (!localFile.delete()) {
              localFile.deleteOnExit();
            }
            i += 1;
          }
          catch (HttpClient.NetworkException localNetworkException)
          {
            for (;;)
            {
              Logger.warn("Could not send previously saved error(s) to Bugsnag, will try again later", localNetworkException);
            }
          }
          catch (Exception localException)
          {
            for (;;)
            {
              Logger.warn("Problem sending unsent error from disk", localException);
              if (!localNetworkException.delete()) {
                localNetworkException.deleteOnExit();
              }
            }
          }
        }
      }
    });
  }
  
  /* Error */
  void write(Error paramError)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 62	com/bugsnag/android/ErrorStore:path	Ljava/lang/String;
    //   4: ifnonnull +4 -> 8
    //   7: return
    //   8: ldc 80
    //   10: iconst_2
    //   11: anewarray 4	java/lang/Object
    //   14: dup
    //   15: iconst_0
    //   16: aload_0
    //   17: getfield 62	com/bugsnag/android/ErrorStore:path	Ljava/lang/String;
    //   20: aastore
    //   21: dup
    //   22: iconst_1
    //   23: invokestatic 86	java/lang/System:currentTimeMillis	()J
    //   26: invokestatic 92	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   29: aastore
    //   30: invokestatic 98	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   33: astore 5
    //   35: new 100	java/io/FileWriter
    //   38: dup
    //   39: aload 5
    //   41: invokespecial 101	java/io/FileWriter:<init>	(Ljava/lang/String;)V
    //   44: astore_3
    //   45: aload_3
    //   46: astore_2
    //   47: new 103	com/bugsnag/android/JsonStream
    //   50: dup
    //   51: aload_3
    //   52: invokespecial 106	com/bugsnag/android/JsonStream:<init>	(Ljava/io/Writer;)V
    //   55: astore 4
    //   57: aload_3
    //   58: astore_2
    //   59: aload 4
    //   61: aload_1
    //   62: invokevirtual 110	com/bugsnag/android/JsonStream:value	(Lcom/bugsnag/android/JsonStream$Streamable;)V
    //   65: aload_3
    //   66: astore_2
    //   67: aload 4
    //   69: invokevirtual 113	com/bugsnag/android/JsonStream:close	()V
    //   72: aload_3
    //   73: astore_2
    //   74: ldc 115
    //   76: iconst_1
    //   77: anewarray 4	java/lang/Object
    //   80: dup
    //   81: iconst_0
    //   82: aload 5
    //   84: aastore
    //   85: invokestatic 98	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   88: invokestatic 118	com/bugsnag/android/Logger:info	(Ljava/lang/String;)V
    //   91: aload_3
    //   92: invokestatic 124	com/bugsnag/android/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   95: return
    //   96: astore 4
    //   98: aconst_null
    //   99: astore_1
    //   100: aload_1
    //   101: astore_2
    //   102: ldc 126
    //   104: iconst_1
    //   105: anewarray 4	java/lang/Object
    //   108: dup
    //   109: iconst_0
    //   110: aload 5
    //   112: aastore
    //   113: invokestatic 98	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   116: aload 4
    //   118: invokestatic 65	com/bugsnag/android/Logger:warn	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   121: aload_1
    //   122: invokestatic 124	com/bugsnag/android/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   125: return
    //   126: astore_1
    //   127: aconst_null
    //   128: astore_2
    //   129: aload_2
    //   130: invokestatic 124	com/bugsnag/android/IOUtils:closeQuietly	(Ljava/io/Closeable;)V
    //   133: aload_1
    //   134: athrow
    //   135: astore_1
    //   136: goto -7 -> 129
    //   139: astore 4
    //   141: aload_3
    //   142: astore_1
    //   143: goto -43 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	this	ErrorStore
    //   0	146	1	paramError	Error
    //   46	84	2	localObject	Object
    //   44	98	3	localFileWriter	java.io.FileWriter
    //   55	13	4	localJsonStream	JsonStream
    //   96	21	4	localException1	Exception
    //   139	1	4	localException2	Exception
    //   33	78	5	str	String
    // Exception table:
    //   from	to	target	type
    //   35	45	96	java/lang/Exception
    //   35	45	126	finally
    //   47	57	135	finally
    //   59	65	135	finally
    //   67	72	135	finally
    //   74	91	135	finally
    //   102	121	135	finally
    //   47	57	139	java/lang/Exception
    //   59	65	139	java/lang/Exception
    //   67	72	139	java/lang/Exception
    //   74	91	139	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.ErrorStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */