.class public final Lcom/kahuna/sdk/e;
.super Ljava/lang/Object;
.source "GCMRegistrar.java"


# static fields
.field private static a:Lcom/kahuna/sdk/KahunaPushReceiver;

.field private static b:Landroid/content/Context;

.field private static c:Ljava/lang/String;

.field private static d:Landroid/app/PendingIntent;


# direct methods
.method static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 247
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    aget-object v0, p0, v2

    if-nez v0, :cond_1

    .line 248
    :cond_0
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v1, "App is configured for Push, but you need to call onAppCreate() in your Application to prevent strange behavior!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string/jumbo v0, ""

    .line 254
    :goto_0
    return-object v0

    .line 251
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v0, p0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x1

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 253
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static declared-synchronized a()V
    .locals 2

    .prologue
    .line 274
    const-class v1, Lcom/kahuna/sdk/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/e;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 275
    sget-object v0, Lcom/kahuna/sdk/e;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 276
    const/4 v0, 0x0

    sput-object v0, Lcom/kahuna/sdk/e;->d:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    monitor-exit v1

    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 239
    const/4 v0, 0x2

    const-string/jumbo v1, "Unregistering app"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    const-string/jumbo v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-static {p0, v0}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 243
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 244
    return-void
.end method

.method private static varargs a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 504
    const-string/jumbo v0, "GCMRegistrar"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 506
    const-string/jumbo v1, "GCMRegistrar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 282
    const-class v1, Lcom/kahuna/sdk/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/e;->d:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x2

    const-string/jumbo v2, "Creating pending intent to get package name"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 285
    const/4 v0, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/e;->d:Landroid/app/PendingIntent;

    .line 288
    :cond_0
    const-string/jumbo v0, "app"

    sget-object v2, Lcom/kahuna/sdk/e;->d:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    monitor-exit v1

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Boolean;J)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 409
    invoke-static {p0}, Lcom/kahuna/sdk/e;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    if-eqz p1, :cond_0

    .line 412
    const-string/jumbo v1, "onServer"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 413
    const-string/jumbo v1, "Setting registeredOnServer flag as %b until %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    new-instance v3, Ljava/sql/Timestamp;

    invoke-direct {v3, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v3, v2, v6

    invoke-static {p0, v4, v1, v2}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :goto_0
    const-string/jumbo v1, "onServerExpirationTime"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 422
    return-void

    .line 417
    :cond_0
    const-string/jumbo v1, "Setting registeredOnServer expiration to %s"

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/sql/Timestamp;

    invoke-direct {v3, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v3, v2, v5

    invoke-static {p0, v4, v1, v2}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 329
    const-class v1, Lcom/kahuna/sdk/e;

    monitor-enter v1

    const/4 v0, 0x2

    :try_start_0
    const-string/jumbo v2, "Setting the name of retry receiver class to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v0, v2, v3}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 331
    sput-object p1, Lcom/kahuna/sdk/e;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit v1

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    invoke-static {p0}, Lcom/kahuna/sdk/f;->b(Landroid/content/Context;)V

    .line 212
    invoke-static {p0, p1}, Lcom/kahuna/sdk/e;->b(Landroid/content/Context;[Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 386
    invoke-static {p0}, Lcom/kahuna/sdk/e;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    const-string/jumbo v1, "regId"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-static {p0}, Lcom/kahuna/sdk/e;->f(Landroid/content/Context;)I

    move-result v2

    .line 389
    const/4 v3, 0x2

    const-string/jumbo v4, "Saving regId on app version %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v3, v4, v5}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 391
    const-string/jumbo v3, "regId"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    const-string/jumbo v3, "appVersion"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    return-object v1
.end method

.method static declared-synchronized b(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 296
    const-class v1, Lcom/kahuna/sdk/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/e;->a:Lcom/kahuna/sdk/KahunaPushReceiver;

    if-nez v0, :cond_0

    .line 297
    sget-object v0, Lcom/kahuna/sdk/e;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 299
    const/4 v0, 0x6

    const-string/jumbo v2, "internal error: retry receiver class not set yet"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 301
    new-instance v0, Lcom/kahuna/sdk/KahunaPushReceiver;

    invoke-direct {v0}, Lcom/kahuna/sdk/KahunaPushReceiver;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/e;->a:Lcom/kahuna/sdk/KahunaPushReceiver;

    .line 314
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 318
    const/4 v0, 0x2

    const-string/jumbo v3, "Registering retry receiver"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v4}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 319
    sput-object p0, Lcom/kahuna/sdk/e;->b:Landroid/content/Context;

    .line 320
    sget-object v0, Lcom/kahuna/sdk/e;->b:Landroid/content/Context;

    sget-object v3, Lcom/kahuna/sdk/e;->a:Lcom/kahuna/sdk/KahunaPushReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_0
    monitor-exit v1

    return-void

    .line 305
    :cond_1
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/e;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kahuna/sdk/KahunaPushReceiver;

    sput-object v0, Lcom/kahuna/sdk/e;->a:Lcom/kahuna/sdk/KahunaPushReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const/4 v0, 0x6

    :try_start_2
    const-string/jumbo v2, "Could not create instance of %s. Using %s directly."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/kahuna/sdk/e;->c:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lcom/kahuna/sdk/KahunaPushReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v0, v2, v3}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 311
    new-instance v0, Lcom/kahuna/sdk/KahunaPushReceiver;

    invoke-direct {v0}, Lcom/kahuna/sdk/KahunaPushReceiver;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/e;->a:Lcom/kahuna/sdk/KahunaPushReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static varargs b(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 216
    invoke-static {p1}, Lcom/kahuna/sdk/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const/4 v1, 0x2

    const-string/jumbo v2, "Registering app for senders %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v1, v2, v3}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 219
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v2, "com.google.android.gsf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-static {p0, v1}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 222
    const-string/jumbo v2, "sender"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 224
    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/high16 v3, -0x80000000

    .line 343
    invoke-static {p0}, Lcom/kahuna/sdk/e;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    const-string/jumbo v0, "regId"

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    const-string/jumbo v2, "appVersion"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 348
    invoke-static {p0}, Lcom/kahuna/sdk/e;->f(Landroid/content/Context;)I

    move-result v2

    .line 349
    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    .line 350
    const-string/jumbo v0, "App version changed from %d to %d;resetting registration id"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p0, v5, v0, v3}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 352
    invoke-static {p0}, Lcom/kahuna/sdk/e;->e(Landroid/content/Context;)Ljava/lang/String;

    .line 353
    const-string/jumbo v0, ""

    .line 355
    :cond_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 363
    invoke-static {p0}, Lcom/kahuna/sdk/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 375
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;Ljava/lang/Boolean;J)V

    .line 376
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/kahuna/sdk/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 481
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 483
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 484
    :catch_0
    move-exception v0

    .line 486
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Coult not get package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static g(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 491
    invoke-static {p0}, Lcom/kahuna/sdk/f;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
