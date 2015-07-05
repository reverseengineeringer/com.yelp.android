.class public abstract Lcom/kahuna/sdk/GCMBaseIntentService;
.super Landroid/app/IntentService;
.source "GCMBaseIntentService.java"


# static fields
.field private static b:Landroid/os/PowerManager$WakeLock;

.field private static final c:Ljava/lang/Object;

.field private static e:I


# instance fields
.field private final a:Lcom/kahuna/sdk/af;

.field private final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/kahuna/sdk/GCMBaseIntentService;

    sput-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->c:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/kahuna/sdk/GCMBaseIntentService;->e:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "DynamicSenderIds"

    invoke-static {v0}, Lcom/kahuna/sdk/GCMBaseIntentService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/kahuna/sdk/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/kahuna/sdk/af;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kahuna/sdk/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    .line 84
    iput-object p2, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->d:[Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const/4 v1, 0x2

    const-string/jumbo v2, "Intent service name: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    invoke-static {p1}, Lcom/kahuna/sdk/GCMBaseIntentService;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/kahuna/sdk/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GCMIntentService-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/kahuna/sdk/GCMBaseIntentService;->e:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/kahuna/sdk/GCMBaseIntentService;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {p0}, Lcom/kahuna/sdk/e;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/kahuna/sdk/GCMBaseIntentService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 275
    sget-object v1, Lcom/kahuna/sdk/GCMBaseIntentService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 278
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 280
    const/4 v2, 0x1

    const-string/jumbo v3, "GCM_LIB"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    .line 283
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :cond_1
    :goto_0
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 293
    return-void

    .line 283
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    sget-boolean v0, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v0, :cond_1

    .line 289
    const-string/jumbo v0, "KahunaAnalytics"

    const-string/jumbo v1, "App does not have WAKE_LOCK permission"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 296
    invoke-static {}, Lcom/kahuna/sdk/e;->a()V

    .line 297
    const-string/jumbo v0, "registration_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "error"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    const-string/jumbo v2, "unregistered"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    iget-object v3, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const-string/jumbo v4, "handleRegistration: registrationId = %s, error = %s, unregistered = %s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-virtual {v3, v7, v4, v5}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-static {p1}, Lcom/kahuna/sdk/f;->b(Landroid/content/Context;)V

    .line 307
    invoke-static {p1, v0}, Lcom/kahuna/sdk/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    invoke-virtual {p0, p1, v0}, Lcom/kahuna/sdk/GCMBaseIntentService;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    :goto_0
    return-void

    .line 313
    :cond_0
    if-eqz v2, :cond_1

    .line 315
    invoke-static {p1}, Lcom/kahuna/sdk/f;->b(Landroid/content/Context;)V

    .line 316
    invoke-static {p1}, Lcom/kahuna/sdk/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-virtual {p0, p1, v0}, Lcom/kahuna/sdk/GCMBaseIntentService;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_1
    const-string/jumbo v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    invoke-static {}, Lcom/kahuna/sdk/f;->c()V

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/kahuna/sdk/GCMBaseIntentService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "sender id not set on constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->d:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract b(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract c(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 9

    .prologue
    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/kahuna/sdk/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {}, Lcom/kahuna/sdk/f;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 179
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    .line 182
    invoke-virtual {v2, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    const-string/jumbo v1, "gcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0, v0, p1}, Lcom/kahuna/sdk/GCMBaseIntentService;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 255
    :cond_0
    :goto_0
    sget-object v1, Lcom/kahuna/sdk/GCMBaseIntentService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_1
    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 258
    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 262
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 264
    :goto_2
    return-void

    .line 197
    :cond_1
    :try_start_2
    const-string/jumbo v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    invoke-static {v0}, Lcom/kahuna/sdk/e;->b(Landroid/content/Context;)V

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/kahuna/sdk/GCMBaseIntentService;->b(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_3
    sget-boolean v1, Lcom/kahuna/sdk/h;->a:Z

    if-eqz v1, :cond_2

    .line 244
    const-string/jumbo v1, "KahunaAnalytics"

    const-string/jumbo v2, "Caught exception in GCM onHandleIntent, SDK might not be initialized correctly."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 255
    :cond_2
    sget-object v1, Lcom/kahuna/sdk/GCMBaseIntentService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_4
    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 258
    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 262
    :goto_3
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 200
    :cond_3
    :try_start_5
    const-string/jumbo v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 202
    const-string/jumbo v1, "message_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_5

    .line 205
    const-string/jumbo v2, "deleted_messages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 206
    const-string/jumbo v1, "total_deleted"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    .line 208
    if-eqz v1, :cond_0

    .line 209
    :try_start_6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 210
    iget-object v3, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const/4 v4, 0x2

    const-string/jumbo v5, "Received notification for %d deletedmessages"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0, v0, v2}, Lcom/kahuna/sdk/GCMBaseIntentService;->a(Landroid/content/Context;I)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    .line 214
    :catch_1
    move-exception v0

    .line 215
    :try_start_7
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const/4 v2, 0x6

    const-string/jumbo v3, "GCM returned invalid number of deleted messages (%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 255
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/kahuna/sdk/GCMBaseIntentService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_8
    sget-object v2, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_d

    sget-object v2, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 258
    sget-object v2, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 262
    :goto_4
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 220
    :cond_4
    :try_start_9
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const/4 v2, 0x6

    const-string/jumbo v3, "Received unknown special message: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 223
    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/kahuna/sdk/GCMBaseIntentService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 224
    :cond_6
    const-string/jumbo v2, "com.google.android.gcm.intent.RETRY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/kahuna/sdk/GCMBaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 228
    :cond_7
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const/4 v2, 0x6

    const-string/jumbo v3, "Ignoring retry intent from another package (%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 255
    sget-object v1, Lcom/kahuna/sdk/GCMBaseIntentService;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_a
    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 258
    sget-object v0, Lcom/kahuna/sdk/GCMBaseIntentService;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 262
    :goto_5
    monitor-exit v1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    .line 261
    :cond_8
    :try_start_b
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const/4 v2, 0x6

    const-string/jumbo v3, "Wakelock reference is null or not held"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    .line 234
    :cond_9
    :try_start_c
    invoke-static {v0}, Lcom/kahuna/sdk/e;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 236
    :cond_a
    invoke-virtual {p0, v0}, Lcom/kahuna/sdk/GCMBaseIntentService;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lcom/kahuna/sdk/e;->b(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_0

    .line 261
    :cond_b
    :try_start_d
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const/4 v2, 0x6

    const-string/jumbo v3, "Wakelock reference is null or not held"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 262
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    .line 261
    :cond_c
    :try_start_e
    iget-object v0, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const/4 v2, 0x6

    const-string/jumbo v3, "Wakelock reference is null or not held"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_3

    :cond_d
    :try_start_f
    iget-object v2, p0, Lcom/kahuna/sdk/GCMBaseIntentService;->a:Lcom/kahuna/sdk/af;

    const/4 v3, 0x6

    const-string/jumbo v4, "Wakelock reference is null or not held"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v5}, Lcom/kahuna/sdk/af;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 262
    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    throw v0
.end method
