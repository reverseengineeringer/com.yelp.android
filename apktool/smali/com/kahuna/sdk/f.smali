.class public Lcom/kahuna/sdk/f;
.super Ljava/lang/Object;
.source "GCMRegistrationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kahuna/sdk/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Random;

.field private static final b:I

.field private static c:Lcom/kahuna/sdk/f;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Timer;

.field private h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/f;->a:Ljava/util/Random;

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/kahuna/sdk/f;->b:I

    .line 63
    new-instance v0, Lcom/kahuna/sdk/f;

    invoke-direct {v0}, Lcom/kahuna/sdk/f;-><init>()V

    sput-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kahuna/sdk/f;->e:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/f;->h:Ljava/lang/Object;

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/kahuna/sdk/f;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    return-object v0
.end method

.method protected static a()V
    .locals 4

    .prologue
    .line 82
    :try_start_0
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v0, v0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kahuna/sdk/f;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-boolean v0, v0, Lcom/kahuna/sdk/f;->e:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GCM is being managed from Play Services"

    :goto_1
    invoke-static {v0}, Lcom/kahuna/sdk/f;->d(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v0, v0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/f;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 97
    sget-object v2, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-boolean v2, v2, Lcom/kahuna/sdk/f;->e:Z

    if-eqz v2, :cond_3

    .line 98
    const-string/jumbo v2, "regId"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 103
    const-string/jumbo v2, "Migrating Push Token from Old GCM to Play Services"

    invoke-static {v2}, Lcom/kahuna/sdk/f;->d(Ljava/lang/String;)V

    .line 104
    const-string/jumbo v2, "registration_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    :cond_1
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kahuna/sdk/f;->e:Z

    goto :goto_0

    .line 91
    :cond_2
    const-string/jumbo v0, "GCM is being managed from Old GCM Client Library"

    goto :goto_1

    .line 108
    :cond_3
    const-string/jumbo v2, "registration_id"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    const-string/jumbo v2, "Migrating Push Token from Play Services back to Old GCM"

    invoke-static {v2}, Lcom/kahuna/sdk/f;->d(Ljava/lang/String;)V

    .line 116
    const-string/jumbo v2, "regId"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method private a(J)V
    .locals 5

    .prologue
    .line 275
    iget-object v1, p0, Lcom/kahuna/sdk/f;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/kahuna/sdk/f;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/kahuna/sdk/f;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 280
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kahuna/sdk/f;->g:Ljava/util/Timer;

    .line 281
    iget-object v0, p0, Lcom/kahuna/sdk/f;->g:Ljava/util/Timer;

    new-instance v2, Lcom/kahuna/sdk/f$a;

    iget-object v3, p0, Lcom/kahuna/sdk/f;->f:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/kahuna/sdk/f$a;-><init>(Lcom/kahuna/sdk/f;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 282
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iput-object p0, v0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    .line 77
    return-void
.end method

.method protected static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 222
    invoke-static {p0}, Lcom/kahuna/sdk/f;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "backoff_ms"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 226
    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 154
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iput-object p0, v0, Lcom/kahuna/sdk/f;->f:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-boolean v0, v0, Lcom/kahuna/sdk/f;->e:Z

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/kahuna/sdk/f;->a(J)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v0, v0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v3, v3, Lcom/kahuna/sdk/f;->f:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/kahuna/sdk/e;->a(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 124
    const-string/jumbo v0, ""

    .line 125
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-boolean v0, v0, Lcom/kahuna/sdk/f;->e:Z

    if-eqz v0, :cond_2

    .line 129
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v0, v0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/f;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 130
    const-string/jumbo v0, "registration_id"

    const-string/jumbo v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const-string/jumbo v0, "Registration not found."

    invoke-static {v0}, Lcom/kahuna/sdk/f;->d(Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, ""

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    const-string/jumbo v2, "appVersion"

    const/high16 v3, -0x80000000

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 139
    sget-object v2, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v2, v2, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/kahuna/sdk/f;->f(Landroid/content/Context;)I

    move-result v2

    .line 140
    if-eq v1, v2, :cond_0

    .line 141
    const-string/jumbo v0, "App version changed."

    invoke-static {v0}, Lcom/kahuna/sdk/f;->d(Ljava/lang/String;)V

    .line 142
    const-string/jumbo v0, ""

    goto :goto_0

    .line 148
    :cond_2
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v0, v0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected static b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 197
    const-string/jumbo v0, "Resetting backoff"

    invoke-static {v0}, Lcom/kahuna/sdk/f;->d(Ljava/lang/String;)V

    .line 198
    const/16 v0, 0xbb8

    invoke-static {p0, v0}, Lcom/kahuna/sdk/f;->a(Landroid/content/Context;I)V

    .line 199
    return-void
.end method

.method protected static declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 168
    const-class v1, Lcom/kahuna/sdk/f;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kahuna/sdk/l;->c(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    monitor-exit v1

    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_1
    const-string/jumbo v2, "Kahuna"

    const-string/jumbo v3, "KahunaSDK wasn\'t initialized in onAppCreate(), please initialized Kahuna correctly to prevent strange behavior"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static c(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 208
    invoke-static {p0}, Lcom/kahuna/sdk/f;->d(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "backoff_ms"

    const/16 v2, 0xbb8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0}, Lcom/kahuna/sdk/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected static c()Z
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-boolean v0, v0, Lcom/kahuna/sdk/f;->e:Z

    return v0
.end method

.method protected static d(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 253
    const-string/jumbo v0, "com.google.android.gcm"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method protected static d()V
    .locals 3

    .prologue
    .line 182
    :try_start_0
    invoke-static {}, Lcom/kahuna/sdk/l;->j()Lcom/kahuna/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kahuna/sdk/l;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string/jumbo v1, "Kahuna"

    const-string/jumbo v2, "KahunaSDK wasn\'t initialized in onAppCreate(), please initialized Kahuna correctly to prevent strange behavior"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Lcom/kahuna/sdk/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-boolean v0, v0, Lcom/kahuna/sdk/f;->e:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Play Services GCM: "

    .line 270
    :goto_0
    const-string/jumbo v1, "Kahuna"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    return-void

    .line 269
    :cond_1
    const-string/jumbo v0, "Old GCM: "

    goto :goto_0
.end method

.method static synthetic e(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/kahuna/sdk/f;->f(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method protected static e()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 229
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v0, v0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/kahuna/sdk/f;->c(Landroid/content/Context;)I

    move-result v1

    .line 230
    div-int/lit8 v0, v1, 0x2

    sget-object v2, Lcom/kahuna/sdk/f;->a:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Scheduling registration retry, backoff = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kahuna/sdk/f;->d(Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-boolean v0, v0, Lcom/kahuna/sdk/f;->e:Z

    if-eqz v0, :cond_1

    .line 234
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    int-to-long v2, v2

    invoke-direct {v0, v2, v3}, Lcom/kahuna/sdk/f;->a(J)V

    .line 247
    :goto_0
    sget v0, Lcom/kahuna/sdk/f;->b:I

    if-ge v1, v0, :cond_0

    .line 248
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v0, v0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/kahuna/sdk/f;->a(Landroid/content/Context;I)V

    .line 250
    :cond_0
    return-void

    .line 237
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    sget-object v3, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v3, v3, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    sget-object v3, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v3, v3, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    invoke-static {v3, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 240
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    iget-object v0, v0, Lcom/kahuna/sdk/f;->d:Landroid/content/Context;

    const-string/jumbo v4, "alarm"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 241
    const/4 v4, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    int-to-long v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v0, v4, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 258
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 260
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    return v0

    .line 261
    :catch_0
    move-exception v0

    .line 263
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f()Lcom/kahuna/sdk/f;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kahuna/sdk/f;->c:Lcom/kahuna/sdk/f;

    return-object v0
.end method
