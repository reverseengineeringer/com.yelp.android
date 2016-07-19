package com.kahuna.sdk;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import java.sql.Timestamp;

public final class e
{
  private static KahunaPushReceiver a;
  private static Context b;
  private static String c;
  private static PendingIntent d;
  
  static String a(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0) || (paramVarArgs[0] == null))
    {
      Log.w("Kahuna", "App is configured for Push, but you need to call onAppCreate() in your Application to prevent strange behavior!");
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs[0]);
    int i = 1;
    while (i < paramVarArgs.length)
    {
      localStringBuilder.append(',').append(paramVarArgs[i]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  static void a()
  {
    try
    {
      if (d != null)
      {
        d.cancel();
        d = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  static void a(Context paramContext)
  {
    a(paramContext, 2, "Unregistering app", new Object[0]);
    Intent localIntent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
    localIntent.setPackage("com.google.android.gsf");
    a(paramContext, localIntent);
    paramContext.startService(localIntent);
  }
  
  private static void a(Context paramContext, int paramInt, String paramString, Object... paramVarArgs)
  {
    if (Log.isLoggable("GCMRegistrar", paramInt))
    {
      paramString = String.format(paramString, paramVarArgs);
      Log.println(paramInt, "GCMRegistrar", "[" + paramContext.getPackageName() + "]: " + paramString);
    }
  }
  
  private static void a(Context paramContext, Intent paramIntent)
  {
    try
    {
      if (d == null)
      {
        a(paramContext, 2, "Creating pending intent to get package name", new Object[0]);
        d = PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0);
      }
      paramIntent.putExtra("app", d);
      return;
    }
    finally {}
  }
  
  private static void a(Context paramContext, Boolean paramBoolean, long paramLong)
  {
    SharedPreferences.Editor localEditor = g(paramContext).edit();
    if (paramBoolean != null)
    {
      localEditor.putBoolean("onServer", paramBoolean.booleanValue());
      a(paramContext, 2, "Setting registeredOnServer flag as %b until %s", new Object[] { paramBoolean, new Timestamp(paramLong) });
    }
    for (;;)
    {
      localEditor.putLong("onServerExpirationTime", paramLong);
      localEditor.commit();
      return;
      a(paramContext, 2, "Setting registeredOnServer expiration to %s", new Object[] { new Timestamp(paramLong) });
    }
  }
  
  static void a(Context paramContext, String paramString)
  {
    try
    {
      a(paramContext, 2, "Setting the name of retry receiver class to %s", new Object[] { paramString });
      c = paramString;
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public static void a(Context paramContext, String... paramVarArgs)
  {
    f.b(paramContext);
    b(paramContext, paramVarArgs);
  }
  
  static String b(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = g(paramContext);
    String str = localSharedPreferences.getString("regId", "");
    int i = f(paramContext);
    a(paramContext, 2, "Saving regId on app version %d", new Object[] { Integer.valueOf(i) });
    paramContext = localSharedPreferences.edit();
    paramContext.putString("regId", paramString);
    paramContext.putInt("appVersion", i);
    paramContext.commit();
    return str;
  }
  
  /* Error */
  static void b(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 203	com/kahuna/sdk/e:a	Lcom/kahuna/sdk/KahunaPushReceiver;
    //   6: ifnonnull +77 -> 83
    //   9: getstatic 163	com/kahuna/sdk/e:c	Ljava/lang/String;
    //   12: ifnonnull +75 -> 87
    //   15: aload_0
    //   16: bipush 6
    //   18: ldc -51
    //   20: iconst_0
    //   21: anewarray 4	java/lang/Object
    //   24: invokestatic 57	com/kahuna/sdk/e:a	(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V
    //   27: new 207	com/kahuna/sdk/KahunaPushReceiver
    //   30: dup
    //   31: invokespecial 208	com/kahuna/sdk/KahunaPushReceiver:<init>	()V
    //   34: putstatic 203	com/kahuna/sdk/e:a	Lcom/kahuna/sdk/KahunaPushReceiver;
    //   37: aload_0
    //   38: invokevirtual 96	android/content/Context:getPackageName	()Ljava/lang/String;
    //   41: astore_1
    //   42: new 210	android/content/IntentFilter
    //   45: dup
    //   46: ldc -44
    //   48: invokespecial 213	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   51: astore_2
    //   52: aload_2
    //   53: aload_1
    //   54: invokevirtual 216	android/content/IntentFilter:addCategory	(Ljava/lang/String;)V
    //   57: aload_0
    //   58: iconst_2
    //   59: ldc -38
    //   61: iconst_0
    //   62: anewarray 4	java/lang/Object
    //   65: invokestatic 57	com/kahuna/sdk/e:a	(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V
    //   68: aload_0
    //   69: putstatic 220	com/kahuna/sdk/e:b	Landroid/content/Context;
    //   72: getstatic 220	com/kahuna/sdk/e:b	Landroid/content/Context;
    //   75: getstatic 203	com/kahuna/sdk/e:a	Lcom/kahuna/sdk/KahunaPushReceiver;
    //   78: aload_2
    //   79: invokevirtual 224	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   82: pop
    //   83: ldc 2
    //   85: monitorexit
    //   86: return
    //   87: getstatic 163	com/kahuna/sdk/e:c	Ljava/lang/String;
    //   90: invokestatic 230	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   93: invokevirtual 234	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   96: checkcast 207	com/kahuna/sdk/KahunaPushReceiver
    //   99: putstatic 203	com/kahuna/sdk/e:a	Lcom/kahuna/sdk/KahunaPushReceiver;
    //   102: goto -65 -> 37
    //   105: astore_1
    //   106: aload_0
    //   107: bipush 6
    //   109: ldc -20
    //   111: iconst_2
    //   112: anewarray 4	java/lang/Object
    //   115: dup
    //   116: iconst_0
    //   117: getstatic 163	com/kahuna/sdk/e:c	Ljava/lang/String;
    //   120: aastore
    //   121: dup
    //   122: iconst_1
    //   123: ldc -49
    //   125: invokevirtual 239	java/lang/Class:getName	()Ljava/lang/String;
    //   128: aastore
    //   129: invokestatic 57	com/kahuna/sdk/e:a	(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V
    //   132: new 207	com/kahuna/sdk/KahunaPushReceiver
    //   135: dup
    //   136: invokespecial 208	com/kahuna/sdk/KahunaPushReceiver:<init>	()V
    //   139: putstatic 203	com/kahuna/sdk/e:a	Lcom/kahuna/sdk/KahunaPushReceiver;
    //   142: goto -105 -> 37
    //   145: astore_0
    //   146: ldc 2
    //   148: monitorexit
    //   149: aload_0
    //   150: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	paramContext	Context
    //   41	13	1	str	String
    //   105	1	1	localException	Exception
    //   51	28	2	localIntentFilter	android.content.IntentFilter
    // Exception table:
    //   from	to	target	type
    //   87	102	105	java/lang/Exception
    //   3	37	145	finally
    //   37	83	145	finally
    //   87	102	145	finally
    //   106	142	145	finally
  }
  
  static void b(Context paramContext, String... paramVarArgs)
  {
    paramVarArgs = a(paramVarArgs);
    a(paramContext, 2, "Registering app for senders %s", new Object[] { paramVarArgs });
    Intent localIntent = new Intent("com.google.android.c2dm.intent.REGISTER");
    localIntent.setPackage("com.google.android.gsf");
    a(paramContext, localIntent);
    localIntent.putExtra("sender", paramVarArgs);
    paramContext.startService(localIntent);
  }
  
  public static String c(Context paramContext)
  {
    Object localObject = g(paramContext);
    String str = ((SharedPreferences)localObject).getString("regId", "");
    int i = ((SharedPreferences)localObject).getInt("appVersion", Integer.MIN_VALUE);
    int j = f(paramContext);
    localObject = str;
    if (i != Integer.MIN_VALUE)
    {
      localObject = str;
      if (i != j)
      {
        a(paramContext, 2, "App version changed from %d to %d;resetting registration id", new Object[] { Integer.valueOf(i), Integer.valueOf(j) });
        e(paramContext);
        localObject = "";
      }
    }
    return (String)localObject;
  }
  
  public static boolean d(Context paramContext)
  {
    return c(paramContext).length() > 0;
  }
  
  static String e(Context paramContext)
  {
    a(paramContext, null, 0L);
    return b(paramContext, "");
  }
  
  private static int f(Context paramContext)
  {
    try
    {
      int i = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new RuntimeException("Coult not get package name: " + paramContext);
    }
  }
  
  private static SharedPreferences g(Context paramContext)
  {
    return f.d(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */