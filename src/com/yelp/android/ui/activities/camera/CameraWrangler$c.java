package com.yelp.android.ui.activities.camera;

import android.hardware.Camera;
import android.media.ExifInterface;
import android.os.AsyncTask;
import com.yelp.android.util.YelpLog;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

class CameraWrangler$c
  extends AsyncTask<byte[], Void, File>
{
  private boolean b;
  
  public CameraWrangler$c(CameraWrangler paramCameraWrangler, boolean paramBoolean)
  {
    b = paramBoolean;
  }
  
  /* Error */
  protected File a(byte[]... paramVarArgs)
  {
    // Byte code:
    //   0: aload_1
    //   1: arraylength
    //   2: iconst_1
    //   3: if_icmpeq +55 -> 58
    //   6: new 29	java/lang/IllegalArgumentException
    //   9: dup
    //   10: ldc 31
    //   12: invokespecial 34	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   15: athrow
    //   16: astore 4
    //   18: aconst_null
    //   19: astore_1
    //   20: aconst_null
    //   21: astore_2
    //   22: aload_1
    //   23: astore 5
    //   25: aload_2
    //   26: astore_3
    //   27: aload_0
    //   28: ldc 36
    //   30: aload 4
    //   32: invokestatic 42	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   35: aload_2
    //   36: ifnull +20 -> 56
    //   39: aload_2
    //   40: invokevirtual 47	java/io/FileOutputStream:close	()V
    //   43: aload_0
    //   44: aload_1
    //   45: invokevirtual 53	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   48: aload_0
    //   49: getfield 21	com/yelp/android/ui/activities/camera/CameraWrangler$c:b	Z
    //   52: invokevirtual 56	com/yelp/android/ui/activities/camera/CameraWrangler$c:a	(Ljava/lang/String;Z)Z
    //   55: pop
    //   56: aconst_null
    //   57: areturn
    //   58: invokestatic 61	com/yelp/android/util/e:c	()Ljava/io/File;
    //   61: astore_2
    //   62: aload_2
    //   63: ifnonnull +25 -> 88
    //   66: iconst_0
    //   67: ifeq -11 -> 56
    //   70: new 63	java/lang/NullPointerException
    //   73: dup
    //   74: invokespecial 64	java/lang/NullPointerException:<init>	()V
    //   77: athrow
    //   78: astore_1
    //   79: aload_0
    //   80: ldc 66
    //   82: aload_1
    //   83: invokestatic 42	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   86: aconst_null
    //   87: areturn
    //   88: new 44	java/io/FileOutputStream
    //   91: dup
    //   92: aload_2
    //   93: invokespecial 69	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   96: astore_3
    //   97: aload_3
    //   98: aload_1
    //   99: iconst_0
    //   100: aaload
    //   101: invokevirtual 73	java/io/FileOutputStream:write	([B)V
    //   104: aload_3
    //   105: invokevirtual 77	java/io/FileOutputStream:getFD	()Ljava/io/FileDescriptor;
    //   108: invokevirtual 82	java/io/FileDescriptor:sync	()V
    //   111: aload_3
    //   112: ifnull +20 -> 132
    //   115: aload_3
    //   116: invokevirtual 47	java/io/FileOutputStream:close	()V
    //   119: aload_0
    //   120: aload_2
    //   121: invokevirtual 53	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   124: aload_0
    //   125: getfield 21	com/yelp/android/ui/activities/camera/CameraWrangler$c:b	Z
    //   128: invokevirtual 56	com/yelp/android/ui/activities/camera/CameraWrangler$c:a	(Ljava/lang/String;Z)Z
    //   131: pop
    //   132: aload_2
    //   133: areturn
    //   134: astore_1
    //   135: aload_0
    //   136: ldc 66
    //   138: aload_1
    //   139: invokestatic 42	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   142: goto -10 -> 132
    //   145: astore_1
    //   146: aload_0
    //   147: ldc 66
    //   149: aload_1
    //   150: invokestatic 42	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   153: aconst_null
    //   154: areturn
    //   155: astore 4
    //   157: aconst_null
    //   158: astore_1
    //   159: aconst_null
    //   160: astore_2
    //   161: aload_1
    //   162: astore 5
    //   164: aload_2
    //   165: astore_3
    //   166: aload_0
    //   167: ldc 84
    //   169: aload 4
    //   171: invokestatic 42	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   174: aload_2
    //   175: ifnull -119 -> 56
    //   178: aload_2
    //   179: invokevirtual 47	java/io/FileOutputStream:close	()V
    //   182: aload_0
    //   183: aload_1
    //   184: invokevirtual 53	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   187: aload_0
    //   188: getfield 21	com/yelp/android/ui/activities/camera/CameraWrangler$c:b	Z
    //   191: invokevirtual 56	com/yelp/android/ui/activities/camera/CameraWrangler$c:a	(Ljava/lang/String;Z)Z
    //   194: pop
    //   195: aconst_null
    //   196: areturn
    //   197: astore_1
    //   198: aload_0
    //   199: ldc 66
    //   201: aload_1
    //   202: invokestatic 42	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   205: aconst_null
    //   206: areturn
    //   207: astore_1
    //   208: aconst_null
    //   209: astore_2
    //   210: aconst_null
    //   211: astore 4
    //   213: aload_2
    //   214: ifnull +21 -> 235
    //   217: aload_2
    //   218: invokevirtual 47	java/io/FileOutputStream:close	()V
    //   221: aload_0
    //   222: aload 4
    //   224: invokevirtual 53	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   227: aload_0
    //   228: getfield 21	com/yelp/android/ui/activities/camera/CameraWrangler$c:b	Z
    //   231: invokevirtual 56	com/yelp/android/ui/activities/camera/CameraWrangler$c:a	(Ljava/lang/String;Z)Z
    //   234: pop
    //   235: aload_1
    //   236: athrow
    //   237: astore_2
    //   238: aload_0
    //   239: ldc 66
    //   241: aload_2
    //   242: invokestatic 42	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   245: goto -10 -> 235
    //   248: astore_1
    //   249: aconst_null
    //   250: astore_3
    //   251: aload_2
    //   252: astore 4
    //   254: aload_3
    //   255: astore_2
    //   256: goto -43 -> 213
    //   259: astore_1
    //   260: aload_2
    //   261: astore 4
    //   263: aload_3
    //   264: astore_2
    //   265: goto -52 -> 213
    //   268: astore_1
    //   269: aload 5
    //   271: astore 4
    //   273: aload_3
    //   274: astore_2
    //   275: goto -62 -> 213
    //   278: astore 4
    //   280: aconst_null
    //   281: astore_3
    //   282: aload_2
    //   283: astore_1
    //   284: aload_3
    //   285: astore_2
    //   286: goto -125 -> 161
    //   289: astore 4
    //   291: aload_2
    //   292: astore_1
    //   293: aload_3
    //   294: astore_2
    //   295: goto -134 -> 161
    //   298: astore 4
    //   300: aconst_null
    //   301: astore_3
    //   302: aload_2
    //   303: astore_1
    //   304: aload_3
    //   305: astore_2
    //   306: goto -284 -> 22
    //   309: astore 4
    //   311: aload_2
    //   312: astore_1
    //   313: aload_3
    //   314: astore_2
    //   315: goto -293 -> 22
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	318	0	this	c
    //   0	318	1	paramVarArgs	byte[][]
    //   21	197	2	localFile	File
    //   237	15	2	localIOException1	IOException
    //   255	60	2	localObject1	Object
    //   26	288	3	localObject2	Object
    //   16	15	4	localOutOfMemoryError1	OutOfMemoryError
    //   155	15	4	localIOException2	IOException
    //   211	61	4	localObject3	Object
    //   278	1	4	localIOException3	IOException
    //   289	1	4	localIOException4	IOException
    //   298	1	4	localOutOfMemoryError2	OutOfMemoryError
    //   309	1	4	localOutOfMemoryError3	OutOfMemoryError
    //   23	247	5	arrayOfByte	byte[][]
    // Exception table:
    //   from	to	target	type
    //   0	16	16	java/lang/OutOfMemoryError
    //   58	62	16	java/lang/OutOfMemoryError
    //   70	78	78	java/io/IOException
    //   115	132	134	java/io/IOException
    //   39	56	145	java/io/IOException
    //   0	16	155	java/io/IOException
    //   58	62	155	java/io/IOException
    //   178	195	197	java/io/IOException
    //   0	16	207	finally
    //   58	62	207	finally
    //   217	235	237	java/io/IOException
    //   88	97	248	finally
    //   97	111	259	finally
    //   27	35	268	finally
    //   166	174	268	finally
    //   88	97	278	java/io/IOException
    //   97	111	289	java/io/IOException
    //   88	97	298	java/lang/OutOfMemoryError
    //   97	111	309	java/lang/OutOfMemoryError
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
    CameraWrangler.b(a, false);
  }
  
  public boolean a(String paramString, boolean paramBoolean)
  {
    for (;;)
    {
      int j;
      try
      {
        paramString = new ExifInterface(paramString);
        j = paramString.getAttributeInt("Orientation", 0);
        if ((CameraWrangler.e(a)) && (paramBoolean))
        {
          if (j == 0) {
            break label122;
          }
          if (j == 1)
          {
            break label122;
            if (j != i)
            {
              paramString.setAttribute("Orientation", String.valueOf(i));
              paramString.saveAttributes();
              return true;
            }
          }
          else
          {
            if (j == 3)
            {
              i = 4;
              continue;
            }
            if (j == 6)
            {
              i = 5;
              continue;
            }
            if (j != 8) {
              break label116;
            }
            i = 7;
            continue;
          }
          return false;
        }
      }
      catch (IOException paramString)
      {
        YelpLog.remoteError(this, "Couldn't modify picture orientation tag", paramString);
        return false;
      }
      label116:
      int i = j;
      continue;
      label122:
      i = 2;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.camera.CameraWrangler.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */