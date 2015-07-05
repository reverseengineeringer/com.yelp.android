package com.yelp.android.ui.activities.camera;

import android.hardware.Camera;
import android.os.AsyncTask;
import java.io.File;
import java.util.Iterator;
import java.util.List;

class h
  extends AsyncTask<byte[], Void, File>
{
  private h(CameraWrangler paramCameraWrangler) {}
  
  /* Error */
  protected File a(byte[]... paramVarArgs)
  {
    // Byte code:
    //   0: aload_1
    //   1: arraylength
    //   2: iconst_1
    //   3: if_icmpeq +37 -> 40
    //   6: new 27	java/lang/IllegalArgumentException
    //   9: dup
    //   10: ldc 29
    //   12: invokespecial 32	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   15: athrow
    //   16: astore_1
    //   17: aconst_null
    //   18: astore_3
    //   19: aload_3
    //   20: astore_2
    //   21: ldc 34
    //   23: ldc 36
    //   25: aload_1
    //   26: invokestatic 42	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   29: pop
    //   30: aload_3
    //   31: ifnull +7 -> 38
    //   34: aload_3
    //   35: invokevirtual 47	java/io/FileOutputStream:close	()V
    //   38: aconst_null
    //   39: areturn
    //   40: invokestatic 53	com/yelp/android/util/l:c	()Ljava/io/File;
    //   43: astore 4
    //   45: aload 4
    //   47: ifnonnull +27 -> 74
    //   50: iconst_0
    //   51: ifeq -13 -> 38
    //   54: new 55	java/lang/NullPointerException
    //   57: dup
    //   58: invokespecial 56	java/lang/NullPointerException:<init>	()V
    //   61: athrow
    //   62: astore_1
    //   63: ldc 34
    //   65: ldc 58
    //   67: aload_1
    //   68: invokestatic 42	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   71: pop
    //   72: aconst_null
    //   73: areturn
    //   74: new 44	java/io/FileOutputStream
    //   77: dup
    //   78: aload 4
    //   80: invokespecial 61	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   83: astore_3
    //   84: aload_3
    //   85: astore_2
    //   86: aload_3
    //   87: aload_1
    //   88: iconst_0
    //   89: aaload
    //   90: invokevirtual 65	java/io/FileOutputStream:write	([B)V
    //   93: aload_3
    //   94: astore_2
    //   95: aload_3
    //   96: invokevirtual 69	java/io/FileOutputStream:getFD	()Ljava/io/FileDescriptor;
    //   99: invokevirtual 74	java/io/FileDescriptor:sync	()V
    //   102: aload_3
    //   103: ifnull +7 -> 110
    //   106: aload_3
    //   107: invokevirtual 47	java/io/FileOutputStream:close	()V
    //   110: aload 4
    //   112: areturn
    //   113: astore_1
    //   114: ldc 34
    //   116: ldc 58
    //   118: aload_1
    //   119: invokestatic 42	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   122: pop
    //   123: goto -13 -> 110
    //   126: astore_1
    //   127: ldc 34
    //   129: ldc 58
    //   131: aload_1
    //   132: invokestatic 42	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   135: pop
    //   136: aconst_null
    //   137: areturn
    //   138: astore_1
    //   139: aconst_null
    //   140: astore_3
    //   141: aload_3
    //   142: astore_2
    //   143: ldc 34
    //   145: ldc 76
    //   147: aload_1
    //   148: invokestatic 42	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   151: pop
    //   152: aload_3
    //   153: ifnull -115 -> 38
    //   156: aload_3
    //   157: invokevirtual 47	java/io/FileOutputStream:close	()V
    //   160: aconst_null
    //   161: areturn
    //   162: astore_1
    //   163: ldc 34
    //   165: ldc 58
    //   167: aload_1
    //   168: invokestatic 42	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   171: pop
    //   172: aconst_null
    //   173: areturn
    //   174: astore_1
    //   175: aconst_null
    //   176: astore_2
    //   177: aload_2
    //   178: ifnull +7 -> 185
    //   181: aload_2
    //   182: invokevirtual 47	java/io/FileOutputStream:close	()V
    //   185: aload_1
    //   186: athrow
    //   187: astore_2
    //   188: ldc 34
    //   190: ldc 58
    //   192: aload_2
    //   193: invokestatic 42	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   196: pop
    //   197: goto -12 -> 185
    //   200: astore_1
    //   201: goto -24 -> 177
    //   204: astore_1
    //   205: goto -64 -> 141
    //   208: astore_1
    //   209: goto -190 -> 19
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	212	0	this	h
    //   0	212	1	paramVarArgs	byte[][]
    //   20	162	2	localFileOutputStream1	java.io.FileOutputStream
    //   187	6	2	localIOException	java.io.IOException
    //   18	139	3	localFileOutputStream2	java.io.FileOutputStream
    //   43	68	4	localFile	File
    // Exception table:
    //   from	to	target	type
    //   0	16	16	java/lang/OutOfMemoryError
    //   40	45	16	java/lang/OutOfMemoryError
    //   74	84	16	java/lang/OutOfMemoryError
    //   54	62	62	java/io/IOException
    //   106	110	113	java/io/IOException
    //   34	38	126	java/io/IOException
    //   0	16	138	java/lang/Exception
    //   40	45	138	java/lang/Exception
    //   74	84	138	java/lang/Exception
    //   156	160	162	java/io/IOException
    //   0	16	174	finally
    //   40	45	174	finally
    //   74	84	174	finally
    //   181	185	187	java/io/IOException
    //   21	30	200	finally
    //   86	93	200	finally
    //   95	102	200	finally
    //   143	152	200	finally
    //   86	93	204	java/lang/Exception
    //   95	102	204	java/lang/Exception
    //   86	93	208	java/lang/OutOfMemoryError
    //   95	102	208	java/lang/OutOfMemoryError
  }
  
  protected void a(File paramFile)
  {
    Iterator localIterator = CameraWrangler.b(a).iterator();
    while (localIterator.hasNext()) {
      ((a)localIterator.next()).a(a, paramFile);
    }
    if ((paramFile != null) && (CameraWrangler.c(a) != null))
    {
      CameraWrangler.c(a).startPreview();
      CameraWrangler.a(a, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */