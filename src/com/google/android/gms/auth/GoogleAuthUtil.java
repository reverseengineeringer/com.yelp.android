package com.google.android.gms.auth;

import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.jx;
import java.net.URISyntaxException;

public final class GoogleAuthUtil
{
  public static final int CHANGE_TYPE_ACCOUNT_ADDED = 1;
  public static final int CHANGE_TYPE_ACCOUNT_REMOVED = 2;
  public static final int CHANGE_TYPE_ACCOUNT_RENAMED_FROM = 3;
  public static final int CHANGE_TYPE_ACCOUNT_RENAMED_TO = 4;
  private static final ComponentName Ek;
  private static final ComponentName El;
  private static final Intent Em;
  private static final Intent En;
  public static final String GOOGLE_ACCOUNT_TYPE = "com.google";
  public static final String KEY_ANDROID_PACKAGE_NAME;
  public static final String KEY_CALLER_UID;
  public static final String KEY_REQUEST_ACTIONS = "request_visible_actions";
  @Deprecated
  public static final String KEY_REQUEST_VISIBLE_ACTIVITIES = "request_visible_actions";
  public static final String KEY_SUPPRESS_PROGRESS_SCREEN = "suppressProgressScreen";
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      KEY_CALLER_UID = "callerUid";
      if (Build.VERSION.SDK_INT < 14) {
        break label100;
      }
    }
    label100:
    for (;;)
    {
      KEY_ANDROID_PACKAGE_NAME = "androidPackageName";
      Ek = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
      El = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
      Em = new Intent().setPackage("com.google.android.gms").setComponent(Ek);
      En = new Intent().setPackage("com.google.android.gms").setComponent(El);
      return;
      break;
    }
  }
  
  private static void C(Context paramContext)
  {
    try
    {
      GooglePlayServicesUtil.C(paramContext);
      return;
    }
    catch (GooglePlayServicesRepairableException paramContext)
    {
      throw new GooglePlayServicesAvailabilityException(paramContext.getConnectionStatusCode(), paramContext.getMessage(), paramContext.getIntent());
    }
    catch (GooglePlayServicesNotAvailableException paramContext)
    {
      throw new GoogleAuthException(paramContext.getMessage());
    }
  }
  
  private static String a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    try
    {
      paramString1 = getToken(paramContext, paramString1, paramString2, localBundle);
      return paramString1;
    }
    catch (GooglePlayServicesAvailabilityException paramString1)
    {
      GooglePlayServicesUtil.showErrorNotification(paramString1.getConnectionStatusCode(), paramContext);
      throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
    }
    catch (UserRecoverableAuthException paramContext)
    {
      throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.");
    }
  }
  
  private static boolean ax(String paramString)
  {
    return ("NetworkError".equals(paramString)) || ("ServiceUnavailable".equals(paramString)) || ("Timeout".equals(paramString));
  }
  
  private static boolean ay(String paramString)
  {
    return ("BadAuthentication".equals(paramString)) || ("CaptchaRequired".equals(paramString)) || ("DeviceManagementRequiredOrSyncDisabled".equals(paramString)) || ("NeedPermission".equals(paramString)) || ("NeedsBrowser".equals(paramString)) || ("UserCancel".equals(paramString)) || ("AppDownloadRequired".equals(paramString)) || (ii.EI.fO().equals(paramString)) || (ii.EJ.fO().equals(paramString)) || (ii.EK.fO().equals(paramString)) || (ii.EL.fO().equals(paramString)) || (ii.EM.fO().equals(paramString)) || (ii.EN.fO().equals(paramString));
  }
  
  /* Error */
  public static void clearToken(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 200	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore_2
    //   5: ldc -54
    //   7: invokestatic 207	com/google/android/gms/internal/jx:aV	(Ljava/lang/String;)V
    //   10: aload_2
    //   11: invokestatic 208	com/google/android/gms/auth/GoogleAuthUtil:C	(Landroid/content/Context;)V
    //   14: new 121	android/os/Bundle
    //   17: dup
    //   18: invokespecial 122	android/os/Bundle:<init>	()V
    //   21: astore_3
    //   22: aload_0
    //   23: invokevirtual 212	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   26: getfield 217	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   29: astore_0
    //   30: aload_3
    //   31: ldc -37
    //   33: aload_0
    //   34: invokevirtual 222	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   37: aload_3
    //   38: getstatic 48	com/google/android/gms/auth/GoogleAuthUtil:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   41: invokevirtual 225	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   44: ifne +11 -> 55
    //   47: aload_3
    //   48: getstatic 48	com/google/android/gms/auth/GoogleAuthUtil:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   51: aload_0
    //   52: invokevirtual 222	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   55: new 227	com/google/android/gms/common/a
    //   58: dup
    //   59: invokespecial 228	com/google/android/gms/common/a:<init>	()V
    //   62: astore_0
    //   63: aload_2
    //   64: getstatic 78	com/google/android/gms/auth/GoogleAuthUtil:Em	Landroid/content/Intent;
    //   67: aload_0
    //   68: iconst_1
    //   69: invokevirtual 232	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   72: ifeq +93 -> 165
    //   75: aload_0
    //   76: invokevirtual 236	com/google/android/gms/common/a:gs	()Landroid/os/IBinder;
    //   79: invokestatic 241	com/google/android/gms/internal/r$a:a	(Landroid/os/IBinder;)Lcom/google/android/gms/internal/r;
    //   82: aload_1
    //   83: aload_3
    //   84: invokeinterface 246 3 0
    //   89: astore_1
    //   90: aload_1
    //   91: getstatic 249	com/google/android/gms/internal/ii:Fk	Ljava/lang/String;
    //   94: invokevirtual 253	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   97: astore_3
    //   98: aload_1
    //   99: ldc -1
    //   101: invokevirtual 258	android/os/Bundle:getBoolean	(Ljava/lang/String;)Z
    //   104: ifne +43 -> 147
    //   107: new 111	com/google/android/gms/auth/GoogleAuthException
    //   110: dup
    //   111: aload_3
    //   112: invokespecial 115	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   115: athrow
    //   116: astore_1
    //   117: ldc_w 260
    //   120: ldc_w 262
    //   123: aload_1
    //   124: invokestatic 268	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   127: pop
    //   128: new 270	java/io/IOException
    //   131: dup
    //   132: ldc_w 272
    //   135: invokespecial 273	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   138: athrow
    //   139: astore_1
    //   140: aload_2
    //   141: aload_0
    //   142: invokevirtual 277	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   145: aload_1
    //   146: athrow
    //   147: aload_2
    //   148: aload_0
    //   149: invokevirtual 277	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   152: return
    //   153: astore_1
    //   154: new 111	com/google/android/gms/auth/GoogleAuthException
    //   157: dup
    //   158: ldc_w 279
    //   161: invokespecial 115	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   164: athrow
    //   165: new 270	java/io/IOException
    //   168: dup
    //   169: ldc_w 281
    //   172: invokespecial 273	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   175: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	176	0	paramContext	Context
    //   0	176	1	paramString	String
    //   4	144	2	localContext	Context
    //   21	91	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   75	116	116	android/os/RemoteException
    //   75	116	139	finally
    //   117	139	139	finally
    //   154	165	139	finally
    //   75	116	153	java/lang/InterruptedException
  }
  
  /* Error */
  public static java.util.List<AccountChangeEvent> getAccountChangeEvents(Context paramContext, int paramInt, String paramString)
  {
    // Byte code:
    //   0: aload_2
    //   1: ldc_w 285
    //   4: invokestatic 289	com/google/android/gms/internal/jx:b	(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    //   7: pop
    //   8: ldc -54
    //   10: invokestatic 207	com/google/android/gms/internal/jx:aV	(Ljava/lang/String;)V
    //   13: aload_0
    //   14: invokevirtual 200	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   17: astore_0
    //   18: aload_0
    //   19: invokestatic 208	com/google/android/gms/auth/GoogleAuthUtil:C	(Landroid/content/Context;)V
    //   22: new 227	com/google/android/gms/common/a
    //   25: dup
    //   26: invokespecial 228	com/google/android/gms/common/a:<init>	()V
    //   29: astore_3
    //   30: aload_0
    //   31: getstatic 78	com/google/android/gms/auth/GoogleAuthUtil:Em	Landroid/content/Intent;
    //   34: aload_3
    //   35: iconst_1
    //   36: invokevirtual 232	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   39: ifeq +84 -> 123
    //   42: aload_3
    //   43: invokevirtual 236	com/google/android/gms/common/a:gs	()Landroid/os/IBinder;
    //   46: invokestatic 241	com/google/android/gms/internal/r$a:a	(Landroid/os/IBinder;)Lcom/google/android/gms/internal/r;
    //   49: new 291	com/google/android/gms/auth/AccountChangeEventsRequest
    //   52: dup
    //   53: invokespecial 292	com/google/android/gms/auth/AccountChangeEventsRequest:<init>	()V
    //   56: aload_2
    //   57: invokevirtual 296	com/google/android/gms/auth/AccountChangeEventsRequest:setAccountName	(Ljava/lang/String;)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    //   60: iload_1
    //   61: invokevirtual 300	com/google/android/gms/auth/AccountChangeEventsRequest:setEventIndex	(I)Lcom/google/android/gms/auth/AccountChangeEventsRequest;
    //   64: invokeinterface 303 2 0
    //   69: invokevirtual 309	com/google/android/gms/auth/AccountChangeEventsResponse:getEvents	()Ljava/util/List;
    //   72: astore_2
    //   73: aload_0
    //   74: aload_3
    //   75: invokevirtual 277	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   78: aload_2
    //   79: areturn
    //   80: astore_2
    //   81: ldc_w 260
    //   84: ldc_w 262
    //   87: aload_2
    //   88: invokestatic 268	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   91: pop
    //   92: new 270	java/io/IOException
    //   95: dup
    //   96: ldc_w 272
    //   99: invokespecial 273	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   102: athrow
    //   103: astore_2
    //   104: aload_0
    //   105: aload_3
    //   106: invokevirtual 277	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   109: aload_2
    //   110: athrow
    //   111: astore_2
    //   112: new 111	com/google/android/gms/auth/GoogleAuthException
    //   115: dup
    //   116: ldc_w 279
    //   119: invokespecial 115	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   122: athrow
    //   123: new 270	java/io/IOException
    //   126: dup
    //   127: ldc_w 281
    //   130: invokespecial 273	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	paramContext	Context
    //   0	134	1	paramInt	int
    //   0	134	2	paramString	String
    //   29	77	3	locala	com.google.android.gms.common.a
    // Exception table:
    //   from	to	target	type
    //   42	73	80	android/os/RemoteException
    //   42	73	103	finally
    //   81	103	103	finally
    //   112	123	103	finally
    //   42	73	111	java/lang/InterruptedException
  }
  
  public static String getAccountId(Context paramContext, String paramString)
  {
    jx.b(paramString, "accountName must be provided");
    jx.aV("Calling this from your main thread can lead to deadlock");
    C(paramContext.getApplicationContext());
    return getToken(paramContext, paramString, "^^_account_id_^^", new Bundle());
  }
  
  public static String getAppCert(Context paramContext, String paramString)
  {
    return "spatula";
  }
  
  public static String getToken(Context paramContext, String paramString1, String paramString2)
  {
    return getToken(paramContext, paramString1, paramString2, new Bundle());
  }
  
  /* Error */
  public static String getToken(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 200	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   4: astore 5
    //   6: ldc -54
    //   8: invokestatic 207	com/google/android/gms/internal/jx:aV	(Ljava/lang/String;)V
    //   11: aload 5
    //   13: invokestatic 208	com/google/android/gms/auth/GoogleAuthUtil:C	(Landroid/content/Context;)V
    //   16: aload_3
    //   17: ifnonnull +137 -> 154
    //   20: new 121	android/os/Bundle
    //   23: dup
    //   24: invokespecial 122	android/os/Bundle:<init>	()V
    //   27: astore_3
    //   28: aload_0
    //   29: invokevirtual 212	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   32: getfield 217	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   35: astore_0
    //   36: aload_3
    //   37: ldc -37
    //   39: aload_0
    //   40: invokevirtual 222	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   43: aload_3
    //   44: getstatic 48	com/google/android/gms/auth/GoogleAuthUtil:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   47: invokevirtual 225	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   50: ifne +11 -> 61
    //   53: aload_3
    //   54: getstatic 48	com/google/android/gms/auth/GoogleAuthUtil:KEY_ANDROID_PACKAGE_NAME	Ljava/lang/String;
    //   57: aload_0
    //   58: invokevirtual 222	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   61: new 227	com/google/android/gms/common/a
    //   64: dup
    //   65: invokespecial 228	com/google/android/gms/common/a:<init>	()V
    //   68: astore_0
    //   69: aload 5
    //   71: getstatic 78	com/google/android/gms/auth/GoogleAuthUtil:Em	Landroid/content/Intent;
    //   74: aload_0
    //   75: iconst_1
    //   76: invokevirtual 232	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   79: ifeq +187 -> 266
    //   82: aload_0
    //   83: invokevirtual 236	com/google/android/gms/common/a:gs	()Landroid/os/IBinder;
    //   86: invokestatic 241	com/google/android/gms/internal/r$a:a	(Landroid/os/IBinder;)Lcom/google/android/gms/internal/r;
    //   89: aload_1
    //   90: aload_2
    //   91: aload_3
    //   92: invokeinterface 322 4 0
    //   97: astore_1
    //   98: aload_1
    //   99: ifnonnull +67 -> 166
    //   102: ldc_w 260
    //   105: ldc_w 324
    //   108: invokestatic 328	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   111: pop
    //   112: new 111	com/google/android/gms/auth/GoogleAuthException
    //   115: dup
    //   116: ldc -109
    //   118: invokespecial 115	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   121: athrow
    //   122: astore_1
    //   123: ldc_w 260
    //   126: ldc_w 262
    //   129: aload_1
    //   130: invokestatic 268	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   133: pop
    //   134: new 270	java/io/IOException
    //   137: dup
    //   138: ldc_w 272
    //   141: invokespecial 273	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   144: athrow
    //   145: astore_1
    //   146: aload 5
    //   148: aload_0
    //   149: invokevirtual 277	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   152: aload_1
    //   153: athrow
    //   154: new 121	android/os/Bundle
    //   157: dup
    //   158: aload_3
    //   159: invokespecial 331	android/os/Bundle:<init>	(Landroid/os/Bundle;)V
    //   162: astore_3
    //   163: goto -135 -> 28
    //   166: aload_1
    //   167: ldc_w 333
    //   170: invokevirtual 253	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   173: astore_2
    //   174: aload_2
    //   175: invokestatic 339	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   178: istore 4
    //   180: iload 4
    //   182: ifne +11 -> 193
    //   185: aload 5
    //   187: aload_0
    //   188: invokevirtual 277	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   191: aload_2
    //   192: areturn
    //   193: aload_1
    //   194: ldc_w 341
    //   197: invokevirtual 253	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   200: astore_2
    //   201: aload_1
    //   202: ldc_w 343
    //   205: invokevirtual 347	android/os/Bundle:getParcelable	(Ljava/lang/String;)Landroid/os/Parcelable;
    //   208: checkcast 66	android/content/Intent
    //   211: astore_1
    //   212: aload_2
    //   213: invokestatic 349	com/google/android/gms/auth/GoogleAuthUtil:ay	(Ljava/lang/String;)Z
    //   216: ifeq +25 -> 241
    //   219: new 119	com/google/android/gms/auth/UserRecoverableAuthException
    //   222: dup
    //   223: aload_2
    //   224: aload_1
    //   225: invokespecial 352	com/google/android/gms/auth/UserRecoverableAuthException:<init>	(Ljava/lang/String;Landroid/content/Intent;)V
    //   228: athrow
    //   229: astore_1
    //   230: new 111	com/google/android/gms/auth/GoogleAuthException
    //   233: dup
    //   234: ldc_w 279
    //   237: invokespecial 115	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   240: athrow
    //   241: aload_2
    //   242: invokestatic 354	com/google/android/gms/auth/GoogleAuthUtil:ax	(Ljava/lang/String;)Z
    //   245: ifeq +12 -> 257
    //   248: new 270	java/io/IOException
    //   251: dup
    //   252: aload_2
    //   253: invokespecial 273	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   256: athrow
    //   257: new 111	com/google/android/gms/auth/GoogleAuthException
    //   260: dup
    //   261: aload_2
    //   262: invokespecial 115	com/google/android/gms/auth/GoogleAuthException:<init>	(Ljava/lang/String;)V
    //   265: athrow
    //   266: new 270	java/io/IOException
    //   269: dup
    //   270: ldc_w 281
    //   273: invokespecial 273	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   276: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	277	0	paramContext	Context
    //   0	277	1	paramString1	String
    //   0	277	2	paramString2	String
    //   0	277	3	paramBundle	Bundle
    //   178	3	4	bool	boolean
    //   4	182	5	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   82	98	122	android/os/RemoteException
    //   102	122	122	android/os/RemoteException
    //   166	180	122	android/os/RemoteException
    //   193	229	122	android/os/RemoteException
    //   241	257	122	android/os/RemoteException
    //   257	266	122	android/os/RemoteException
    //   82	98	145	finally
    //   102	122	145	finally
    //   123	145	145	finally
    //   166	180	145	finally
    //   193	229	145	finally
    //   230	241	145	finally
    //   241	257	145	finally
    //   257	266	145	finally
    //   82	98	229	java/lang/InterruptedException
    //   102	122	229	java/lang/InterruptedException
    //   166	180	229	java/lang/InterruptedException
    //   193	229	229	java/lang/InterruptedException
    //   241	257	229	java/lang/InterruptedException
    //   257	266	229	java/lang/InterruptedException
  }
  
  public static String getTokenWithNotification(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putBoolean("handle_notification", true);
    return a(paramContext, paramString1, paramString2, localBundle);
  }
  
  public static String getTokenWithNotification(Context paramContext, String paramString1, String paramString2, Bundle paramBundle, Intent paramIntent)
  {
    h(paramIntent);
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putParcelable("callback_intent", paramIntent);
    localBundle.putBoolean("handle_notification", true);
    return a(paramContext, paramString1, paramString2, localBundle);
  }
  
  public static String getTokenWithNotification(Context paramContext, String paramString1, String paramString2, Bundle paramBundle1, String paramString3, Bundle paramBundle2)
  {
    if (TextUtils.isEmpty(paramString3)) {
      throw new IllegalArgumentException("Authority cannot be empty or null.");
    }
    Bundle localBundle = paramBundle1;
    if (paramBundle1 == null) {
      localBundle = new Bundle();
    }
    paramBundle1 = paramBundle2;
    if (paramBundle2 == null) {
      paramBundle1 = new Bundle();
    }
    ContentResolver.validateSyncExtrasBundle(paramBundle1);
    localBundle.putString("authority", paramString3);
    localBundle.putBundle("sync_extras", paramBundle1);
    localBundle.putBoolean("handle_notification", true);
    return a(paramContext, paramString1, paramString2, localBundle);
  }
  
  private static void h(Intent paramIntent)
  {
    if (paramIntent == null) {
      throw new IllegalArgumentException("Callback cannot be null.");
    }
    paramIntent = paramIntent.toUri(1);
    try
    {
      Intent.parseUri(paramIntent, 1);
      return;
    }
    catch (URISyntaxException paramIntent)
    {
      throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
    }
  }
  
  @Deprecated
  public static void invalidateToken(Context paramContext, String paramString)
  {
    AccountManager.get(paramContext).invalidateAuthToken("com.google", paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.GoogleAuthUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */