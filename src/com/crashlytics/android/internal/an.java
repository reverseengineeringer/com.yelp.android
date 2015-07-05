package com.crashlytics.android.internal;

public class an
{
  /* Error */
  public org.json.JSONObject a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore_2
    //   4: invokestatic 18	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   7: invokevirtual 22	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   10: ldc 24
    //   12: ldc 26
    //   14: invokeinterface 31 3 0
    //   19: new 33	java/io/File
    //   22: dup
    //   23: invokestatic 18	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   26: invokevirtual 37	com/crashlytics/android/internal/cl:i	()Ljava/io/File;
    //   29: ldc 39
    //   31: invokespecial 42	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   34: astore_1
    //   35: aload_1
    //   36: invokevirtual 46	java/io/File:exists	()Z
    //   39: ifeq +38 -> 77
    //   42: new 48	java/io/FileInputStream
    //   45: dup
    //   46: aload_1
    //   47: invokespecial 51	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   50: astore_1
    //   51: aload_1
    //   52: astore_2
    //   53: new 53	org/json/JSONObject
    //   56: dup
    //   57: aload_1
    //   58: invokestatic 58	com/crashlytics/android/internal/bd:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   61: invokespecial 61	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   64: astore_3
    //   65: aload_1
    //   66: astore_2
    //   67: aload_3
    //   68: astore_1
    //   69: aload_2
    //   70: ldc 63
    //   72: invokestatic 66	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   75: aload_1
    //   76: areturn
    //   77: invokestatic 18	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   80: invokevirtual 22	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   83: ldc 24
    //   85: ldc 68
    //   87: invokeinterface 31 3 0
    //   92: aconst_null
    //   93: astore_1
    //   94: goto -25 -> 69
    //   97: astore_3
    //   98: aconst_null
    //   99: astore_1
    //   100: aload_1
    //   101: astore_2
    //   102: invokestatic 18	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   105: invokevirtual 22	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   108: ldc 24
    //   110: ldc 70
    //   112: aload_3
    //   113: invokeinterface 73 4 0
    //   118: aload_1
    //   119: ldc 63
    //   121: invokestatic 66	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   124: aconst_null
    //   125: areturn
    //   126: astore_1
    //   127: aload_3
    //   128: astore_2
    //   129: aload_2
    //   130: ldc 63
    //   132: invokestatic 66	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   135: aload_1
    //   136: athrow
    //   137: astore_1
    //   138: goto -9 -> 129
    //   141: astore_3
    //   142: goto -42 -> 100
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	145	0	this	an
    //   34	85	1	localObject1	Object
    //   126	10	1	localObject2	Object
    //   137	1	1	localObject3	Object
    //   3	127	2	localObject4	Object
    //   1	67	3	localJSONObject	org.json.JSONObject
    //   97	31	3	localException1	Exception
    //   141	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   19	51	97	java/lang/Exception
    //   77	92	97	java/lang/Exception
    //   19	51	126	finally
    //   77	92	126	finally
    //   53	65	137	finally
    //   102	118	137	finally
    //   53	65	141	java/lang/Exception
  }
  
  /* Error */
  public void a(long paramLong, org.json.JSONObject paramJSONObject)
  {
    // Byte code:
    //   0: invokestatic 18	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   3: invokevirtual 22	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   6: ldc 24
    //   8: ldc 76
    //   10: invokeinterface 31 3 0
    //   15: aload_3
    //   16: ifnull +67 -> 83
    //   19: aconst_null
    //   20: astore 4
    //   22: aload_3
    //   23: ldc 78
    //   25: lload_1
    //   26: invokevirtual 82	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   29: pop
    //   30: new 84	java/io/FileWriter
    //   33: dup
    //   34: new 33	java/io/File
    //   37: dup
    //   38: invokestatic 18	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   41: invokevirtual 37	com/crashlytics/android/internal/cl:i	()Ljava/io/File;
    //   44: ldc 39
    //   46: invokespecial 42	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   49: invokespecial 85	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   52: astore 5
    //   54: aload 5
    //   56: astore 4
    //   58: aload 5
    //   60: aload_3
    //   61: invokevirtual 89	org/json/JSONObject:toString	()Ljava/lang/String;
    //   64: invokevirtual 92	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   67: aload 5
    //   69: astore 4
    //   71: aload 5
    //   73: invokevirtual 95	java/io/FileWriter:flush	()V
    //   76: aload 5
    //   78: ldc 97
    //   80: invokestatic 66	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   83: return
    //   84: astore 6
    //   86: aconst_null
    //   87: astore_3
    //   88: aload_3
    //   89: astore 4
    //   91: invokestatic 18	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   94: invokevirtual 22	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   97: ldc 24
    //   99: ldc 99
    //   101: aload 6
    //   103: invokeinterface 73 4 0
    //   108: aload_3
    //   109: ldc 97
    //   111: invokestatic 66	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   114: return
    //   115: astore_3
    //   116: aload 4
    //   118: ldc 97
    //   120: invokestatic 66	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   123: aload_3
    //   124: athrow
    //   125: astore_3
    //   126: goto -10 -> 116
    //   129: astore 6
    //   131: aload 5
    //   133: astore_3
    //   134: goto -46 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	this	an
    //   0	137	1	paramLong	long
    //   0	137	3	paramJSONObject	org.json.JSONObject
    //   20	97	4	localObject	Object
    //   52	80	5	localFileWriter	java.io.FileWriter
    //   84	18	6	localException1	Exception
    //   129	1	6	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   22	54	84	java/lang/Exception
    //   22	54	115	finally
    //   58	67	125	finally
    //   71	76	125	finally
    //   91	108	125	finally
    //   58	67	129	java/lang/Exception
    //   71	76	129	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */