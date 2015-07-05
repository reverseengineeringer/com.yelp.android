package com.yelp.android.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.n;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.util.EncodingUtils;

public class l
{
  @TargetApi(18)
  public static long a()
  {
    if (!g()) {
      return -1L;
    }
    StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
    if (n.a(18)) {
      l = localStatFs.getBlockCountLong();
    }
    for (long l = localStatFs.getBlockSizeLong() * l;; l = localStatFs.getBlockSize() * l)
    {
      return l / 1048576L;
      l = localStatFs.getBlockCount();
    }
  }
  
  /* Error */
  public static String a(Uri paramUri, android.content.ContentResolver paramContentResolver)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: iconst_1
    //   4: anewarray 58	java/lang/String
    //   7: astore 5
    //   9: aload 5
    //   11: iconst_0
    //   12: ldc 60
    //   14: aastore
    //   15: aload_1
    //   16: aload_0
    //   17: aload 5
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: invokevirtual 66	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   25: astore_3
    //   26: aload_3
    //   27: invokeinterface 71 1 0
    //   32: istore_2
    //   33: iload_2
    //   34: ifne +17 -> 51
    //   37: aload_3
    //   38: ifnull +9 -> 47
    //   41: aload_3
    //   42: invokeinterface 75 1 0
    //   47: aconst_null
    //   48: astore_0
    //   49: aload_0
    //   50: areturn
    //   51: aload_3
    //   52: aload_3
    //   53: aload 5
    //   55: iconst_0
    //   56: aaload
    //   57: invokeinterface 79 2 0
    //   62: invokeinterface 83 2 0
    //   67: astore_1
    //   68: aload_1
    //   69: astore_0
    //   70: aload_3
    //   71: ifnull -22 -> 49
    //   74: aload_3
    //   75: invokeinterface 75 1 0
    //   80: aload_1
    //   81: areturn
    //   82: astore_0
    //   83: aload 4
    //   85: astore_1
    //   86: aload_1
    //   87: ifnull +9 -> 96
    //   90: aload_1
    //   91: invokeinterface 75 1 0
    //   96: aload_0
    //   97: athrow
    //   98: astore_0
    //   99: aload_3
    //   100: astore_1
    //   101: goto -15 -> 86
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	paramUri	Uri
    //   0	104	1	paramContentResolver	android.content.ContentResolver
    //   32	2	2	bool	boolean
    //   25	75	3	localCursor	android.database.Cursor
    //   1	83	4	localObject	Object
    //   7	47	5	arrayOfString	String[]
    // Exception table:
    //   from	to	target	type
    //   15	26	82	finally
    //   26	33	98	finally
    //   51	68	98	finally
  }
  
  public static String a(String paramString)
  {
    int i = paramString.lastIndexOf('.');
    if (i == -1) {
      return paramString;
    }
    return paramString.substring(0, i);
  }
  
  public static HttpEntity a(String paramString1, String paramString2, List<? extends NameValuePair> paramList)
  {
    paramString1 = EncodingUtils.getAsciiBytes(paramString1);
    try
    {
      paramString2 = new File(paramString2);
      paramString1 = new p(paramList, Collections.singleton(new q(paramString1, paramString1, null, new FileInputStream(paramString2), paramString2.length())), null);
      return paramString1;
    }
    catch (FileNotFoundException paramString1)
    {
      YelpLog.e("FileUtil", "Unable to find file", paramString1);
    }
    return null;
  }
  
  public static boolean a(File paramFile)
  {
    return a(paramFile, f(), Environment.DIRECTORY_PICTURES);
  }
  
  /* Error */
  private static boolean a(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: new 108	java/io/FileInputStream
    //   9: dup
    //   10: aload_0
    //   11: invokespecial 111	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   14: astore_2
    //   15: new 154	java/io/FileOutputStream
    //   18: dup
    //   19: aload_1
    //   20: invokespecial 155	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   23: astore_3
    //   24: aload_2
    //   25: invokevirtual 159	java/io/FileInputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   28: astore_1
    //   29: aload_3
    //   30: invokevirtual 160	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   33: astore 5
    //   35: aload_1
    //   36: lconst_0
    //   37: aload_1
    //   38: invokevirtual 165	java/nio/channels/FileChannel:size	()J
    //   41: aload 5
    //   43: invokevirtual 169	java/nio/channels/FileChannel:transferTo	(JJLjava/nio/channels/WritableByteChannel;)J
    //   46: pop2
    //   47: aload_1
    //   48: ifnull +7 -> 55
    //   51: aload_1
    //   52: invokevirtual 170	java/nio/channels/FileChannel:close	()V
    //   55: aload 5
    //   57: ifnull +8 -> 65
    //   60: aload 5
    //   62: invokevirtual 170	java/nio/channels/FileChannel:close	()V
    //   65: aload_2
    //   66: ifnull +7 -> 73
    //   69: aload_2
    //   70: invokevirtual 171	java/io/FileInputStream:close	()V
    //   73: aload_3
    //   74: ifnull +7 -> 81
    //   77: aload_3
    //   78: invokevirtual 172	java/io/FileOutputStream:close	()V
    //   81: iconst_1
    //   82: ireturn
    //   83: astore_0
    //   84: aload_0
    //   85: invokestatic 176	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   88: iconst_1
    //   89: ireturn
    //   90: astore 4
    //   92: aconst_null
    //   93: astore_0
    //   94: aconst_null
    //   95: astore_3
    //   96: aconst_null
    //   97: astore_2
    //   98: aload 5
    //   100: astore_1
    //   101: aload 4
    //   103: invokestatic 176	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   106: aload_2
    //   107: ifnull +7 -> 114
    //   110: aload_2
    //   111: invokevirtual 170	java/nio/channels/FileChannel:close	()V
    //   114: aload_3
    //   115: ifnull +7 -> 122
    //   118: aload_3
    //   119: invokevirtual 170	java/nio/channels/FileChannel:close	()V
    //   122: aload_1
    //   123: ifnull +7 -> 130
    //   126: aload_1
    //   127: invokevirtual 171	java/io/FileInputStream:close	()V
    //   130: aload_0
    //   131: ifnull +7 -> 138
    //   134: aload_0
    //   135: invokevirtual 172	java/io/FileOutputStream:close	()V
    //   138: iconst_0
    //   139: ireturn
    //   140: astore_0
    //   141: aload_0
    //   142: invokestatic 176	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   145: goto -7 -> 138
    //   148: astore_0
    //   149: aconst_null
    //   150: astore_3
    //   151: aconst_null
    //   152: astore_2
    //   153: aconst_null
    //   154: astore_1
    //   155: aload_1
    //   156: ifnull +7 -> 163
    //   159: aload_1
    //   160: invokevirtual 170	java/nio/channels/FileChannel:close	()V
    //   163: aload 4
    //   165: ifnull +8 -> 173
    //   168: aload 4
    //   170: invokevirtual 170	java/nio/channels/FileChannel:close	()V
    //   173: aload_2
    //   174: ifnull +7 -> 181
    //   177: aload_2
    //   178: invokevirtual 171	java/io/FileInputStream:close	()V
    //   181: aload_3
    //   182: ifnull +7 -> 189
    //   185: aload_3
    //   186: invokevirtual 172	java/io/FileOutputStream:close	()V
    //   189: aload_0
    //   190: athrow
    //   191: astore_1
    //   192: aload_1
    //   193: invokestatic 176	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   196: goto -7 -> 189
    //   199: astore_0
    //   200: aconst_null
    //   201: astore_3
    //   202: aconst_null
    //   203: astore_1
    //   204: goto -49 -> 155
    //   207: astore_0
    //   208: aconst_null
    //   209: astore_1
    //   210: goto -55 -> 155
    //   213: astore_0
    //   214: goto -59 -> 155
    //   217: astore_0
    //   218: aload 5
    //   220: astore 4
    //   222: goto -67 -> 155
    //   225: astore 4
    //   227: aload_0
    //   228: astore 5
    //   230: aload_1
    //   231: astore 6
    //   233: aload_2
    //   234: astore_1
    //   235: aload 4
    //   237: astore_0
    //   238: aload_3
    //   239: astore 4
    //   241: aload 5
    //   243: astore_3
    //   244: aload 6
    //   246: astore_2
    //   247: goto -92 -> 155
    //   250: astore 4
    //   252: aconst_null
    //   253: astore_0
    //   254: aconst_null
    //   255: astore_3
    //   256: aconst_null
    //   257: astore 5
    //   259: aload_2
    //   260: astore_1
    //   261: aload 5
    //   263: astore_2
    //   264: goto -163 -> 101
    //   267: astore 4
    //   269: aload_3
    //   270: astore_0
    //   271: aconst_null
    //   272: astore_3
    //   273: aconst_null
    //   274: astore 5
    //   276: aload_2
    //   277: astore_1
    //   278: aload 5
    //   280: astore_2
    //   281: goto -180 -> 101
    //   284: astore 4
    //   286: aconst_null
    //   287: astore 6
    //   289: aload_1
    //   290: astore 5
    //   292: aload_3
    //   293: astore_0
    //   294: aload_2
    //   295: astore_1
    //   296: aload 5
    //   298: astore_2
    //   299: aload 6
    //   301: astore_3
    //   302: goto -201 -> 101
    //   305: astore 4
    //   307: aload_1
    //   308: astore 6
    //   310: aload_3
    //   311: astore_0
    //   312: aload_2
    //   313: astore_1
    //   314: aload 6
    //   316: astore_2
    //   317: aload 5
    //   319: astore_3
    //   320: goto -219 -> 101
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	323	0	paramFile1	File
    //   0	323	1	paramFile2	File
    //   14	303	2	localObject1	Object
    //   23	297	3	localObject2	Object
    //   1	1	4	localObject3	Object
    //   90	79	4	localIOException1	IOException
    //   220	1	4	localObject4	Object
    //   225	11	4	localObject5	Object
    //   239	1	4	localObject6	Object
    //   250	1	4	localIOException2	IOException
    //   267	1	4	localIOException3	IOException
    //   284	1	4	localIOException4	IOException
    //   305	1	4	localIOException5	IOException
    //   4	314	5	localObject7	Object
    //   231	84	6	localFile	File
    // Exception table:
    //   from	to	target	type
    //   51	55	83	java/io/IOException
    //   60	65	83	java/io/IOException
    //   69	73	83	java/io/IOException
    //   77	81	83	java/io/IOException
    //   6	15	90	java/io/IOException
    //   110	114	140	java/io/IOException
    //   118	122	140	java/io/IOException
    //   126	130	140	java/io/IOException
    //   134	138	140	java/io/IOException
    //   6	15	148	finally
    //   159	163	191	java/io/IOException
    //   168	173	191	java/io/IOException
    //   177	181	191	java/io/IOException
    //   185	189	191	java/io/IOException
    //   15	24	199	finally
    //   24	29	207	finally
    //   29	35	213	finally
    //   35	47	217	finally
    //   101	106	225	finally
    //   15	24	250	java/io/IOException
    //   24	29	267	java/io/IOException
    //   29	35	284	java/io/IOException
    //   35	47	305	java/io/IOException
  }
  
  private static boolean a(File paramFile, String paramString1, String paramString2)
  {
    if (!g()) {
      return false;
    }
    paramString2 = Environment.getExternalStoragePublicDirectory(paramString2);
    paramString2.mkdirs();
    paramString1 = new File(paramString2, paramString1);
    boolean bool = a(paramFile, paramString1);
    if (bool)
    {
      d(paramString1);
      return bool;
    }
    paramString1.delete();
    return bool;
  }
  
  public static boolean a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    boolean bool2 = false;
    try
    {
      byte[] arrayOfByte = new byte[65536];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
      try
      {
        boolean bool1;
        paramOutputStream.close();
      }
      catch (IOException paramOutputStream)
      {
        try
        {
          paramInputStream.close();
          throw ((Throwable)localObject);
          paramOutputStream = paramOutputStream;
          YelpLog.e("FileUtil", "IOException", paramOutputStream);
        }
        catch (IOException paramInputStream)
        {
          for (;;)
          {
            YelpLog.e("FileUtil", "IOException", paramInputStream);
          }
        }
      }
    }
    catch (IOException localIOException)
    {
      YelpLog.e("FileUtil", "IOException", localIOException);
      if (paramOutputStream != null) {}
      try
      {
        paramOutputStream.close();
        bool1 = bool2;
        if (paramInputStream != null) {}
        for (;;)
        {
          try
          {
            paramInputStream.close();
            bool1 = bool2;
            return bool1;
          }
          catch (IOException paramInputStream)
          {
            YelpLog.e("FileUtil", "IOException", paramInputStream);
            return false;
          }
          paramOutputStream.flush();
          bool1 = true;
          if (paramOutputStream != null) {}
          try
          {
            paramOutputStream.close();
            if (paramInputStream == null) {
              continue;
            }
            try
            {
              paramInputStream.close();
              return true;
            }
            catch (IOException paramInputStream)
            {
              YelpLog.e("FileUtil", "IOException", paramInputStream);
              return true;
            }
          }
          catch (IOException paramOutputStream)
          {
            YelpLog.e("FileUtil", "IOException", paramOutputStream);
          }
        }
      }
      catch (IOException paramOutputStream)
      {
        for (;;)
        {
          YelpLog.e("FileUtil", "IOException", paramOutputStream);
        }
      }
    }
    finally
    {
      if (paramOutputStream == null) {}
    }
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    BaseYelpApplication localBaseYelpApplication = BaseYelpApplication.z();
    paramString2 = new File(localBaseYelpApplication.getFilesDir(), paramString2);
    paramString2.delete();
    paramString2.getParentFile().mkdirs();
    try
    {
      boolean bool = a(localBaseYelpApplication.getAssets().open(paramString1), new FileOutputStream(paramString2));
      return bool;
    }
    catch (IOException paramString1)
    {
      YelpLog.error("FileUtil", paramString1);
    }
    return false;
  }
  
  @TargetApi(18)
  public static long b()
  {
    if (!g()) {
      return -1L;
    }
    StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
    if (n.a(18)) {
      l = localStatFs.getAvailableBlocksLong();
    }
    for (long l = localStatFs.getBlockSizeLong() * l;; l = localStatFs.getBlockSize() * l)
    {
      return l / 1048576L;
      l = localStatFs.getAvailableBlocks();
    }
  }
  
  public static String b(String paramString)
  {
    return Uri.fromFile(new File(paramString)).toString();
  }
  
  public static String b(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(a(paramString1));
    if (paramString2.startsWith("\\.")) {}
    for (paramString1 = "";; paramString1 = ".") {
      return paramString1 + paramString2;
    }
  }
  
  public static boolean b(File paramFile)
  {
    return a(paramFile, e(), Environment.DIRECTORY_MOVIES);
  }
  
  public static File c()
  {
    return c("image-upload", f());
  }
  
  private static File c(String paramString1, String paramString2)
  {
    if (!g()) {
      return null;
    }
    paramString1 = BaseYelpApplication.z().getExternalFilesDir(paramString1);
    if (paramString1 == null)
    {
      YelpLog.error("FileUtil", "Unable to open directory to create file.");
      return null;
    }
    paramString1.mkdir();
    return new File(paramString1, paramString2);
  }
  
  public static String c(File paramFile)
  {
    int i = paramFile.getName().lastIndexOf('.');
    if (i == -1) {
      return "";
    }
    return paramFile.getName().substring(i);
  }
  
  public static boolean c(String paramString)
  {
    File localFile = BaseYelpApplication.z().getExternalFilesDir("");
    return (paramString != null) && (localFile != null) && (paramString.startsWith(localFile.getAbsolutePath())) && (new File(paramString).delete());
  }
  
  public static File d()
  {
    return c("video-upload", e());
  }
  
  private static void d(File paramFile)
  {
    Intent localIntent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
    localIntent.setData(Uri.fromFile(paramFile));
    BaseYelpApplication.z().sendBroadcast(localIntent);
  }
  
  private static String e()
  {
    return String.format("%s.mp4", new Object[] { UUID.randomUUID() });
  }
  
  private static String f()
  {
    return String.format("%s.jpg", new Object[] { UUID.randomUUID() });
  }
  
  private static boolean g()
  {
    String str = Environment.getExternalStorageState();
    boolean bool = "mounted".equals(str);
    if (!bool) {
      YelpLog.error("FileUtil", "External storage is not in a writable state. Current state: " + str);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */