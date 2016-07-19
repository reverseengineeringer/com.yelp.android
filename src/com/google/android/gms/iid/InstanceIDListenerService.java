package com.google.android.gms.iid;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.gcm.GcmReceiver;
import java.io.IOException;

public class InstanceIDListenerService
  extends Service
{
  static String a = "action";
  private static String f = "google.com/iid";
  private static String g = "CMD";
  private static String h = "gcm.googleapis.com/refresh";
  MessengerCompat b = new MessengerCompat(new Handler(Looper.getMainLooper())
  {
    public void handleMessage(Message paramAnonymousMessage)
    {
      InstanceIDListenerService.a(InstanceIDListenerService.this, paramAnonymousMessage, MessengerCompat.a(paramAnonymousMessage));
    }
  });
  BroadcastReceiver c = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (Log.isLoggable("InstanceID", 3))
      {
        paramAnonymousIntent.getStringExtra("registration_id");
        Log.d("InstanceID", "Received GSF callback using dynamic receiver: " + paramAnonymousIntent.getExtras());
      }
      a(paramAnonymousIntent);
      a();
    }
  };
  int d;
  int e;
  
  static void a(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.android.gms.iid.InstanceID");
    localIntent.setPackage(paramContext.getPackageName());
    localIntent.putExtra(g, "SYNC");
    paramContext.startService(localIntent);
  }
  
  static void a(Context paramContext, e parame)
  {
    parame.b();
    parame = new Intent("com.google.android.gms.iid.InstanceID");
    parame.putExtra(g, "RST");
    parame.setPackage(paramContext.getPackageName());
    paramContext.startService(parame);
  }
  
  private void a(Message paramMessage, int paramInt)
  {
    d.a(this);
    getPackageManager();
    if ((paramInt != d.c) && (paramInt != d.b))
    {
      Log.w("InstanceID", "Message from unexpected caller " + paramInt + " mine=" + d.b + " appid=" + d.c);
      return;
    }
    a((Intent)obj);
  }
  
  void a()
  {
    try
    {
      d -= 1;
      if (d == 0) {
        stopSelf(e);
      }
      if (Log.isLoggable("InstanceID", 3)) {
        Log.d("InstanceID", "Stop " + d + " " + e);
      }
      return;
    }
    finally {}
  }
  
  void a(int paramInt)
  {
    try
    {
      d += 1;
      if (paramInt > e) {
        e = paramInt;
      }
      return;
    }
    finally {}
  }
  
  public void a(Intent paramIntent)
  {
    String str2 = paramIntent.getStringExtra("subtype");
    Object localObject;
    String str1;
    if (str2 == null)
    {
      localObject = a.b(this);
      str1 = paramIntent.getStringExtra(g);
      if ((paramIntent.getStringExtra("error") == null) && (paramIntent.getStringExtra("registration_id") == null)) {
        break label113;
      }
      if (Log.isLoggable("InstanceID", 3)) {
        Log.d("InstanceID", "Register result in service " + str2);
      }
      ((a)localObject).d().d(paramIntent);
    }
    label113:
    label291:
    do
    {
      do
      {
        return;
        localObject = new Bundle();
        ((Bundle)localObject).putString("subtype", str2);
        localObject = a.a(this, (Bundle)localObject);
        break;
        if (Log.isLoggable("InstanceID", 3)) {
          Log.d("InstanceID", "Service command " + str2 + " " + str1 + " " + paramIntent.getExtras());
        }
        if (paramIntent.getStringExtra("unregistered") != null)
        {
          e locale = ((a)localObject).c();
          str1 = str2;
          if (str2 == null) {
            str1 = "";
          }
          locale.e(str1);
          ((a)localObject).d().d(paramIntent);
          return;
        }
        if (h.equals(paramIntent.getStringExtra("from")))
        {
          ((a)localObject).c().e(str2);
          a(false);
          return;
        }
        if ("RST".equals(str1))
        {
          ((a)localObject).b();
          a(true);
          return;
        }
        if (!"RST_FULL".equals(str1)) {
          break label291;
        }
      } while (((a)localObject).c().a());
      ((a)localObject).c().b();
      a(true);
      return;
      if ("SYNC".equals(str1))
      {
        ((a)localObject).c().e(str2);
        a(false);
        return;
      }
    } while (!"PING".equals(str1));
    try
    {
      com.google.android.gms.gcm.a.a(this).a(f, d.b(), 0L, paramIntent.getExtras());
      return;
    }
    catch (IOException paramIntent)
    {
      Log.w("InstanceID", "Failed to send ping response");
    }
  }
  
  public void a(boolean paramBoolean)
  {
    b();
  }
  
  public void b() {}
  
  public IBinder onBind(Intent paramIntent)
  {
    if ((paramIntent != null) && ("com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction()))) {
      return b.a();
    }
    return null;
  }
  
  public void onCreate()
  {
    IntentFilter localIntentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
    localIntentFilter.addCategory(getPackageName());
    registerReceiver(c, localIntentFilter, "com.google.android.c2dm.permission.RECEIVE", null);
  }
  
  public void onDestroy()
  {
    unregisterReceiver(c);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    a(paramInt2);
    if (paramIntent == null)
    {
      a();
      return 2;
    }
    try
    {
      if ("com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction()))
      {
        if (Build.VERSION.SDK_INT <= 18)
        {
          Intent localIntent = (Intent)paramIntent.getParcelableExtra("GSF");
          if (localIntent != null)
          {
            startService(localIntent);
            return 1;
          }
        }
        a(paramIntent);
      }
      a();
      if (paramIntent.getStringExtra("from") != null) {
        GcmReceiver.a(paramIntent);
      }
      return 2;
    }
    finally
    {
      a();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.InstanceIDListenerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */