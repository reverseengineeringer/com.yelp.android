package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.google.android.gms.iid.d;
import com.google.android.gms.iid.e;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class a
{
  public static int a = 5000000;
  public static int b = 6500000;
  public static int c = 7000000;
  static a d;
  private static final AtomicInteger i = new AtomicInteger(1);
  final Messenger e = new Messenger(new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      if ((paramAnonymousMessage == null) || (!(obj instanceof Intent))) {
        Log.w("GCM", "Dropping invalid message");
      }
      paramAnonymousMessage = (Intent)obj;
      if ("com.google.android.c2dm.intent.REGISTRATION".equals(paramAnonymousMessage.getAction())) {
        a.a(a.this).add(paramAnonymousMessage);
      }
      while (a.a(a.this, paramAnonymousMessage)) {
        return;
      }
      paramAnonymousMessage.setPackage(a.b(a.this).getPackageName());
      a.b(a.this).sendBroadcast(paramAnonymousMessage);
    }
  });
  private Context f;
  private PendingIntent g;
  private Map<String, Handler> h = Collections.synchronizedMap(new HashMap());
  private final BlockingQueue<Intent> j = new LinkedBlockingQueue();
  
  public static a a(Context paramContext)
  {
    try
    {
      if (d == null)
      {
        d = new a();
        df = paramContext.getApplicationContext();
      }
      paramContext = d;
      return paramContext;
    }
    finally {}
  }
  
  private String a()
  {
    return "google.rpc" + String.valueOf(i.getAndIncrement());
  }
  
  static String a(Intent paramIntent, String paramString)
    throws IOException
  {
    if (paramIntent == null) {
      throw new IOException("SERVICE_NOT_AVAILABLE");
    }
    paramString = paramIntent.getStringExtra(paramString);
    if (paramString != null) {
      return paramString;
    }
    paramIntent = paramIntent.getStringExtra("error");
    if (paramIntent != null) {
      throw new IOException(paramIntent);
    }
    throw new IOException("SERVICE_NOT_AVAILABLE");
  }
  
  private String a(String paramString)
  {
    int k = paramString.indexOf('@');
    String str = paramString;
    if (k > 0) {
      str = paramString.substring(0, k);
    }
    return com.google.android.gms.iid.a.b(f).c().a("", str, "GCM");
  }
  
  private void a(String paramString1, String paramString2, long paramLong, int paramInt, Bundle paramBundle)
    throws IOException
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("Missing 'to'");
    }
    Object localObject1 = new Intent("com.google.android.gcm.intent.SEND");
    if (paramBundle != null) {
      ((Intent)localObject1).putExtras(paramBundle);
    }
    b((Intent)localObject1);
    ((Intent)localObject1).setPackage(b(f));
    ((Intent)localObject1).putExtra("google.to", paramString1);
    ((Intent)localObject1).putExtra("google.message_id", paramString2);
    ((Intent)localObject1).putExtra("google.ttl", Long.toString(paramLong));
    ((Intent)localObject1).putExtra("google.delay", Integer.toString(paramInt));
    ((Intent)localObject1).putExtra("google.from", a(paramString1));
    if (b(f).contains(".gsf"))
    {
      localObject1 = new Bundle();
      Iterator localIterator = paramBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject2 = paramBundle.get(str);
        if ((localObject2 instanceof String)) {
          ((Bundle)localObject1).putString("gcm." + str, (String)localObject2);
        }
      }
      ((Bundle)localObject1).putString("google.to", paramString1);
      ((Bundle)localObject1).putString("google.message_id", paramString2);
      com.google.android.gms.iid.a.b(f).b("GCM", "upstream", (Bundle)localObject1);
      return;
    }
    f.sendOrderedBroadcast((Intent)localObject1, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
  }
  
  public static String b(Context paramContext)
  {
    return d.a(paramContext);
  }
  
  public static int c(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      int k = getPackageInfob0versionCode;
      return k;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return -1;
  }
  
  private boolean c(Intent paramIntent)
  {
    Object localObject2 = paramIntent.getStringExtra("In-Reply-To");
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (paramIntent.hasExtra("error")) {
        localObject1 = paramIntent.getStringExtra("google.message_id");
      }
    }
    if (localObject1 != null)
    {
      localObject1 = (Handler)h.remove(localObject1);
      if (localObject1 != null)
      {
        localObject2 = Message.obtain();
        obj = paramIntent;
        return ((Handler)localObject1).sendMessage((Message)localObject2);
      }
    }
    return false;
  }
  
  @Deprecated
  Intent a(Bundle paramBundle)
    throws IOException
  {
    if (Looper.getMainLooper() == Looper.myLooper()) {
      throw new IOException("MAIN_THREAD");
    }
    if (c(f) < 0) {
      throw new IOException("Google Play Services missing");
    }
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    paramBundle = new Intent("com.google.android.c2dm.intent.REGISTER");
    paramBundle.setPackage(b(f));
    b(paramBundle);
    paramBundle.putExtra("google.message_id", a());
    paramBundle.putExtras(localBundle);
    paramBundle.putExtra("google.messenger", e);
    f.startService(paramBundle);
    try
    {
      paramBundle = (Intent)j.poll(30000L, TimeUnit.MILLISECONDS);
      return paramBundle;
    }
    catch (InterruptedException paramBundle)
    {
      throw new IOException(paramBundle.getMessage());
    }
  }
  
  public String a(Intent paramIntent)
  {
    if (!"com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction())) {
      paramIntent = null;
    }
    String str;
    do
    {
      return paramIntent;
      str = paramIntent.getStringExtra("message_type");
      paramIntent = str;
    } while (str != null);
    return "gcm";
  }
  
  /* Error */
  @Deprecated
  public String a(String... paramVarArgs)
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual 371	com/google/android/gms/gcm/a:b	([Ljava/lang/String;)Ljava/lang/String;
    //   7: astore_1
    //   8: new 214	android/os/Bundle
    //   11: dup
    //   12: invokespecial 215	android/os/Bundle:<init>	()V
    //   15: astore_2
    //   16: aload_0
    //   17: getfield 92	com/google/android/gms/gcm/a:f	Landroid/content/Context;
    //   20: invokestatic 177	com/google/android/gms/gcm/a:b	(Landroid/content/Context;)Ljava/lang/String;
    //   23: ldc -48
    //   25: invokevirtual 212	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   28: ifeq +30 -> 58
    //   31: aload_2
    //   32: ldc_w 373
    //   35: aload_1
    //   36: invokevirtual 245	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: aload_0
    //   40: getfield 92	com/google/android/gms/gcm/a:f	Landroid/content/Context;
    //   43: invokestatic 145	com/google/android/gms/iid/a:b	(Landroid/content/Context;)Lcom/google/android/gms/iid/a;
    //   46: aload_1
    //   47: ldc -104
    //   49: aload_2
    //   50: invokevirtual 375	com/google/android/gms/iid/a:a	(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: areturn
    //   58: aload_2
    //   59: ldc_w 377
    //   62: aload_1
    //   63: invokevirtual 245	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   66: aload_0
    //   67: aload_2
    //   68: invokevirtual 379	com/google/android/gms/gcm/a:a	(Landroid/os/Bundle;)Landroid/content/Intent;
    //   71: ldc_w 381
    //   74: invokestatic 383	com/google/android/gms/gcm/a:a	(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    //   77: astore_1
    //   78: goto -24 -> 54
    //   81: astore_1
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_1
    //   85: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	a
    //   0	86	1	paramVarArgs	String[]
    //   15	53	2	localBundle	Bundle
    // Exception table:
    //   from	to	target	type
    //   2	54	81	finally
    //   58	78	81	finally
  }
  
  public void a(String paramString1, String paramString2, long paramLong, Bundle paramBundle)
    throws IOException
  {
    a(paramString1, paramString2, paramLong, -1, paramBundle);
  }
  
  String b(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length == 0)) {
      throw new IllegalArgumentException("No senderIds");
    }
    StringBuilder localStringBuilder = new StringBuilder(paramVarArgs[0]);
    int k = 1;
    while (k < paramVarArgs.length)
    {
      localStringBuilder.append(',').append(paramVarArgs[k]);
      k += 1;
    }
    return localStringBuilder.toString();
  }
  
  void b(Intent paramIntent)
  {
    try
    {
      if (g == null)
      {
        Intent localIntent = new Intent();
        localIntent.setPackage("com.google.example.invalidpackage");
        g = PendingIntent.getBroadcast(f, 0, localIntent, 0);
      }
      paramIntent.putExtra("app", g);
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.gcm.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */