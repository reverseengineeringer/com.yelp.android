package pl.droidsonroids.gif;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

@TargetApi(9)
class j
{
  @TargetApi(21)
  private static ZipEntry a(String paramString, ZipFile paramZipFile)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      String[] arrayOfString = Build.SUPPORTED_ABIS;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        ZipEntry localZipEntry = a(paramString, paramZipFile, arrayOfString[i]);
        if (localZipEntry != null) {
          return localZipEntry;
        }
        i += 1;
      }
    }
    return a(paramString, paramZipFile, Build.CPU_ABI);
  }
  
  private static ZipEntry a(String paramString1, ZipFile paramZipFile, String paramString2)
  {
    return paramZipFile.getEntry("lib/" + paramString2 + "/" + paramString1);
  }
  
  private static ZipFile a(File paramFile)
  {
    int i = 0;
    if (i < 5) {}
    for (;;)
    {
      try
      {
        ZipFile localZipFile = new ZipFile(paramFile, 1);
        if (localZipFile != null) {
          break label59;
        }
        throw new RuntimeException("Could not open APK file: " + paramFile.getAbsolutePath());
      }
      catch (IOException localIOException)
      {
        i += 1;
      }
      break;
      label59:
      return localIOException;
      Object localObject = null;
    }
  }
  
  @SuppressLint({"UnsafeDynamicallyLoadedCode"})
  static void a(Context paramContext, String paramString)
  {
    paramString = System.mapLibraryName(paramString);
    try
    {
      System.load(b(paramContext, paramString).getAbsolutePath());
      return;
    }
    finally {}
  }
  
  private static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable) {}
  }
  
  private static void a(File paramFile, FilenameFilter paramFilenameFilter)
  {
    paramFile = paramFile.getParentFile().listFiles(paramFilenameFilter);
    if (paramFile != null)
    {
      int j = paramFile.length;
      int i = 0;
      while (i < j)
      {
        paramFile[i].delete();
        i += 1;
      }
    }
  }
  
  private static void a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte[' '];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  /* Error */
  private static File b(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aconst_null
    //   3: astore 7
    //   5: aconst_null
    //   6: astore 5
    //   8: new 70	java/io/File
    //   11: dup
    //   12: aload_0
    //   13: ldc 127
    //   15: iconst_0
    //   16: invokevirtual 133	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   19: new 39	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   26: aload_1
    //   27: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc -121
    //   32: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokespecial 138	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   41: astore 4
    //   43: aload 4
    //   45: invokevirtual 141	java/io/File:isFile	()Z
    //   48: ifeq +6 -> 54
    //   51: aload 4
    //   53: areturn
    //   54: new 70	java/io/File
    //   57: dup
    //   58: aload_0
    //   59: invokevirtual 144	android/content/Context:getCacheDir	()Ljava/io/File;
    //   62: new 39	java/lang/StringBuilder
    //   65: dup
    //   66: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   69: aload_1
    //   70: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc -121
    //   75: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokespecial 138	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   84: astore 8
    //   86: aload 8
    //   88: invokevirtual 141	java/io/File:isFile	()Z
    //   91: ifeq +6 -> 97
    //   94: aload 8
    //   96: areturn
    //   97: new 6	pl/droidsonroids/gif/j$1
    //   100: dup
    //   101: aload_1
    //   102: invokespecial 145	pl/droidsonroids/gif/j$1:<init>	(Ljava/lang/String;)V
    //   105: astore 6
    //   107: aload 4
    //   109: aload 6
    //   111: invokestatic 147	pl/droidsonroids/gif/j:a	(Ljava/io/File;Ljava/io/FilenameFilter;)V
    //   114: aload 8
    //   116: aload 6
    //   118: invokestatic 147	pl/droidsonroids/gif/j:a	(Ljava/io/File;Ljava/io/FilenameFilter;)V
    //   121: new 70	java/io/File
    //   124: dup
    //   125: aload_0
    //   126: invokevirtual 151	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   129: getfield 156	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   132: invokespecial 157	java/io/File:<init>	(Ljava/lang/String;)V
    //   135: astore_0
    //   136: aload_0
    //   137: invokestatic 159	pl/droidsonroids/gif/j:a	(Ljava/io/File;)Ljava/util/zip/ZipFile;
    //   140: astore 6
    //   142: aload 4
    //   144: astore_0
    //   145: iload_2
    //   146: iconst_1
    //   147: iadd
    //   148: istore_3
    //   149: iload_2
    //   150: iconst_5
    //   151: if_icmpge +102 -> 253
    //   154: aload_1
    //   155: aload 6
    //   157: invokestatic 161	pl/droidsonroids/gif/j:a	(Ljava/lang/String;Ljava/util/zip/ZipFile;)Ljava/util/zip/ZipEntry;
    //   160: astore 4
    //   162: aload 4
    //   164: ifnonnull +49 -> 213
    //   167: new 163	java/lang/IllegalStateException
    //   170: dup
    //   171: new 39	java/lang/StringBuilder
    //   174: dup
    //   175: invokespecial 40	java/lang/StringBuilder:<init>	()V
    //   178: ldc -91
    //   180: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload_1
    //   184: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   187: ldc -89
    //   189: invokevirtual 46	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   195: invokespecial 168	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   198: athrow
    //   199: astore_0
    //   200: aload 6
    //   202: astore_1
    //   203: aload_1
    //   204: ifnull +7 -> 211
    //   207: aload_1
    //   208: invokevirtual 169	java/util/zip/ZipFile:close	()V
    //   211: aload_0
    //   212: athrow
    //   213: aload 6
    //   215: aload 4
    //   217: invokevirtual 173	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   220: astore 4
    //   222: new 175	java/io/FileOutputStream
    //   225: dup
    //   226: aload_0
    //   227: invokespecial 178	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   230: astore 5
    //   232: aload 4
    //   234: aload 5
    //   236: invokestatic 180	pl/droidsonroids/gif/j:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   239: aload 4
    //   241: invokestatic 182	pl/droidsonroids/gif/j:a	(Ljava/io/Closeable;)V
    //   244: aload 5
    //   246: invokestatic 182	pl/droidsonroids/gif/j:a	(Ljava/io/Closeable;)V
    //   249: aload_0
    //   250: invokestatic 184	pl/droidsonroids/gif/j:b	(Ljava/io/File;)V
    //   253: aload_0
    //   254: astore 4
    //   256: aload 6
    //   258: ifnull -207 -> 51
    //   261: aload 6
    //   263: invokevirtual 169	java/util/zip/ZipFile:close	()V
    //   266: aload_0
    //   267: areturn
    //   268: astore_1
    //   269: aload_0
    //   270: areturn
    //   271: astore 4
    //   273: aconst_null
    //   274: astore 5
    //   276: aconst_null
    //   277: astore 4
    //   279: iload_3
    //   280: iconst_2
    //   281: if_icmple +6 -> 287
    //   284: aload 8
    //   286: astore_0
    //   287: aload 4
    //   289: invokestatic 182	pl/droidsonroids/gif/j:a	(Ljava/io/Closeable;)V
    //   292: aload 5
    //   294: invokestatic 182	pl/droidsonroids/gif/j:a	(Ljava/io/Closeable;)V
    //   297: iload_3
    //   298: istore_2
    //   299: goto -154 -> 145
    //   302: aload 4
    //   304: invokestatic 182	pl/droidsonroids/gif/j:a	(Ljava/io/Closeable;)V
    //   307: aload_1
    //   308: invokestatic 182	pl/droidsonroids/gif/j:a	(Ljava/io/Closeable;)V
    //   311: aload_0
    //   312: athrow
    //   313: astore_1
    //   314: goto -103 -> 211
    //   317: astore_0
    //   318: aload 5
    //   320: astore_1
    //   321: goto -118 -> 203
    //   324: astore_0
    //   325: aload 7
    //   327: astore_1
    //   328: goto -26 -> 302
    //   331: astore_0
    //   332: aload 5
    //   334: astore_1
    //   335: goto -33 -> 302
    //   338: astore 5
    //   340: aconst_null
    //   341: astore 5
    //   343: goto -64 -> 279
    //   346: astore 9
    //   348: goto -69 -> 279
    //   351: astore_0
    //   352: aconst_null
    //   353: astore 4
    //   355: aload 7
    //   357: astore_1
    //   358: goto -56 -> 302
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	361	0	paramContext	Context
    //   0	361	1	paramString	String
    //   1	298	2	i	int
    //   148	150	3	j	int
    //   41	214	4	localObject1	Object
    //   271	1	4	localIOException1	IOException
    //   277	77	4	localCloseable	Closeable
    //   6	327	5	localFileOutputStream	java.io.FileOutputStream
    //   338	1	5	localIOException2	IOException
    //   341	1	5	localObject2	Object
    //   105	157	6	localObject3	Object
    //   3	353	7	localObject4	Object
    //   84	201	8	localFile	File
    //   346	1	9	localIOException3	IOException
    // Exception table:
    //   from	to	target	type
    //   154	162	199	finally
    //   167	199	199	finally
    //   239	253	199	finally
    //   287	297	199	finally
    //   302	313	199	finally
    //   261	266	268	java/io/IOException
    //   213	222	271	java/io/IOException
    //   207	211	313	java/io/IOException
    //   136	142	317	finally
    //   222	232	324	finally
    //   232	239	331	finally
    //   222	232	338	java/io/IOException
    //   232	239	346	java/io/IOException
    //   213	222	351	finally
  }
  
  @SuppressLint({"SetWorldReadable"})
  private static void b(File paramFile)
  {
    paramFile.setReadable(true, false);
    paramFile.setExecutable(true, false);
    paramFile.setWritable(true);
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */