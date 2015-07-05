package com.crashlytics.android.internal;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings.Secure;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Scanner;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class bd
{
  public static final Comparator<File> a = new be();
  private static Boolean b = null;
  private static final char[] c = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private static long d = -1L;
  private static Boolean e = null;
  
  public static int a(Context paramContext, String paramString1, String paramString2)
  {
    Resources localResources = paramContext.getResources();
    int i = getApplicationContextgetApplicationInfoicon;
    if (i > 0) {}
    for (paramContext = paramContext.getResources().getResourcePackageName(i);; paramContext = paramContext.getPackageName()) {
      return localResources.getIdentifier(paramString1, paramString2, paramContext);
    }
  }
  
  public static int a(boolean paramBoolean)
  {
    float f = b(cl.a().w());
    if (!paramBoolean) {
      return 1;
    }
    if ((paramBoolean) && (f >= 99.0D)) {
      return 3;
    }
    if ((paramBoolean) && (f < 99.0D)) {
      return 2;
    }
    return 0;
  }
  
  public static long a(Context paramContext)
  {
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    ((ActivityManager)paramContext.getSystemService("activity")).getMemoryInfo(localMemoryInfo);
    return availMem;
  }
  
  private static long a(String paramString1, String paramString2, int paramInt)
  {
    return Long.parseLong(paramString1.split(paramString2)[0].trim()) * paramInt;
  }
  
  public static ActivityManager.RunningAppProcessInfo a(String paramString, Context paramContext)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext != null)
    {
      paramContext = paramContext.iterator();
      while (paramContext.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
        if (processName.equals(paramString)) {
          return localRunningAppProcessInfo;
        }
      }
    }
    return null;
  }
  
  public static SharedPreferences a()
  {
    return cl.a().w().getSharedPreferences("com.crashlytics.prefs", 0);
  }
  
  public static String a(int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("value must be zero or greater");
    }
    return String.format(Locale.US, "%1$10s", new Object[] { Integer.valueOf(paramInt) }).replace(' ', '0');
  }
  
  public static String a(Context paramContext, String paramString)
  {
    int i = a(paramContext, paramString, "string");
    if (i > 0) {
      return paramContext.getString(i);
    }
    return "";
  }
  
  /* Error */
  private static String a(File paramFile, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokevirtual 219	java/io/File:exists	()Z
    //   9: ifeq +86 -> 95
    //   12: new 221	java/io/BufferedReader
    //   15: dup
    //   16: new 223	java/io/FileReader
    //   19: dup
    //   20: aload_0
    //   21: invokespecial 226	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   24: sipush 1024
    //   27: invokespecial 229	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   30: astore_3
    //   31: aload_3
    //   32: astore_2
    //   33: aload_3
    //   34: invokevirtual 232	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload 4
    //   41: astore_2
    //   42: aload 5
    //   44: ifnull +45 -> 89
    //   47: aload_3
    //   48: astore_2
    //   49: ldc -22
    //   51: invokestatic 240	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   54: aload 5
    //   56: iconst_2
    //   57: invokevirtual 243	java/util/regex/Pattern:split	(Ljava/lang/CharSequence;I)[Ljava/lang/String;
    //   60: astore 5
    //   62: aload_3
    //   63: astore_2
    //   64: aload 5
    //   66: arraylength
    //   67: iconst_1
    //   68: if_icmple -37 -> 31
    //   71: aload_3
    //   72: astore_2
    //   73: aload 5
    //   75: iconst_0
    //   76: aaload
    //   77: aload_1
    //   78: invokevirtual 165	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   81: ifeq -50 -> 31
    //   84: aload 5
    //   86: iconst_1
    //   87: aaload
    //   88: astore_2
    //   89: aload_3
    //   90: ldc -11
    //   92: invokestatic 248	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   95: aload_2
    //   96: areturn
    //   97: astore 4
    //   99: aconst_null
    //   100: astore_1
    //   101: aload_1
    //   102: astore_2
    //   103: invokestatic 91	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   106: invokevirtual 251	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   109: ldc -3
    //   111: new 255	java/lang/StringBuilder
    //   114: dup
    //   115: ldc_w 257
    //   118: invokespecial 258	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   121: aload_0
    //   122: invokevirtual 262	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   125: invokevirtual 265	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   128: aload 4
    //   130: invokeinterface 270 4 0
    //   135: aload_1
    //   136: ldc -11
    //   138: invokestatic 248	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   141: aconst_null
    //   142: areturn
    //   143: astore_0
    //   144: aconst_null
    //   145: astore_2
    //   146: aload_2
    //   147: ldc -11
    //   149: invokestatic 248	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   152: aload_0
    //   153: athrow
    //   154: astore_0
    //   155: goto -9 -> 146
    //   158: astore 4
    //   160: aload_3
    //   161: astore_1
    //   162: goto -61 -> 101
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	paramFile	File
    //   0	165	1	paramString	String
    //   1	146	2	localObject1	Object
    //   30	131	3	localBufferedReader	java.io.BufferedReader
    //   3	37	4	localObject2	Object
    //   97	32	4	localException1	Exception
    //   158	1	4	localException2	Exception
    //   37	48	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   12	31	97	java/lang/Exception
    //   12	31	143	finally
    //   33	39	154	finally
    //   49	62	154	finally
    //   64	71	154	finally
    //   73	84	154	finally
    //   103	135	154	finally
    //   33	39	158	java/lang/Exception
    //   49	62	158	java/lang/Exception
    //   64	71	158	java/lang/Exception
    //   73	84	158	java/lang/Exception
  }
  
  public static String a(InputStream paramInputStream)
  {
    paramInputStream = new Scanner(paramInputStream).useDelimiter("\\A");
    if (paramInputStream.hasNext()) {
      return paramInputStream.next();
    }
    return "";
  }
  
  public static String a(String paramString)
  {
    return a(paramString.getBytes(), "SHA-1");
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    char[] arrayOfChar = new char[paramArrayOfByte.length << 1];
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      arrayOfChar[(i << 1)] = c[(j >>> 4)];
      arrayOfChar[((i << 1) + 1)] = c[(j & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  private static String a(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      localMessageDigest.update(paramArrayOfByte);
      return a(localMessageDigest.digest());
    }
    catch (NoSuchAlgorithmException paramArrayOfByte)
    {
      cl.a().b().a("Crashlytics", "Could not create hashing algorithm: " + paramString + ", returning empty string.", paramArrayOfByte);
    }
    return "";
  }
  
  public static String a(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      return null;
    }
    Object localObject = new ArrayList();
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      String str = paramVarArgs[i];
      if (str != null) {
        ((List)localObject).add(str.replace("-", "").toLowerCase(Locale.US));
      }
      i += 1;
    }
    Collections.sort((List)localObject);
    paramVarArgs = new StringBuilder();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramVarArgs.append((String)((Iterator)localObject).next());
    }
    paramVarArgs = paramVarArgs.toString();
    if (paramVarArgs.length() > 0) {
      return a(paramVarArgs);
    }
    return null;
  }
  
  public static void a(int paramInt, String paramString)
  {
    if (e(cl.a().w())) {
      cl.a().b().a(4, "Crashlytics", paramString);
    }
  }
  
  public static void a(Closeable paramCloseable, String paramString)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException paramCloseable)
    {
      cl.a().b().a("Crashlytics", paramString, paramCloseable);
    }
  }
  
  public static void a(Flushable paramFlushable, String paramString)
  {
    if (paramFlushable != null) {}
    try
    {
      paramFlushable.flush();
      return;
    }
    catch (IOException paramFlushable)
    {
      cl.a().b().a("Crashlytics", paramString, paramFlushable);
    }
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    for (;;)
    {
      int i = paramInputStream.read(paramArrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(paramArrayOfByte, 0, i);
    }
  }
  
  public static boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    int i;
    if (paramContext != null)
    {
      Resources localResources = paramContext.getResources();
      bool = paramBoolean;
      if (localResources != null)
      {
        i = a(paramContext, paramString, "bool");
        if (i <= 0) {
          break label45;
        }
        bool = localResources.getBoolean(i);
      }
    }
    label45:
    do
    {
      return bool;
      i = a(paramContext, paramString, "string");
      bool = paramBoolean;
    } while (i <= 0);
    return Boolean.parseBoolean(paramContext.getString(i));
  }
  
  public static float b(Context paramContext)
  {
    paramContext = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    int i = paramContext.getIntExtra("level", -1);
    int j = paramContext.getIntExtra("scale", -1);
    return i / j;
  }
  
  public static int b()
  {
    return ad.a().ordinal();
  }
  
  public static long b(String paramString)
  {
    paramString = new StatFs(paramString);
    long l = paramString.getBlockSize();
    return paramString.getBlockCount() * l - paramString.getAvailableBlocks() * l;
  }
  
  public static String b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "?";
    case 7: 
      return "A";
    case 3: 
      return "D";
    case 6: 
      return "E";
    case 4: 
      return "I";
    case 2: 
      return "V";
    }
    return "W";
  }
  
  private static String b(InputStream paramInputStream)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
      byte[] arrayOfByte = new byte['Ѐ'];
      for (;;)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localMessageDigest.update(arrayOfByte, 0, i);
      }
      paramInputStream = a(localMessageDigest.digest());
    }
    catch (Exception paramInputStream)
    {
      cl.a().b().a("Crashlytics", "Could not calculate hash for app icon.", paramInputStream);
      return "";
    }
    return paramInputStream;
  }
  
  public static Cipher b(int paramInt, String paramString)
  {
    if (paramString.length() < 32) {
      throw new InvalidKeyException("Key must be at least 32 bytes.");
    }
    paramString = new SecretKeySpec(paramString.getBytes(), 0, 32, "AES/ECB/PKCS7Padding");
    try
    {
      Cipher localCipher = Cipher.getInstance("AES/ECB/PKCS7Padding");
      localCipher.init(1, paramString);
      return localCipher;
    }
    catch (GeneralSecurityException paramString)
    {
      cl.a().b().a("Crashlytics", "Could not create Cipher for AES/ECB/PKCS7Padding - should never happen.", paramString);
      throw new RuntimeException(paramString);
    }
  }
  
  /* Error */
  public static long c()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 40	com/crashlytics/android/internal/bd:d	J
    //   6: ldc2_w 37
    //   9: lcmp
    //   10: ifne +60 -> 70
    //   13: new 216	java/io/File
    //   16: dup
    //   17: ldc_w 490
    //   20: invokespecial 491	java/io/File:<init>	(Ljava/lang/String;)V
    //   23: ldc_w 493
    //   26: invokestatic 495	com/crashlytics/android/internal/bd:a	(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    //   29: astore_2
    //   30: aload_2
    //   31: invokestatic 501	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   34: ifne +160 -> 194
    //   37: aload_2
    //   38: getstatic 185	java/util/Locale:US	Ljava/util/Locale;
    //   41: invokevirtual 504	java/lang/String:toUpperCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   44: astore_2
    //   45: aload_2
    //   46: ldc_w 506
    //   49: invokevirtual 509	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   52: ifeq +27 -> 79
    //   55: aload_2
    //   56: ldc_w 506
    //   59: sipush 1024
    //   62: invokestatic 511	com/crashlytics/android/internal/bd:a	(Ljava/lang/String;Ljava/lang/String;I)J
    //   65: lstore_0
    //   66: lload_0
    //   67: putstatic 40	com/crashlytics/android/internal/bd:d	J
    //   70: getstatic 40	com/crashlytics/android/internal/bd:d	J
    //   73: lstore_0
    //   74: ldc 2
    //   76: monitorexit
    //   77: lload_0
    //   78: lreturn
    //   79: aload_2
    //   80: ldc_w 513
    //   83: invokevirtual 509	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   86: ifeq +17 -> 103
    //   89: aload_2
    //   90: ldc_w 513
    //   93: ldc_w 514
    //   96: invokestatic 511	com/crashlytics/android/internal/bd:a	(Ljava/lang/String;Ljava/lang/String;I)J
    //   99: lstore_0
    //   100: goto -34 -> 66
    //   103: aload_2
    //   104: ldc_w 516
    //   107: invokevirtual 509	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   110: ifeq +17 -> 127
    //   113: aload_2
    //   114: ldc_w 516
    //   117: ldc_w 517
    //   120: invokestatic 511	com/crashlytics/android/internal/bd:a	(Ljava/lang/String;Ljava/lang/String;I)J
    //   123: lstore_0
    //   124: goto -58 -> 66
    //   127: invokestatic 91	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   130: invokevirtual 251	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   133: ldc -3
    //   135: new 255	java/lang/StringBuilder
    //   138: dup
    //   139: ldc_w 519
    //   142: invokespecial 258	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   145: aload_2
    //   146: invokevirtual 321	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 265	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: invokeinterface 522 3 0
    //   157: lconst_0
    //   158: lstore_0
    //   159: goto -93 -> 66
    //   162: astore_3
    //   163: invokestatic 91	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   166: invokevirtual 251	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   169: ldc -3
    //   171: new 255	java/lang/StringBuilder
    //   174: dup
    //   175: ldc_w 519
    //   178: invokespecial 258	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   181: aload_2
    //   182: invokevirtual 321	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: invokevirtual 265	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: aload_3
    //   189: invokeinterface 270 4 0
    //   194: lconst_0
    //   195: lstore_0
    //   196: goto -130 -> 66
    //   199: astore_2
    //   200: ldc 2
    //   202: monitorexit
    //   203: aload_2
    //   204: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   65	131	0	l	long
    //   29	153	2	str	String
    //   199	5	2	localObject	Object
    //   162	27	3	localNumberFormatException	NumberFormatException
    // Exception table:
    //   from	to	target	type
    //   45	66	162	java/lang/NumberFormatException
    //   79	100	162	java/lang/NumberFormatException
    //   103	124	162	java/lang/NumberFormatException
    //   127	157	162	java/lang/NumberFormatException
    //   3	45	199	finally
    //   45	66	199	finally
    //   66	70	199	finally
    //   70	74	199	finally
    //   79	100	199	finally
    //   103	124	199	finally
    //   127	157	199	finally
    //   163	194	199	finally
  }
  
  public static void c(String paramString)
  {
    if (e(cl.a().w())) {
      cl.a().b().a("Crashlytics", paramString);
    }
  }
  
  public static boolean c(Context paramContext)
  {
    if (d()) {
      return false;
    }
    return ((SensorManager)paramContext.getSystemService("sensor")).getDefaultSensor(8) != null;
  }
  
  public static void d(String paramString)
  {
    if (e(cl.a().w())) {
      cl.a().b().d("Crashlytics", paramString);
    }
  }
  
  public static boolean d()
  {
    String str = Settings.Secure.getString(cl.a().w().getContentResolver(), "android_id");
    return ("sdk".equals(Build.PRODUCT)) || ("google_sdk".equals(Build.PRODUCT)) || (str == null);
  }
  
  public static boolean d(Context paramContext)
  {
    boolean bool = false;
    if (e == null)
    {
      if (!a(paramContext, "com.crashlytics.SilenceCrashlyticsLogCat", false)) {
        bool = true;
      }
      e = Boolean.valueOf(bool);
    }
    return e.booleanValue();
  }
  
  public static boolean e()
  {
    boolean bool = d();
    Object localObject = Build.TAGS;
    if ((!bool) && (localObject != null) && (((String)localObject).contains("test-keys"))) {}
    do
    {
      do
      {
        return true;
      } while (new File("/system/app/Superuser.apk").exists());
      localObject = new File("/system/xbin/su");
    } while ((!bool) && (((File)localObject).exists()));
    return false;
  }
  
  public static boolean e(Context paramContext)
  {
    if (b == null) {
      b = Boolean.valueOf(a(paramContext, "com.crashlytics.Trace", false));
    }
    return b.booleanValue();
  }
  
  public static boolean e(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static int f()
  {
    int k = 0;
    if (d()) {}
    for (int j = 1;; j = 0)
    {
      int i = j;
      if (e()) {
        i = j | 0x2;
      }
      if (!Debug.isDebuggerConnected())
      {
        j = k;
        if (!Debug.waitingForDebugger()) {}
      }
      else
      {
        j = 1;
      }
      k = i;
      if (j != 0) {
        k = i | 0x4;
      }
      return k;
    }
  }
  
  public static boolean f(Context paramContext)
  {
    return (getApplicationInfoflags & 0x2) != 0;
  }
  
  /* Error */
  public static String g(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokevirtual 57	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   6: aload_0
    //   7: invokestatic 598	com/crashlytics/android/internal/bd:h	(Landroid/content/Context;)I
    //   10: invokevirtual 602	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   13: astore_0
    //   14: aload_0
    //   15: astore_2
    //   16: aload_0
    //   17: invokestatic 604	com/crashlytics/android/internal/bd:b	(Ljava/io/InputStream;)Ljava/lang/String;
    //   20: astore 4
    //   22: aload_0
    //   23: astore_2
    //   24: aload 4
    //   26: invokestatic 606	com/crashlytics/android/internal/bd:e	(Ljava/lang/String;)Z
    //   29: istore_1
    //   30: iload_1
    //   31: ifeq +14 -> 45
    //   34: aload_3
    //   35: astore_2
    //   36: aload_0
    //   37: ldc_w 608
    //   40: invokestatic 248	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   43: aload_2
    //   44: areturn
    //   45: aload 4
    //   47: astore_2
    //   48: goto -12 -> 36
    //   51: astore_3
    //   52: aconst_null
    //   53: astore_0
    //   54: aload_0
    //   55: astore_2
    //   56: invokestatic 91	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   59: invokevirtual 251	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   62: ldc -3
    //   64: ldc_w 454
    //   67: aload_3
    //   68: invokeinterface 270 4 0
    //   73: aload_0
    //   74: ldc_w 608
    //   77: invokestatic 248	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   80: aconst_null
    //   81: areturn
    //   82: astore_0
    //   83: aconst_null
    //   84: astore_2
    //   85: aload_2
    //   86: ldc_w 608
    //   89: invokestatic 248	com/crashlytics/android/internal/bd:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   92: aload_0
    //   93: athrow
    //   94: astore_0
    //   95: goto -10 -> 85
    //   98: astore_3
    //   99: goto -45 -> 54
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	paramContext	Context
    //   29	2	1	bool	boolean
    //   15	71	2	localObject1	Object
    //   1	34	3	localObject2	Object
    //   51	17	3	localException1	Exception
    //   98	1	3	localException2	Exception
    //   20	26	4	str	String
    // Exception table:
    //   from	to	target	type
    //   2	14	51	java/lang/Exception
    //   2	14	82	finally
    //   16	22	94	finally
    //   24	30	94	finally
    //   56	73	94	finally
    //   16	22	98	java/lang/Exception
    //   24	30	98	java/lang/Exception
  }
  
  public static int h(Context paramContext)
  {
    return getApplicationContextgetApplicationInfoicon;
  }
  
  public static String i(Context paramContext)
  {
    String str = null;
    int i = a(paramContext, "com.crashlytics.android.build_id", "string");
    if (i != 0)
    {
      str = paramContext.getResources().getString(i);
      cl.a().b().a("Crashlytics", "Build ID is: " + str);
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */