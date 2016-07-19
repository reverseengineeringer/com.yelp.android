package com.crashlytics.android.core;

import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Environment;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.settings.s;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class i
  implements Thread.UncaughtExceptionHandler
{
  static final FilenameFilter a = new FilenameFilter()
  {
    public boolean accept(File paramAnonymousFile, String paramAnonymousString)
    {
      return (paramAnonymousString.length() == ".cls".length() + 35) && (paramAnonymousString.endsWith(".cls"));
    }
  };
  static final Comparator<File> b = new Comparator()
  {
    public int a(File paramAnonymousFile1, File paramAnonymousFile2)
    {
      return paramAnonymousFile2.getName().compareTo(paramAnonymousFile1.getName());
    }
  };
  static final Comparator<File> c = new Comparator()
  {
    public int a(File paramAnonymousFile1, File paramAnonymousFile2)
    {
      return paramAnonymousFile1.getName().compareTo(paramAnonymousFile2.getName());
    }
  };
  static final FilenameFilter d = new FilenameFilter()
  {
    public boolean accept(File paramAnonymousFile, String paramAnonymousString)
    {
      return i.h().matcher(paramAnonymousString).matches();
    }
  };
  private static final Pattern e = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");
  private static final Map<String, String> f = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");
  private final AtomicInteger g = new AtomicInteger(0);
  private final AtomicBoolean h = new AtomicBoolean(false);
  private final Thread.UncaughtExceptionHandler i;
  private final File j;
  private final AtomicBoolean k;
  private final BroadcastReceiver l;
  private final BroadcastReceiver m;
  private final f n;
  private final IdManager o;
  private boolean p;
  private final e q;
  private final p r;
  private final w s;
  
  i(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, g paramg, f paramf, IdManager paramIdManager, w paramw, e parame)
  {
    i = paramUncaughtExceptionHandler;
    n = paramf;
    o = paramIdManager;
    q = parame;
    s = paramw;
    k = new AtomicBoolean(false);
    j = parame.u();
    r = new p(parame.B(), j);
    a(paramg);
    m = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        i.a(i.this, true);
      }
    };
    paramUncaughtExceptionHandler = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
    l = new BroadcastReceiver()
    {
      public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
      {
        i.a(i.this, false);
      }
    };
    paramg = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
    paramf = parame.B();
    paramf.registerReceiver(m, paramUncaughtExceptionHandler);
    paramf.registerReceiver(l, paramg);
    h.set(true);
  }
  
  private String a(File paramFile)
  {
    return paramFile.getName().substring(0, 35);
  }
  
  private void a(int paramInt)
  {
    int i1 = 0;
    HashSet localHashSet = new HashSet();
    File[] arrayOfFile = e();
    Arrays.sort(arrayOfFile, b);
    int i2 = Math.min(paramInt, arrayOfFile.length);
    paramInt = 0;
    while (paramInt < i2)
    {
      localHashSet.add(a(arrayOfFile[paramInt]));
      paramInt += 1;
    }
    arrayOfFile = a(new a(null));
    i2 = arrayOfFile.length;
    paramInt = i1;
    while (paramInt < i2)
    {
      File localFile = arrayOfFile[paramInt];
      String str = localFile.getName();
      Matcher localMatcher = e.matcher(str);
      localMatcher.matches();
      if (!localHashSet.contains(localMatcher.group(1)))
      {
        io.fabric.sdk.android.c.h().a("Fabric", "Trimming open session file: " + str);
        localFile.delete();
      }
      paramInt += 1;
    }
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, File paramFile)
    throws IOException
  {
    if (paramFile.exists())
    {
      byte[] arrayOfByte = new byte[(int)paramFile.length()];
      try
      {
        paramFile = new FileInputStream(paramFile);
        int i1 = 0;
        int i2;
        CommonUtils.a(paramFile, "Failed to close file input stream.");
      }
      finally
      {
        try
        {
          while (i1 < arrayOfByte.length)
          {
            i2 = paramFile.read(arrayOfByte, i1, arrayOfByte.length - i1);
            if (i2 < 0) {
              break;
            }
            i1 += i2;
          }
          CommonUtils.a(paramFile, "Failed to close file input stream.");
          paramCodedOutputStream.a(arrayOfByte);
          return;
        }
        finally
        {
          for (;;) {}
        }
        paramCodedOutputStream = finally;
        paramFile = null;
      }
      throw paramCodedOutputStream;
    }
    io.fabric.sdk.android.c.h().e("Fabric", "Tried to include a file that doesn't exist: " + paramFile.getName(), null);
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, String paramString)
    throws IOException
  {
    String[] arrayOfString = new String[4];
    arrayOfString[0] = "SessionUser";
    arrayOfString[1] = "SessionApp";
    arrayOfString[2] = "SessionOS";
    arrayOfString[3] = "SessionDevice";
    int i2 = arrayOfString.length;
    int i1 = 0;
    if (i1 < i2)
    {
      String str = arrayOfString[i1];
      File[] arrayOfFile = a(new b(paramString + str));
      if (arrayOfFile.length == 0) {
        io.fabric.sdk.android.c.h().e("Fabric", "Can't find " + str + " data for session ID " + paramString, null);
      }
      for (;;)
      {
        i1 += 1;
        break;
        io.fabric.sdk.android.c.h().a("Fabric", "Collecting " + str + " data for session ID " + paramString);
        a(paramCodedOutputStream, arrayOfFile[0]);
      }
    }
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, Date paramDate, Thread paramThread, Throwable paramThrowable, String paramString, boolean paramBoolean)
    throws Exception
  {
    Context localContext = q.B();
    long l1 = paramDate.getTime() / 1000L;
    float f1 = CommonUtils.c(localContext);
    int i2 = CommonUtils.a(localContext, p);
    boolean bool = CommonUtils.d(localContext);
    int i3 = getResourcesgetConfigurationorientation;
    long l2 = CommonUtils.b();
    long l3 = CommonUtils.b(localContext);
    long l4 = CommonUtils.b(Environment.getDataDirectory().getPath());
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = CommonUtils.a(localContext.getPackageName(), localContext);
    LinkedList localLinkedList = new LinkedList();
    StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
    if (paramBoolean)
    {
      localObject = Thread.getAllStackTraces();
      paramDate = new Thread[((Map)localObject).size()];
      Iterator localIterator = ((Map)localObject).entrySet().iterator();
      int i1 = 0;
      for (;;)
      {
        localObject = paramDate;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (Map.Entry)localIterator.next();
        paramDate[i1] = ((Thread)((Map.Entry)localObject).getKey());
        localLinkedList.add(((Map.Entry)localObject).getValue());
        i1 += 1;
      }
    }
    Object localObject = new Thread[0];
    if (!CommonUtils.a(localContext, "com.crashlytics.CollectCustomKeys", true)) {
      paramDate = new TreeMap();
    }
    for (;;)
    {
      s.a(paramCodedOutputStream, l1, paramThread, paramThrowable, paramString, (Thread[])localObject, f1, i2, bool, i3, l2 - l3, l4, localRunningAppProcessInfo, localLinkedList, arrayOfStackTraceElement, r, paramDate);
      return;
      paramDate = q.g();
      if ((paramDate != null) && (paramDate.size() > 1)) {
        paramDate = new TreeMap(paramDate);
      }
    }
  }
  
  private void a(CodedOutputStream paramCodedOutputStream, File[] paramArrayOfFile, String paramString)
  {
    Arrays.sort(paramArrayOfFile, CommonUtils.a);
    int i2 = paramArrayOfFile.length;
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2)
      {
        File localFile = paramArrayOfFile[i1];
        try
        {
          io.fabric.sdk.android.c.h().a("Fabric", String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", new Object[] { paramString, localFile.getName() }));
          a(paramCodedOutputStream, localFile);
          i1 += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            io.fabric.sdk.android.c.h().e("Fabric", "Error writting non-fatal to session.", localException);
          }
        }
      }
    }
  }
  
  private void a(d paramd)
  {
    if (paramd != null) {}
    try
    {
      paramd.a();
      return;
    }
    catch (IOException paramd)
    {
      io.fabric.sdk.android.c.h().e("Fabric", "Error closing session file stream in the presence of an exception", paramd);
    }
  }
  
  private void a(g paramg)
  {
    io.fabric.sdk.android.c.h().a("Fabric", "Checking for previous crash marker.");
    File localFile = new File(q.u(), "crash_marker");
    if (localFile.exists())
    {
      localFile.delete();
      if (paramg == null) {}
    }
    try
    {
      paramg.a();
      return;
    }
    catch (Exception paramg)
    {
      io.fabric.sdk.android.c.h().e("Fabric", "Exception thrown by CrashlyticsListener while notifying of previous crash.", paramg);
    }
  }
  
  /* Error */
  private void a(com.yelp.android.ax.d paramd)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: invokespecial 512	com/crashlytics/android/core/i:j	()Ljava/lang/String;
    //   6: astore 4
    //   8: aload 4
    //   10: ifnull +90 -> 100
    //   13: aload 4
    //   15: invokestatic 514	com/crashlytics/android/core/e:d	(Ljava/lang/String;)V
    //   18: new 486	com/crashlytics/android/core/d
    //   21: dup
    //   22: aload_0
    //   23: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   26: new 267	java/lang/StringBuilder
    //   29: dup
    //   30: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   33: aload 4
    //   35: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: ldc_w 516
    //   41: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokespecial 517	com/crashlytics/android/core/d:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   50: astore_2
    //   51: aload_2
    //   52: invokestatic 520	com/crashlytics/android/core/CodedOutputStream:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    //   55: astore_3
    //   56: new 522	com/crashlytics/android/core/q
    //   59: dup
    //   60: aload_0
    //   61: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   64: invokespecial 523	com/crashlytics/android/core/q:<init>	(Ljava/io/File;)V
    //   67: aload 4
    //   69: invokevirtual 526	com/crashlytics/android/core/q:b	(Ljava/lang/String;)Ljava/util/Map;
    //   72: astore 4
    //   74: aload_1
    //   75: aload_0
    //   76: getfield 166	com/crashlytics/android/core/i:r	Lcom/crashlytics/android/core/p;
    //   79: aload 4
    //   81: aload_3
    //   82: invokestatic 531	com/crashlytics/android/core/r:a	(Lcom/yelp/android/ax/d;Lcom/crashlytics/android/core/p;Ljava/util/Map;Lcom/crashlytics/android/core/CodedOutputStream;)V
    //   85: aload_3
    //   86: ldc_w 533
    //   89: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   92: aload_2
    //   93: ldc_w 538
    //   96: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   99: return
    //   100: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   103: ldc_w 265
    //   106: ldc_w 540
    //   109: aconst_null
    //   110: invokeinterface 321 4 0
    //   115: aconst_null
    //   116: astore_2
    //   117: goto -32 -> 85
    //   120: astore_1
    //   121: aconst_null
    //   122: astore_3
    //   123: aconst_null
    //   124: astore_2
    //   125: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   128: ldc_w 265
    //   131: ldc_w 542
    //   134: aload_1
    //   135: invokeinterface 321 4 0
    //   140: aload_1
    //   141: aload_3
    //   142: invokestatic 547	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   145: aload_2
    //   146: ldc_w 533
    //   149: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   152: aload_3
    //   153: ldc_w 538
    //   156: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   159: return
    //   160: astore_1
    //   161: aconst_null
    //   162: astore_3
    //   163: aconst_null
    //   164: astore_2
    //   165: aload_2
    //   166: ldc_w 533
    //   169: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   172: aload_3
    //   173: ldc_w 538
    //   176: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   179: aload_1
    //   180: athrow
    //   181: astore_1
    //   182: aload_2
    //   183: astore_3
    //   184: aconst_null
    //   185: astore_2
    //   186: goto -21 -> 165
    //   189: astore_1
    //   190: aload_2
    //   191: astore 4
    //   193: aload_3
    //   194: astore_2
    //   195: aload 4
    //   197: astore_3
    //   198: goto -33 -> 165
    //   201: astore_1
    //   202: goto -37 -> 165
    //   205: astore_1
    //   206: aload_2
    //   207: astore_3
    //   208: aconst_null
    //   209: astore_2
    //   210: goto -85 -> 125
    //   213: astore_1
    //   214: aload_2
    //   215: astore 4
    //   217: aload_3
    //   218: astore_2
    //   219: aload 4
    //   221: astore_3
    //   222: goto -97 -> 125
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	225	0	this	i
    //   0	225	1	paramd	com.yelp.android.ax.d
    //   50	169	2	localObject1	Object
    //   1	221	3	localObject2	Object
    //   6	214	4	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	8	120	java/lang/Exception
    //   13	51	120	java/lang/Exception
    //   100	115	120	java/lang/Exception
    //   2	8	160	finally
    //   13	51	160	finally
    //   100	115	160	finally
    //   51	56	181	finally
    //   56	85	189	finally
    //   125	145	201	finally
    //   51	56	205	java/lang/Exception
    //   56	85	213	java/lang/Exception
  }
  
  /* Error */
  private void a(File paramFile, String paramString, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   6: ldc_w 265
    //   9: new 267	java/lang/StringBuilder
    //   12: dup
    //   13: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   16: ldc_w 550
    //   19: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: aload_2
    //   23: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokeinterface 282 3 0
    //   34: aload_0
    //   35: new 43	com/crashlytics/android/core/i$b
    //   38: dup
    //   39: new 267	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   46: aload_2
    //   47: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: ldc_w 516
    //   53: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: invokespecial 332	com/crashlytics/android/core/i$b:<init>	(Ljava/lang/String;)V
    //   62: invokespecial 241	com/crashlytics/android/core/i:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   65: astore 9
    //   67: aload 9
    //   69: ifnull +408 -> 477
    //   72: aload 9
    //   74: arraylength
    //   75: ifle +402 -> 477
    //   78: iconst_1
    //   79: istore 4
    //   81: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   84: ldc_w 265
    //   87: getstatic 475	java/util/Locale:US	Ljava/util/Locale;
    //   90: ldc_w 552
    //   93: iconst_2
    //   94: anewarray 4	java/lang/Object
    //   97: dup
    //   98: iconst_0
    //   99: aload_2
    //   100: aastore
    //   101: dup
    //   102: iconst_1
    //   103: iload 4
    //   105: invokestatic 558	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   108: aastore
    //   109: invokestatic 481	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   112: invokeinterface 282 3 0
    //   117: aload_0
    //   118: new 43	com/crashlytics/android/core/i$b
    //   121: dup
    //   122: new 267	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   129: aload_2
    //   130: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: ldc_w 560
    //   136: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: invokespecial 332	com/crashlytics/android/core/i$b:<init>	(Ljava/lang/String;)V
    //   145: invokespecial 241	com/crashlytics/android/core/i:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   148: astore 8
    //   150: aload 8
    //   152: ifnull +331 -> 483
    //   155: aload 8
    //   157: arraylength
    //   158: ifle +325 -> 483
    //   161: iconst_1
    //   162: istore 5
    //   164: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   167: ldc_w 265
    //   170: getstatic 475	java/util/Locale:US	Ljava/util/Locale;
    //   173: ldc_w 562
    //   176: iconst_2
    //   177: anewarray 4	java/lang/Object
    //   180: dup
    //   181: iconst_0
    //   182: aload_2
    //   183: aastore
    //   184: dup
    //   185: iconst_1
    //   186: iload 5
    //   188: invokestatic 558	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   191: aastore
    //   192: invokestatic 481	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   195: invokeinterface 282 3 0
    //   200: iload 4
    //   202: ifne +8 -> 210
    //   205: iload 5
    //   207: ifeq +369 -> 576
    //   210: new 486	com/crashlytics/android/core/d
    //   213: dup
    //   214: aload_0
    //   215: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   218: aload_2
    //   219: invokespecial 517	com/crashlytics/android/core/d:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   222: astore 6
    //   224: aload 6
    //   226: invokestatic 520	com/crashlytics/android/core/CodedOutputStream:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    //   229: astore 7
    //   231: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   234: ldc_w 265
    //   237: new 267	java/lang/StringBuilder
    //   240: dup
    //   241: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   244: ldc_w 564
    //   247: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: aload_2
    //   251: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   257: invokeinterface 282 3 0
    //   262: aload_0
    //   263: aload 7
    //   265: aload_1
    //   266: invokespecial 340	com/crashlytics/android/core/i:a	(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V
    //   269: aload 7
    //   271: iconst_4
    //   272: new 345	java/util/Date
    //   275: dup
    //   276: invokespecial 565	java/util/Date:<init>	()V
    //   279: invokevirtual 348	java/util/Date:getTime	()J
    //   282: ldc2_w 349
    //   285: ldiv
    //   286: invokevirtual 568	com/crashlytics/android/core/CodedOutputStream:a	(IJ)V
    //   289: aload 7
    //   291: iconst_5
    //   292: iload 4
    //   294: invokevirtual 571	com/crashlytics/android/core/CodedOutputStream:a	(IZ)V
    //   297: aload_0
    //   298: aload 7
    //   300: aload_2
    //   301: invokespecial 573	com/crashlytics/android/core/i:a	(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;)V
    //   304: iload 5
    //   306: ifeq +87 -> 393
    //   309: aload 8
    //   311: arraylength
    //   312: iload_3
    //   313: if_icmple +329 -> 642
    //   316: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   319: ldc_w 265
    //   322: getstatic 475	java/util/Locale:US	Ljava/util/Locale;
    //   325: ldc_w 575
    //   328: iconst_1
    //   329: anewarray 4	java/lang/Object
    //   332: dup
    //   333: iconst_0
    //   334: iload_3
    //   335: invokestatic 580	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   338: aastore
    //   339: invokestatic 481	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   342: invokeinterface 282 3 0
    //   347: aload_0
    //   348: aload_2
    //   349: iload_3
    //   350: invokespecial 583	com/crashlytics/android/core/i:a	(Ljava/lang/String;I)V
    //   353: aload_0
    //   354: new 43	com/crashlytics/android/core/i$b
    //   357: dup
    //   358: new 267	java/lang/StringBuilder
    //   361: dup
    //   362: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   365: aload_2
    //   366: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: ldc_w 560
    //   372: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   375: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   378: invokespecial 332	com/crashlytics/android/core/i$b:<init>	(Ljava/lang/String;)V
    //   381: invokespecial 241	com/crashlytics/android/core/i:a	(Ljava/io/FilenameFilter;)[Ljava/io/File;
    //   384: astore_1
    //   385: aload_0
    //   386: aload 7
    //   388: aload_1
    //   389: aload_2
    //   390: invokespecial 585	com/crashlytics/android/core/i:a	(Lcom/crashlytics/android/core/CodedOutputStream;[Ljava/io/File;Ljava/lang/String;)V
    //   393: iload 4
    //   395: ifeq +13 -> 408
    //   398: aload_0
    //   399: aload 7
    //   401: aload 9
    //   403: iconst_0
    //   404: aaload
    //   405: invokespecial 340	com/crashlytics/android/core/i:a	(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/io/File;)V
    //   408: aload 7
    //   410: bipush 11
    //   412: iconst_1
    //   413: invokevirtual 588	com/crashlytics/android/core/CodedOutputStream:a	(II)V
    //   416: aload 7
    //   418: bipush 12
    //   420: iconst_3
    //   421: invokevirtual 590	com/crashlytics/android/core/CodedOutputStream:b	(II)V
    //   424: aload 7
    //   426: ldc_w 592
    //   429: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   432: aload 6
    //   434: ldc_w 594
    //   437: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   440: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   443: ldc_w 265
    //   446: new 267	java/lang/StringBuilder
    //   449: dup
    //   450: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   453: ldc_w 596
    //   456: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: aload_2
    //   460: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   463: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   466: invokeinterface 282 3 0
    //   471: aload_0
    //   472: aload_2
    //   473: invokespecial 598	com/crashlytics/android/core/i:a	(Ljava/lang/String;)V
    //   476: return
    //   477: iconst_0
    //   478: istore 4
    //   480: goto -399 -> 81
    //   483: iconst_0
    //   484: istore 5
    //   486: goto -322 -> 164
    //   489: astore 8
    //   491: aconst_null
    //   492: astore_1
    //   493: aload 7
    //   495: astore 6
    //   497: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   500: ldc_w 265
    //   503: new 267	java/lang/StringBuilder
    //   506: dup
    //   507: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   510: ldc_w 600
    //   513: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   516: aload_2
    //   517: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   520: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   523: aload 8
    //   525: invokeinterface 321 4 0
    //   530: aload 8
    //   532: aload 6
    //   534: invokestatic 547	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   537: aload_1
    //   538: ldc_w 592
    //   541: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   544: aload_0
    //   545: aload 6
    //   547: invokespecial 602	com/crashlytics/android/core/i:a	(Lcom/crashlytics/android/core/d;)V
    //   550: goto -110 -> 440
    //   553: astore_2
    //   554: aconst_null
    //   555: astore_1
    //   556: aconst_null
    //   557: astore 6
    //   559: aload_1
    //   560: ldc_w 592
    //   563: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   566: aload 6
    //   568: ldc_w 594
    //   571: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   574: aload_2
    //   575: athrow
    //   576: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   579: ldc_w 265
    //   582: new 267	java/lang/StringBuilder
    //   585: dup
    //   586: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   589: ldc_w 604
    //   592: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   595: aload_2
    //   596: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   599: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   602: invokeinterface 282 3 0
    //   607: goto -167 -> 440
    //   610: astore_2
    //   611: aconst_null
    //   612: astore_1
    //   613: goto -54 -> 559
    //   616: astore_2
    //   617: aload 7
    //   619: astore_1
    //   620: goto -61 -> 559
    //   623: astore_2
    //   624: goto -65 -> 559
    //   627: astore 8
    //   629: aconst_null
    //   630: astore_1
    //   631: goto -134 -> 497
    //   634: astore 8
    //   636: aload 7
    //   638: astore_1
    //   639: goto -142 -> 497
    //   642: aload 8
    //   644: astore_1
    //   645: goto -260 -> 385
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	648	0	this	i
    //   0	648	1	paramFile	File
    //   0	648	2	paramString	String
    //   0	648	3	paramInt	int
    //   79	400	4	bool1	boolean
    //   162	323	5	bool2	boolean
    //   222	345	6	localObject	Object
    //   1	636	7	localCodedOutputStream	CodedOutputStream
    //   148	162	8	arrayOfFile1	File[]
    //   489	42	8	localException1	Exception
    //   627	1	8	localException2	Exception
    //   634	9	8	localException3	Exception
    //   65	337	9	arrayOfFile2	File[]
    // Exception table:
    //   from	to	target	type
    //   210	224	489	java/lang/Exception
    //   210	224	553	finally
    //   224	231	610	finally
    //   231	304	616	finally
    //   309	385	616	finally
    //   385	393	616	finally
    //   398	408	616	finally
    //   408	424	616	finally
    //   497	537	623	finally
    //   224	231	627	java/lang/Exception
    //   231	304	634	java/lang/Exception
    //   309	385	634	java/lang/Exception
    //   385	393	634	java/lang/Exception
    //   398	408	634	java/lang/Exception
    //   408	424	634	java/lang/Exception
  }
  
  private void a(String paramString)
  {
    paramString = b(paramString);
    int i2 = paramString.length;
    int i1 = 0;
    while (i1 < i2)
    {
      paramString[i1].delete();
      i1 += 1;
    }
  }
  
  private void a(String paramString, int paramInt)
  {
    z.a(j, new b(paramString + "SessionEvent"), paramInt, c);
  }
  
  /* Error */
  private void a(String paramString, Date paramDate)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 9
    //   6: aconst_null
    //   7: astore 8
    //   9: aconst_null
    //   10: astore 6
    //   12: new 486	com/crashlytics/android/core/d
    //   15: dup
    //   16: aload_0
    //   17: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   20: new 267	java/lang/StringBuilder
    //   23: dup
    //   24: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   27: aload_1
    //   28: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: ldc_w 615
    //   34: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokespecial 517	com/crashlytics/android/core/d:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   43: astore 7
    //   45: aload 9
    //   47: astore 5
    //   49: aload 8
    //   51: astore 6
    //   53: aload 7
    //   55: invokestatic 520	com/crashlytics/android/core/CodedOutputStream:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    //   58: astore 8
    //   60: aload 8
    //   62: astore 5
    //   64: aload 8
    //   66: astore 6
    //   68: getstatic 475	java/util/Locale:US	Ljava/util/Locale;
    //   71: ldc_w 617
    //   74: iconst_1
    //   75: anewarray 4	java/lang/Object
    //   78: dup
    //   79: iconst_0
    //   80: aload_0
    //   81: getfield 143	com/crashlytics/android/core/i:q	Lcom/crashlytics/android/core/e;
    //   84: invokevirtual 619	com/crashlytics/android/core/e:a	()Ljava/lang/String;
    //   87: aastore
    //   88: invokestatic 481	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   91: astore 9
    //   93: aload 8
    //   95: astore 5
    //   97: aload 8
    //   99: astore 6
    //   101: aload_2
    //   102: invokevirtual 348	java/util/Date:getTime	()J
    //   105: ldc2_w 349
    //   108: ldiv
    //   109: lstore_3
    //   110: aload 8
    //   112: astore 5
    //   114: aload 8
    //   116: astore 6
    //   118: aload_0
    //   119: getfield 145	com/crashlytics/android/core/i:s	Lcom/crashlytics/android/core/w;
    //   122: aload 8
    //   124: aload_1
    //   125: aload 9
    //   127: lload_3
    //   128: invokevirtual 622	com/crashlytics/android/core/w:a	(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V
    //   131: aload 8
    //   133: ldc_w 533
    //   136: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   139: aload 7
    //   141: ldc_w 624
    //   144: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   147: return
    //   148: astore_2
    //   149: aconst_null
    //   150: astore_1
    //   151: aload_2
    //   152: aload_1
    //   153: invokestatic 547	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   156: aload_2
    //   157: athrow
    //   158: astore 7
    //   160: aload_1
    //   161: astore_2
    //   162: aload 6
    //   164: astore 5
    //   166: aload 7
    //   168: astore_1
    //   169: aload 5
    //   171: ldc_w 533
    //   174: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   177: aload_2
    //   178: ldc_w 624
    //   181: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   184: aload_1
    //   185: athrow
    //   186: astore_1
    //   187: aconst_null
    //   188: astore_2
    //   189: goto -20 -> 169
    //   192: astore_1
    //   193: aload 7
    //   195: astore_2
    //   196: goto -27 -> 169
    //   199: astore_2
    //   200: aload 7
    //   202: astore_1
    //   203: goto -52 -> 151
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	206	0	this	i
    //   0	206	1	paramString	String
    //   0	206	2	paramDate	Date
    //   109	19	3	l1	long
    //   1	169	5	localObject1	Object
    //   10	153	6	localCodedOutputStream1	CodedOutputStream
    //   43	97	7	locald	d
    //   158	43	7	localObject2	Object
    //   7	125	8	localCodedOutputStream2	CodedOutputStream
    //   4	122	9	str	String
    // Exception table:
    //   from	to	target	type
    //   12	45	148	java/lang/Exception
    //   151	158	158	finally
    //   12	45	186	finally
    //   53	60	192	finally
    //   68	93	192	finally
    //   101	110	192	finally
    //   118	131	192	finally
    //   53	60	199	java/lang/Exception
    //   68	93	199	java/lang/Exception
    //   101	110	199	java/lang/Exception
    //   118	131	199	java/lang/Exception
  }
  
  private void a(Date paramDate, Thread paramThread, Throwable paramThrowable)
    throws Exception
  {
    b(paramDate, paramThread, paramThrowable);
    l();
    k();
    f();
    if (!q.v()) {
      o();
    }
  }
  
  private File[] a(FilenameFilter paramFilenameFilter)
  {
    return b(j.listFiles(paramFilenameFilter));
  }
  
  /* Error */
  private void b(Date paramDate, Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 4
    //   6: aconst_null
    //   7: astore 9
    //   9: aconst_null
    //   10: astore 8
    //   12: aconst_null
    //   13: astore 6
    //   15: new 198	java/io/File
    //   18: dup
    //   19: aload_0
    //   20: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   23: ldc_w 494
    //   26: invokespecial 497	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   29: invokevirtual 651	java/io/File:createNewFile	()Z
    //   32: pop
    //   33: aload_0
    //   34: invokespecial 512	com/crashlytics/android/core/i:j	()Ljava/lang/String;
    //   37: astore 5
    //   39: aload 5
    //   41: ifnull +103 -> 144
    //   44: aload 5
    //   46: invokestatic 514	com/crashlytics/android/core/e:d	(Ljava/lang/String;)V
    //   49: new 486	com/crashlytics/android/core/d
    //   52: dup
    //   53: aload_0
    //   54: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   57: new 267	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   64: aload 5
    //   66: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: ldc_w 516
    //   72: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokespecial 517	com/crashlytics/android/core/d:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   81: astore 5
    //   83: aload 9
    //   85: astore 4
    //   87: aload 5
    //   89: astore 6
    //   91: aload 8
    //   93: astore 7
    //   95: aload 5
    //   97: invokestatic 520	com/crashlytics/android/core/CodedOutputStream:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    //   100: astore 8
    //   102: aload 8
    //   104: astore 4
    //   106: aload 5
    //   108: astore 6
    //   110: aload 8
    //   112: astore 7
    //   114: aload_0
    //   115: aload 8
    //   117: aload_1
    //   118: aload_2
    //   119: aload_3
    //   120: ldc_w 653
    //   123: iconst_1
    //   124: invokespecial 655	com/crashlytics/android/core/i:a	(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    //   127: aload 8
    //   129: ldc_w 533
    //   132: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   135: aload 5
    //   137: ldc_w 538
    //   140: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   143: return
    //   144: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   147: ldc_w 265
    //   150: ldc_w 657
    //   153: aconst_null
    //   154: invokeinterface 321 4 0
    //   159: aconst_null
    //   160: astore 5
    //   162: aload 6
    //   164: astore 8
    //   166: goto -39 -> 127
    //   169: astore_1
    //   170: aconst_null
    //   171: astore 5
    //   173: aload 7
    //   175: astore 4
    //   177: aload 5
    //   179: astore 6
    //   181: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   184: ldc_w 265
    //   187: ldc_w 659
    //   190: aload_1
    //   191: invokeinterface 321 4 0
    //   196: aload 7
    //   198: astore 4
    //   200: aload 5
    //   202: astore 6
    //   204: aload_1
    //   205: aload 5
    //   207: invokestatic 547	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   210: aload 7
    //   212: ldc_w 533
    //   215: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   218: aload 5
    //   220: ldc_w 538
    //   223: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   226: return
    //   227: astore_1
    //   228: aconst_null
    //   229: astore 6
    //   231: aload 4
    //   233: ldc_w 533
    //   236: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   239: aload 6
    //   241: ldc_w 538
    //   244: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   247: aload_1
    //   248: athrow
    //   249: astore_1
    //   250: goto -19 -> 231
    //   253: astore_1
    //   254: goto -81 -> 173
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	257	0	this	i
    //   0	257	1	paramDate	Date
    //   0	257	2	paramThread	Thread
    //   0	257	3	paramThrowable	Throwable
    //   4	228	4	localObject1	Object
    //   37	182	5	localObject2	Object
    //   13	227	6	localObject3	Object
    //   1	210	7	localObject4	Object
    //   10	155	8	localObject5	Object
    //   7	77	9	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   15	39	169	java/lang/Exception
    //   44	83	169	java/lang/Exception
    //   144	159	169	java/lang/Exception
    //   15	39	227	finally
    //   44	83	227	finally
    //   144	159	227	finally
    //   95	102	249	finally
    //   114	127	249	finally
    //   181	196	249	finally
    //   204	210	249	finally
    //   95	102	253	java/lang/Exception
    //   114	127	253	java/lang/Exception
  }
  
  private File[] b(String paramString)
  {
    return a(new c(paramString));
  }
  
  private File[] b(File[] paramArrayOfFile)
  {
    File[] arrayOfFile = paramArrayOfFile;
    if (paramArrayOfFile == null) {
      arrayOfFile = new File[0];
    }
    return arrayOfFile;
  }
  
  /* Error */
  private void c(String paramString)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 6
    //   9: aconst_null
    //   10: astore_3
    //   11: new 486	com/crashlytics/android/core/d
    //   14: dup
    //   15: aload_0
    //   16: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   19: new 267	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   26: aload_1
    //   27: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc_w 327
    //   33: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokespecial 517	com/crashlytics/android/core/d:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   42: astore 4
    //   44: aload 7
    //   46: astore_1
    //   47: aload 6
    //   49: astore_3
    //   50: aload 4
    //   52: invokestatic 520	com/crashlytics/android/core/CodedOutputStream:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    //   55: astore 5
    //   57: aload 5
    //   59: astore_1
    //   60: aload 5
    //   62: astore_3
    //   63: aload_0
    //   64: getfield 143	com/crashlytics/android/core/i:q	Lcom/crashlytics/android/core/e;
    //   67: invokevirtual 663	com/crashlytics/android/core/e:h	()Ljava/lang/String;
    //   70: astore 6
    //   72: aload 5
    //   74: astore_1
    //   75: aload 5
    //   77: astore_3
    //   78: aload_0
    //   79: getfield 143	com/crashlytics/android/core/i:q	Lcom/crashlytics/android/core/e;
    //   82: invokevirtual 665	com/crashlytics/android/core/e:k	()Ljava/lang/String;
    //   85: astore 7
    //   87: aload 5
    //   89: astore_1
    //   90: aload 5
    //   92: astore_3
    //   93: aload_0
    //   94: getfield 143	com/crashlytics/android/core/i:q	Lcom/crashlytics/android/core/e;
    //   97: invokevirtual 666	com/crashlytics/android/core/e:j	()Ljava/lang/String;
    //   100: astore 8
    //   102: aload 5
    //   104: astore_1
    //   105: aload 5
    //   107: astore_3
    //   108: aload_0
    //   109: getfield 141	com/crashlytics/android/core/i:o	Lio/fabric/sdk/android/services/common/IdManager;
    //   112: invokevirtual 670	io/fabric/sdk/android/services/common/IdManager:b	()Ljava/lang/String;
    //   115: astore 9
    //   117: aload 5
    //   119: astore_1
    //   120: aload 5
    //   122: astore_3
    //   123: aload_0
    //   124: getfield 143	com/crashlytics/android/core/i:q	Lcom/crashlytics/android/core/e;
    //   127: invokevirtual 672	com/crashlytics/android/core/e:i	()Ljava/lang/String;
    //   130: invokestatic 678	io/fabric/sdk/android/services/common/DeliveryMechanism:determineFrom	(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;
    //   133: invokevirtual 681	io/fabric/sdk/android/services/common/DeliveryMechanism:getId	()I
    //   136: istore_2
    //   137: aload 5
    //   139: astore_1
    //   140: aload 5
    //   142: astore_3
    //   143: aload_0
    //   144: getfield 145	com/crashlytics/android/core/i:s	Lcom/crashlytics/android/core/w;
    //   147: aload 5
    //   149: aload 6
    //   151: aload 7
    //   153: aload 8
    //   155: aload 9
    //   157: iload_2
    //   158: invokevirtual 684	com/crashlytics/android/core/w:a	(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    //   161: aload 5
    //   163: ldc_w 686
    //   166: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   169: aload 4
    //   171: ldc_w 688
    //   174: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   177: return
    //   178: astore 4
    //   180: aconst_null
    //   181: astore_1
    //   182: aload 4
    //   184: aload_1
    //   185: invokestatic 547	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   188: aload 4
    //   190: athrow
    //   191: astore 5
    //   193: aload_1
    //   194: astore 4
    //   196: aload_3
    //   197: astore_1
    //   198: aload 5
    //   200: astore_3
    //   201: aload_1
    //   202: ldc_w 686
    //   205: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   208: aload 4
    //   210: ldc_w 688
    //   213: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   216: aload_3
    //   217: athrow
    //   218: astore_3
    //   219: aconst_null
    //   220: astore 4
    //   222: aload 5
    //   224: astore_1
    //   225: goto -24 -> 201
    //   228: astore_3
    //   229: goto -28 -> 201
    //   232: astore 5
    //   234: aload 4
    //   236: astore_1
    //   237: aload 5
    //   239: astore 4
    //   241: goto -59 -> 182
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	244	0	this	i
    //   0	244	1	paramString	String
    //   136	22	2	i1	int
    //   10	207	3	localObject1	Object
    //   218	1	3	localObject2	Object
    //   228	1	3	localObject3	Object
    //   42	128	4	locald	d
    //   178	11	4	localException1	Exception
    //   194	46	4	localObject4	Object
    //   1	161	5	localCodedOutputStream	CodedOutputStream
    //   191	32	5	localObject5	Object
    //   232	6	5	localException2	Exception
    //   7	143	6	str1	String
    //   4	148	7	str2	String
    //   100	54	8	str3	String
    //   115	41	9	str4	String
    // Exception table:
    //   from	to	target	type
    //   11	44	178	java/lang/Exception
    //   182	191	191	finally
    //   11	44	218	finally
    //   50	57	228	finally
    //   63	72	228	finally
    //   78	87	228	finally
    //   93	102	228	finally
    //   108	117	228	finally
    //   123	137	228	finally
    //   143	161	228	finally
    //   50	57	232	java/lang/Exception
    //   63	72	232	java/lang/Exception
    //   78	87	232	java/lang/Exception
    //   93	102	232	java/lang/Exception
    //   108	117	232	java/lang/Exception
    //   123	137	232	java/lang/Exception
    //   143	161	232	java/lang/Exception
  }
  
  /* Error */
  private void c(Date paramDate, Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 7
    //   9: aconst_null
    //   10: astore 5
    //   12: aload_0
    //   13: invokespecial 512	com/crashlytics/android/core/i:j	()Ljava/lang/String;
    //   16: astore 9
    //   18: aload 9
    //   20: ifnull +246 -> 266
    //   23: aload 9
    //   25: invokestatic 690	com/crashlytics/android/core/e:c	(Ljava/lang/String;)V
    //   28: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   31: ldc_w 265
    //   34: new 267	java/lang/StringBuilder
    //   37: dup
    //   38: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   41: ldc_w 692
    //   44: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: aload_3
    //   48: invokevirtual 695	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   51: ldc_w 697
    //   54: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: aload_2
    //   58: invokevirtual 698	java/lang/Thread:getName	()Ljava/lang/String;
    //   61: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokeinterface 282 3 0
    //   72: aload_0
    //   73: getfield 128	com/crashlytics/android/core/i:g	Ljava/util/concurrent/atomic/AtomicInteger;
    //   76: invokevirtual 701	java/util/concurrent/atomic/AtomicInteger:getAndIncrement	()I
    //   79: invokestatic 703	io/fabric/sdk/android/services/common/CommonUtils:a	(I)Ljava/lang/String;
    //   82: astore 6
    //   84: new 267	java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   91: aload 9
    //   93: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: ldc_w 560
    //   99: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: aload 6
    //   104: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: astore 6
    //   112: new 486	com/crashlytics/android/core/d
    //   115: dup
    //   116: aload_0
    //   117: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   120: aload 6
    //   122: invokespecial 517	com/crashlytics/android/core/d:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   125: astore 6
    //   127: aload 8
    //   129: astore 4
    //   131: aload 7
    //   133: astore 5
    //   135: aload 6
    //   137: invokestatic 520	com/crashlytics/android/core/CodedOutputStream:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    //   140: astore 7
    //   142: aload 7
    //   144: astore 4
    //   146: aload 7
    //   148: astore 5
    //   150: aload_0
    //   151: aload 7
    //   153: aload_1
    //   154: aload_2
    //   155: aload_3
    //   156: ldc_w 705
    //   159: iconst_0
    //   160: invokespecial 655	com/crashlytics/android/core/i:a	(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    //   163: aload 7
    //   165: ldc_w 707
    //   168: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   171: aload 6
    //   173: ldc_w 709
    //   176: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   179: aload_0
    //   180: aload 9
    //   182: bipush 64
    //   184: invokespecial 583	com/crashlytics/android/core/i:a	(Ljava/lang/String;I)V
    //   187: return
    //   188: astore_2
    //   189: aconst_null
    //   190: astore_1
    //   191: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   194: ldc_w 265
    //   197: ldc_w 711
    //   200: aload_2
    //   201: invokeinterface 321 4 0
    //   206: aload_2
    //   207: aload_1
    //   208: invokestatic 547	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   211: aload 5
    //   213: ldc_w 707
    //   216: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   219: aload_1
    //   220: ldc_w 709
    //   223: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   226: goto -47 -> 179
    //   229: astore_2
    //   230: aconst_null
    //   231: astore_1
    //   232: aload 4
    //   234: ldc_w 707
    //   237: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   240: aload_1
    //   241: ldc_w 709
    //   244: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   247: aload_2
    //   248: athrow
    //   249: astore_1
    //   250: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   253: ldc_w 265
    //   256: ldc_w 713
    //   259: aload_1
    //   260: invokeinterface 321 4 0
    //   265: return
    //   266: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   269: ldc_w 265
    //   272: ldc_w 715
    //   275: aconst_null
    //   276: invokeinterface 321 4 0
    //   281: return
    //   282: astore_2
    //   283: aload 6
    //   285: astore_1
    //   286: goto -54 -> 232
    //   289: astore_2
    //   290: aload 5
    //   292: astore 4
    //   294: goto -62 -> 232
    //   297: astore_2
    //   298: aload 6
    //   300: astore_1
    //   301: goto -110 -> 191
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	304	0	this	i
    //   0	304	1	paramDate	Date
    //   0	304	2	paramThread	Thread
    //   0	304	3	paramThrowable	Throwable
    //   1	292	4	localObject1	Object
    //   10	281	5	localCodedOutputStream1	CodedOutputStream
    //   82	217	6	localObject2	Object
    //   7	157	7	localCodedOutputStream2	CodedOutputStream
    //   4	124	8	localObject3	Object
    //   16	165	9	str	String
    // Exception table:
    //   from	to	target	type
    //   28	127	188	java/lang/Exception
    //   28	127	229	finally
    //   179	187	249	java/lang/Exception
    //   135	142	282	finally
    //   150	163	282	finally
    //   191	211	289	finally
    //   135	142	297	java/lang/Exception
    //   150	163	297	java/lang/Exception
  }
  
  /* Error */
  private void d(String paramString)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore_3
    //   5: aconst_null
    //   6: astore 6
    //   8: aconst_null
    //   9: astore 4
    //   11: new 486	com/crashlytics/android/core/d
    //   14: dup
    //   15: aload_0
    //   16: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   19: new 267	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   26: aload_1
    //   27: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc_w 329
    //   33: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokespecial 517	com/crashlytics/android/core/d:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   42: astore 5
    //   44: aload 7
    //   46: astore_1
    //   47: aload 5
    //   49: astore_3
    //   50: aload 6
    //   52: astore 4
    //   54: aload 5
    //   56: invokestatic 520	com/crashlytics/android/core/CodedOutputStream:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    //   59: astore 6
    //   61: aload 6
    //   63: astore_1
    //   64: aload 5
    //   66: astore_3
    //   67: aload 6
    //   69: astore 4
    //   71: aload_0
    //   72: getfield 143	com/crashlytics/android/core/i:q	Lcom/crashlytics/android/core/e;
    //   75: invokevirtual 161	com/crashlytics/android/core/e:B	()Landroid/content/Context;
    //   78: invokestatic 718	io/fabric/sdk/android/services/common/CommonUtils:g	(Landroid/content/Context;)Z
    //   81: istore_2
    //   82: aload 6
    //   84: astore_1
    //   85: aload 5
    //   87: astore_3
    //   88: aload 6
    //   90: astore 4
    //   92: aload_0
    //   93: getfield 145	com/crashlytics/android/core/i:s	Lcom/crashlytics/android/core/w;
    //   96: aload 6
    //   98: iload_2
    //   99: invokevirtual 721	com/crashlytics/android/core/w:a	(Lcom/crashlytics/android/core/CodedOutputStream;Z)V
    //   102: aload 6
    //   104: ldc_w 723
    //   107: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   110: aload 5
    //   112: ldc_w 725
    //   115: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   118: return
    //   119: astore 6
    //   121: aconst_null
    //   122: astore 5
    //   124: aload 4
    //   126: astore_1
    //   127: aload 5
    //   129: astore_3
    //   130: aload 6
    //   132: aload 5
    //   134: invokestatic 547	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   137: aload 4
    //   139: astore_1
    //   140: aload 5
    //   142: astore_3
    //   143: aload 6
    //   145: athrow
    //   146: astore 5
    //   148: aload_3
    //   149: astore 4
    //   151: aload_1
    //   152: astore_3
    //   153: aload 5
    //   155: astore_1
    //   156: aload_3
    //   157: ldc_w 723
    //   160: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   163: aload 4
    //   165: ldc_w 725
    //   168: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   171: aload_1
    //   172: athrow
    //   173: astore_1
    //   174: aconst_null
    //   175: astore 4
    //   177: goto -21 -> 156
    //   180: astore 6
    //   182: goto -58 -> 124
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	185	0	this	i
    //   0	185	1	paramString	String
    //   81	18	2	bool	boolean
    //   4	153	3	localObject1	Object
    //   9	167	4	localObject2	Object
    //   42	99	5	locald	d
    //   146	8	5	localObject3	Object
    //   6	97	6	localCodedOutputStream	CodedOutputStream
    //   119	25	6	localException1	Exception
    //   180	1	6	localException2	Exception
    //   1	44	7	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   11	44	119	java/lang/Exception
    //   54	61	146	finally
    //   71	82	146	finally
    //   92	102	146	finally
    //   130	137	146	finally
    //   143	146	146	finally
    //   11	44	173	finally
    //   54	61	180	java/lang/Exception
    //   71	82	180	java/lang/Exception
    //   92	102	180	java/lang/Exception
  }
  
  /* Error */
  private void e(String paramString)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 15
    //   3: aconst_null
    //   4: astore 14
    //   6: aconst_null
    //   7: astore 17
    //   9: aconst_null
    //   10: astore 16
    //   12: aconst_null
    //   13: astore 12
    //   15: new 486	com/crashlytics/android/core/d
    //   18: dup
    //   19: aload_0
    //   20: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   23: new 267	java/lang/StringBuilder
    //   26: dup
    //   27: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   30: aload_1
    //   31: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: ldc_w 331
    //   37: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokespecial 517	com/crashlytics/android/core/d:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   46: astore 13
    //   48: aload 17
    //   50: astore_1
    //   51: aload 16
    //   53: astore 12
    //   55: aload 13
    //   57: invokestatic 520	com/crashlytics/android/core/CodedOutputStream:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    //   60: astore 14
    //   62: aload 14
    //   64: astore_1
    //   65: aload 14
    //   67: astore 12
    //   69: aload_0
    //   70: getfield 143	com/crashlytics/android/core/i:q	Lcom/crashlytics/android/core/e;
    //   73: invokevirtual 161	com/crashlytics/android/core/e:B	()Landroid/content/Context;
    //   76: astore 15
    //   78: aload 14
    //   80: astore_1
    //   81: aload 14
    //   83: astore 12
    //   85: new 727	android/os/StatFs
    //   88: dup
    //   89: invokestatic 387	android/os/Environment:getDataDirectory	()Ljava/io/File;
    //   92: invokevirtual 390	java/io/File:getPath	()Ljava/lang/String;
    //   95: invokespecial 728	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   98: astore 17
    //   100: aload 14
    //   102: astore_1
    //   103: aload 14
    //   105: astore 12
    //   107: aload_0
    //   108: getfield 141	com/crashlytics/android/core/i:o	Lio/fabric/sdk/android/services/common/IdManager;
    //   111: invokevirtual 730	io/fabric/sdk/android/services/common/IdManager:f	()Ljava/lang/String;
    //   114: astore 16
    //   116: aload 14
    //   118: astore_1
    //   119: aload 14
    //   121: astore 12
    //   123: invokestatic 732	io/fabric/sdk/android/services/common/CommonUtils:a	()I
    //   126: istore_2
    //   127: aload 14
    //   129: astore_1
    //   130: aload 14
    //   132: astore 12
    //   134: invokestatic 738	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   137: invokevirtual 741	java/lang/Runtime:availableProcessors	()I
    //   140: istore_3
    //   141: aload 14
    //   143: astore_1
    //   144: aload 14
    //   146: astore 12
    //   148: invokestatic 379	io/fabric/sdk/android/services/common/CommonUtils:b	()J
    //   151: lstore 5
    //   153: aload 14
    //   155: astore_1
    //   156: aload 14
    //   158: astore 12
    //   160: aload 17
    //   162: invokevirtual 744	android/os/StatFs:getBlockCount	()I
    //   165: i2l
    //   166: lstore 7
    //   168: aload 14
    //   170: astore_1
    //   171: aload 14
    //   173: astore 12
    //   175: aload 17
    //   177: invokevirtual 747	android/os/StatFs:getBlockSize	()I
    //   180: i2l
    //   181: lstore 9
    //   183: aload 14
    //   185: astore_1
    //   186: aload 14
    //   188: astore 12
    //   190: aload 15
    //   192: invokestatic 749	io/fabric/sdk/android/services/common/CommonUtils:f	(Landroid/content/Context;)Z
    //   195: istore 11
    //   197: aload 14
    //   199: astore_1
    //   200: aload 14
    //   202: astore 12
    //   204: aload_0
    //   205: getfield 141	com/crashlytics/android/core/i:o	Lio/fabric/sdk/android/services/common/IdManager;
    //   208: invokevirtual 750	io/fabric/sdk/android/services/common/IdManager:g	()Ljava/util/Map;
    //   211: astore 17
    //   213: aload 14
    //   215: astore_1
    //   216: aload 14
    //   218: astore 12
    //   220: aload 15
    //   222: invokestatic 753	io/fabric/sdk/android/services/common/CommonUtils:h	(Landroid/content/Context;)I
    //   225: istore 4
    //   227: aload 14
    //   229: astore_1
    //   230: aload 14
    //   232: astore 12
    //   234: aload_0
    //   235: getfield 145	com/crashlytics/android/core/i:s	Lcom/crashlytics/android/core/w;
    //   238: aload 14
    //   240: aload 16
    //   242: iload_2
    //   243: getstatic 759	android/os/Build:MODEL	Ljava/lang/String;
    //   246: iload_3
    //   247: lload 5
    //   249: lload 7
    //   251: lload 9
    //   253: lmul
    //   254: iload 11
    //   256: aload 17
    //   258: iload 4
    //   260: getstatic 762	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   263: getstatic 765	android/os/Build:PRODUCT	Ljava/lang/String;
    //   266: invokevirtual 768	com/crashlytics/android/core/w:a	(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    //   269: aload 14
    //   271: ldc_w 770
    //   274: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   277: aload 13
    //   279: ldc_w 772
    //   282: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   285: return
    //   286: astore 13
    //   288: aload 15
    //   290: astore_1
    //   291: aload 13
    //   293: aload_1
    //   294: invokestatic 547	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   297: aload 13
    //   299: athrow
    //   300: astore 14
    //   302: aload_1
    //   303: astore 13
    //   305: aload 12
    //   307: astore_1
    //   308: aload 14
    //   310: astore 12
    //   312: aload_1
    //   313: ldc_w 770
    //   316: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   319: aload 13
    //   321: ldc_w 772
    //   324: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   327: aload 12
    //   329: athrow
    //   330: astore 12
    //   332: aconst_null
    //   333: astore 13
    //   335: aload 14
    //   337: astore_1
    //   338: goto -26 -> 312
    //   341: astore 12
    //   343: goto -31 -> 312
    //   346: astore 14
    //   348: aload 13
    //   350: astore_1
    //   351: aload 14
    //   353: astore 13
    //   355: goto -64 -> 291
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	358	0	this	i
    //   0	358	1	paramString	String
    //   126	117	2	i1	int
    //   140	107	3	i2	int
    //   225	34	4	i3	int
    //   151	97	5	l1	long
    //   166	84	7	l2	long
    //   181	71	9	l3	long
    //   195	60	11	bool	boolean
    //   13	315	12	localObject1	Object
    //   330	1	12	localObject2	Object
    //   341	1	12	localObject3	Object
    //   46	232	13	locald	d
    //   286	12	13	localException1	Exception
    //   303	51	13	localObject4	Object
    //   4	266	14	localCodedOutputStream	CodedOutputStream
    //   300	36	14	localObject5	Object
    //   346	6	14	localException2	Exception
    //   1	288	15	localContext	Context
    //   10	231	16	str	String
    //   7	250	17	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   15	48	286	java/lang/Exception
    //   291	300	300	finally
    //   15	48	330	finally
    //   55	62	341	finally
    //   69	78	341	finally
    //   85	100	341	finally
    //   107	116	341	finally
    //   123	127	341	finally
    //   134	141	341	finally
    //   148	153	341	finally
    //   160	168	341	finally
    //   175	183	341	finally
    //   190	197	341	finally
    //   204	213	341	finally
    //   220	227	341	finally
    //   234	269	341	finally
    //   55	62	346	java/lang/Exception
    //   69	78	346	java/lang/Exception
    //   85	100	346	java/lang/Exception
    //   107	116	346	java/lang/Exception
    //   123	127	346	java/lang/Exception
    //   134	141	346	java/lang/Exception
    //   148	153	346	java/lang/Exception
    //   160	168	346	java/lang/Exception
    //   175	183	346	java/lang/Exception
    //   190	197	346	java/lang/Exception
    //   204	213	346	java/lang/Exception
    //   220	227	346	java/lang/Exception
    //   234	269	346	java/lang/Exception
  }
  
  /* Error */
  private void f(String paramString)
    throws Exception
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_3
    //   5: aconst_null
    //   6: astore 7
    //   8: aconst_null
    //   9: astore 5
    //   11: new 486	com/crashlytics/android/core/d
    //   14: dup
    //   15: aload_0
    //   16: getfield 155	com/crashlytics/android/core/i:j	Ljava/io/File;
    //   19: new 267	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   26: aload_1
    //   27: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc_w 325
    //   33: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokespecial 517	com/crashlytics/android/core/d:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   42: astore 6
    //   44: aload 4
    //   46: astore_3
    //   47: aload 6
    //   49: astore 4
    //   51: aload 7
    //   53: astore 5
    //   55: aload 6
    //   57: invokestatic 520	com/crashlytics/android/core/CodedOutputStream:a	(Ljava/io/OutputStream;)Lcom/crashlytics/android/core/CodedOutputStream;
    //   60: astore 7
    //   62: aload 7
    //   64: astore_3
    //   65: aload 6
    //   67: astore 4
    //   69: aload 7
    //   71: astore 5
    //   73: aload_0
    //   74: aload_1
    //   75: invokespecial 776	com/crashlytics/android/core/i:g	(Ljava/lang/String;)Lcom/crashlytics/android/core/y;
    //   78: astore_1
    //   79: aload 7
    //   81: astore_3
    //   82: aload 6
    //   84: astore 4
    //   86: aload 7
    //   88: astore 5
    //   90: aload_1
    //   91: invokevirtual 780	com/crashlytics/android/core/y:a	()Z
    //   94: istore_2
    //   95: iload_2
    //   96: ifeq +20 -> 116
    //   99: aload 7
    //   101: ldc_w 782
    //   104: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   107: aload 6
    //   109: ldc_w 784
    //   112: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   115: return
    //   116: aload 7
    //   118: astore_3
    //   119: aload 6
    //   121: astore 4
    //   123: aload 7
    //   125: astore 5
    //   127: aload_0
    //   128: getfield 145	com/crashlytics/android/core/i:s	Lcom/crashlytics/android/core/w;
    //   131: aload 7
    //   133: aload_1
    //   134: getfield 786	com/crashlytics/android/core/y:b	Ljava/lang/String;
    //   137: aload_1
    //   138: getfield 788	com/crashlytics/android/core/y:c	Ljava/lang/String;
    //   141: aload_1
    //   142: getfield 790	com/crashlytics/android/core/y:d	Ljava/lang/String;
    //   145: invokevirtual 793	com/crashlytics/android/core/w:a	(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   148: aload 7
    //   150: ldc_w 782
    //   153: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   156: aload 6
    //   158: ldc_w 784
    //   161: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   164: return
    //   165: astore 7
    //   167: aconst_null
    //   168: astore_1
    //   169: aload 5
    //   171: astore_3
    //   172: aload_1
    //   173: astore 4
    //   175: aload 7
    //   177: aload_1
    //   178: invokestatic 547	com/crashlytics/android/core/n:a	(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    //   181: aload 5
    //   183: astore_3
    //   184: aload_1
    //   185: astore 4
    //   187: aload 7
    //   189: athrow
    //   190: astore_1
    //   191: aload_3
    //   192: ldc_w 782
    //   195: invokestatic 536	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Flushable;Ljava/lang/String;)V
    //   198: aload 4
    //   200: ldc_w 784
    //   203: invokestatic 311	io/fabric/sdk/android/services/common/CommonUtils:a	(Ljava/io/Closeable;Ljava/lang/String;)V
    //   206: aload_1
    //   207: athrow
    //   208: astore_1
    //   209: aconst_null
    //   210: astore 4
    //   212: goto -21 -> 191
    //   215: astore 7
    //   217: aload 6
    //   219: astore_1
    //   220: goto -51 -> 169
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	this	i
    //   0	223	1	paramString	String
    //   94	2	2	bool	boolean
    //   4	188	3	localObject1	Object
    //   1	210	4	localObject2	Object
    //   9	173	5	localCodedOutputStream1	CodedOutputStream
    //   42	176	6	locald	d
    //   6	143	7	localCodedOutputStream2	CodedOutputStream
    //   165	23	7	localException1	Exception
    //   215	1	7	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   11	44	165	java/lang/Exception
    //   55	62	190	finally
    //   73	79	190	finally
    //   90	95	190	finally
    //   127	148	190	finally
    //   175	181	190	finally
    //   187	190	190	finally
    //   11	44	208	finally
    //   55	62	215	java/lang/Exception
    //   73	79	215	java/lang/Exception
    //   90	95	215	java/lang/Exception
    //   127	148	215	java/lang/Exception
  }
  
  private y g(String paramString)
  {
    if (a()) {
      return new y(q.n(), q.p(), q.o());
    }
    return new q(j).a(paramString);
  }
  
  private String j()
  {
    File[] arrayOfFile = a(new b("BeginSession"));
    Arrays.sort(arrayOfFile, b);
    if (arrayOfFile.length > 0) {
      return a(arrayOfFile[0]);
    }
    return null;
  }
  
  private void k()
    throws Exception
  {
    Date localDate = new Date();
    String str = new c(o).toString();
    io.fabric.sdk.android.c.h().a("Fabric", "Opening an new session with ID " + str);
    r.a(str);
    a(str, localDate);
    c(str);
    d(str);
    e(str);
  }
  
  private void l()
    throws Exception
  {
    a(8);
    Object localObject = j();
    if (localObject != null)
    {
      f((String)localObject);
      localObject = q.y();
      if (localObject != null)
      {
        int i2 = c;
        io.fabric.sdk.android.c.h().a("Fabric", "Closing all open sessions.");
        localObject = e();
        if ((localObject != null) && (localObject.length > 0))
        {
          int i3 = localObject.length;
          int i1 = 0;
          while (i1 < i3)
          {
            File localFile = localObject[i1];
            String str = a(localFile);
            io.fabric.sdk.android.c.h().a("Fabric", "Closing session: " + str);
            a(localFile, str, i2);
            i1 += 1;
          }
        }
      }
      else
      {
        io.fabric.sdk.android.c.h().a("Fabric", "Unable to close session. Settings are not loaded.");
      }
      return;
    }
    io.fabric.sdk.android.c.h().a("Fabric", "No open sessions exist.");
  }
  
  private File[] m()
  {
    return a(a);
  }
  
  private void n()
  {
    File localFile = new File(q.u(), "invalidClsFiles");
    if (localFile.exists())
    {
      if (localFile.isDirectory())
      {
        File[] arrayOfFile = localFile.listFiles();
        int i2 = arrayOfFile.length;
        int i1 = 0;
        while (i1 < i2)
        {
          arrayOfFile[i1].delete();
          i1 += 1;
        }
      }
      localFile.delete();
    }
  }
  
  private void o()
  {
    File[] arrayOfFile = m();
    int i2 = arrayOfFile.length;
    int i1 = 0;
    while (i1 < i2)
    {
      final File localFile = arrayOfFile[i1];
      n.a(new Runnable()
      {
        public void run()
        {
          if (CommonUtils.n(i.f(i.this).B()))
          {
            io.fabric.sdk.android.c.h().a("Fabric", "Attempting to send crash report at time of crash...");
            Object localObject = io.fabric.sdk.android.services.settings.q.a().b();
            localObject = i.f(i.this).a((s)localObject);
            if (localObject != null) {
              new v((k)localObject).a(new x(localFile, i.i()));
            }
          }
        }
      });
      i1 += 1;
    }
  }
  
  void a(final long paramLong, String paramString)
  {
    n.b(new Callable()
    {
      public Void a()
        throws Exception
      {
        if (!i.a(i.this).get()) {
          i.b(i.this).a(paramLong, b);
        }
        return null;
      }
    });
  }
  
  void a(final String paramString1, final String paramString2, final String paramString3)
  {
    n.b(new Callable()
    {
      public Void a()
        throws Exception
      {
        String str = i.c(i.this);
        new q(i.d(i.this)).a(str, new y(paramString1, paramString2, paramString3));
        return null;
      }
    });
  }
  
  void a(final Thread paramThread, final Throwable paramThrowable)
  {
    final Date localDate = new Date();
    n.a(new Runnable()
    {
      public void run()
      {
        if (!i.a(i.this).get()) {
          i.b(i.this, localDate, paramThread, paramThrowable);
        }
      }
    });
  }
  
  void a(final Map<String, String> paramMap)
  {
    n.b(new Callable()
    {
      public Void a()
        throws Exception
      {
        String str = i.c(i.this);
        new q(i.d(i.this)).a(str, paramMap);
        return null;
      }
    });
  }
  
  void a(File[] paramArrayOfFile)
  {
    n();
    int i3 = paramArrayOfFile.length;
    int i1 = 0;
    while (i1 < i3)
    {
      final Object localObject = paramArrayOfFile[i1];
      io.fabric.sdk.android.c.h().a("Fabric", "Found invalid session part file: " + localObject);
      localObject = a((File)localObject);
      FilenameFilter local7 = new FilenameFilter()
      {
        public boolean accept(File paramAnonymousFile, String paramAnonymousString)
        {
          return paramAnonymousString.startsWith(localObject);
        }
      };
      io.fabric.sdk.android.c.h().a("Fabric", "Deleting all part files for invalid session: " + (String)localObject);
      localObject = a(local7);
      int i4 = localObject.length;
      int i2 = 0;
      while (i2 < i4)
      {
        local7 = localObject[i2];
        io.fabric.sdk.android.c.h().a("Fabric", "Deleting session file: " + local7);
        local7.delete();
        i2 += 1;
      }
      i1 += 1;
    }
  }
  
  boolean a()
  {
    return k.get();
  }
  
  void b()
  {
    n.b(new Callable()
    {
      public Void a()
        throws Exception
      {
        if (!c()) {
          i.e(i.this);
        }
        for (;;)
        {
          return null;
          i.b(i.this).a(i.c(i.this));
        }
      }
    });
  }
  
  boolean c()
  {
    return e().length > 0;
  }
  
  boolean d()
  {
    ((Boolean)n.a(new Callable()
    {
      public Boolean a()
        throws Exception
      {
        if (!i.a(i.this).get())
        {
          com.yelp.android.ax.d locald = i.f(i.this).t();
          if (locald != null) {
            i.a(i.this, locald);
          }
          i.g(i.this);
          i.e(i.this);
          io.fabric.sdk.android.c.h().a("Fabric", "Open sessions were closed and a new session was opened.");
          return Boolean.valueOf(true);
        }
        io.fabric.sdk.android.c.h().a("Fabric", "Skipping session finalization because a crash has already occurred.");
        return Boolean.valueOf(false);
      }
    })).booleanValue();
  }
  
  File[] e()
  {
    return a(new b("BeginSession"));
  }
  
  void f()
  {
    z.a(j, a, 4, c);
  }
  
  void g()
  {
    n.a(new Runnable()
    {
      public void run()
      {
        a(i.a(i.this, d.a));
      }
    });
  }
  
  /* Error */
  public void uncaughtException(final Thread paramThread, final Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 147	com/crashlytics/android/core/i:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   6: iconst_1
    //   7: invokevirtual 195	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   10: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   13: ldc_w 265
    //   16: new 267	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 268	java/lang/StringBuilder:<init>	()V
    //   23: ldc_w 905
    //   26: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: aload_2
    //   30: invokevirtual 695	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   33: ldc_w 697
    //   36: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: aload_1
    //   40: invokevirtual 698	java/lang/Thread:getName	()Ljava/lang/String;
    //   43: invokevirtual 274	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: invokevirtual 277	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   49: invokeinterface 282 3 0
    //   54: aload_0
    //   55: getfield 135	com/crashlytics/android/core/i:h	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   58: iconst_1
    //   59: invokevirtual 909	java/util/concurrent/atomic/AtomicBoolean:getAndSet	(Z)Z
    //   62: ifne +41 -> 103
    //   65: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   68: ldc_w 265
    //   71: ldc_w 911
    //   74: invokeinterface 282 3 0
    //   79: aload_0
    //   80: getfield 143	com/crashlytics/android/core/i:q	Lcom/crashlytics/android/core/e;
    //   83: invokevirtual 161	com/crashlytics/android/core/e:B	()Landroid/content/Context;
    //   86: astore_3
    //   87: aload_3
    //   88: aload_0
    //   89: getfield 174	com/crashlytics/android/core/i:m	Landroid/content/BroadcastReceiver;
    //   92: invokevirtual 915	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   95: aload_3
    //   96: aload_0
    //   97: getfield 184	com/crashlytics/android/core/i:l	Landroid/content/BroadcastReceiver;
    //   100: invokevirtual 915	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   103: new 345	java/util/Date
    //   106: dup
    //   107: invokespecial 565	java/util/Date:<init>	()V
    //   110: astore_3
    //   111: aload_0
    //   112: getfield 139	com/crashlytics/android/core/i:n	Lcom/crashlytics/android/core/f;
    //   115: new 18	com/crashlytics/android/core/i$14
    //   118: dup
    //   119: aload_0
    //   120: aload_3
    //   121: aload_1
    //   122: aload_2
    //   123: invokespecial 916	com/crashlytics/android/core/i$14:<init>	(Lcom/crashlytics/android/core/i;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    //   126: invokevirtual 898	com/crashlytics/android/core/f:a	(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    //   129: pop
    //   130: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   133: ldc_w 265
    //   136: ldc_w 918
    //   139: invokeinterface 282 3 0
    //   144: aload_0
    //   145: getfield 137	com/crashlytics/android/core/i:i	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   148: aload_1
    //   149: aload_2
    //   150: invokeinterface 920 3 0
    //   155: aload_0
    //   156: getfield 147	com/crashlytics/android/core/i:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   159: iconst_0
    //   160: invokevirtual 195	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   163: aload_0
    //   164: monitorexit
    //   165: return
    //   166: astore_3
    //   167: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   170: ldc_w 265
    //   173: ldc_w 922
    //   176: aload_3
    //   177: invokeinterface 321 4 0
    //   182: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   185: ldc_w 265
    //   188: ldc_w 918
    //   191: invokeinterface 282 3 0
    //   196: aload_0
    //   197: getfield 137	com/crashlytics/android/core/i:i	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   200: aload_1
    //   201: aload_2
    //   202: invokeinterface 920 3 0
    //   207: aload_0
    //   208: getfield 147	com/crashlytics/android/core/i:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   211: iconst_0
    //   212: invokevirtual 195	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   215: goto -52 -> 163
    //   218: astore_1
    //   219: aload_0
    //   220: monitorexit
    //   221: aload_1
    //   222: athrow
    //   223: astore_3
    //   224: invokestatic 263	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   227: ldc_w 265
    //   230: ldc_w 918
    //   233: invokeinterface 282 3 0
    //   238: aload_0
    //   239: getfield 137	com/crashlytics/android/core/i:i	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   242: aload_1
    //   243: aload_2
    //   244: invokeinterface 920 3 0
    //   249: aload_0
    //   250: getfield 147	com/crashlytics/android/core/i:k	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   253: iconst_0
    //   254: invokevirtual 195	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   257: aload_3
    //   258: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	259	0	this	i
    //   0	259	1	paramThread	Thread
    //   0	259	2	paramThrowable	Throwable
    //   86	35	3	localObject1	Object
    //   166	11	3	localException	Exception
    //   223	35	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   10	103	166	java/lang/Exception
    //   103	130	166	java/lang/Exception
    //   2	10	218	finally
    //   130	163	218	finally
    //   182	215	218	finally
    //   224	259	218	finally
    //   10	103	223	finally
    //   103	130	223	finally
    //   167	182	223	finally
  }
  
  private static class a
    implements FilenameFilter
  {
    public boolean accept(File paramFile, String paramString)
    {
      return (!i.a.accept(paramFile, paramString)) && (i.h().matcher(paramString).matches());
    }
  }
  
  static class b
    implements FilenameFilter
  {
    private final String a;
    
    public b(String paramString)
    {
      a = paramString;
    }
    
    public boolean accept(File paramFile, String paramString)
    {
      return (paramString.contains(a)) && (!paramString.endsWith(".cls_temp"));
    }
  }
  
  static class c
    implements FilenameFilter
  {
    private final String a;
    
    public c(String paramString)
    {
      a = paramString;
    }
    
    public boolean accept(File paramFile, String paramString)
    {
      if (paramString.equals(a + ".cls")) {}
      while ((!paramString.contains(a)) || (paramString.endsWith(".cls_temp"))) {
        return false;
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */