.class public final Lcom/facebook/g;
.super Ljava/lang/Object;
.source "FacebookSdk.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile c:Ljava/util/concurrent/Executor;

.field private static volatile d:Ljava/lang/String;

.field private static volatile e:Ljava/lang/String;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/lang/String;

.field private static h:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile i:Z

.field private static j:Z

.field private static k:Ljava/io/File;

.field private static l:Landroid/content/Context;

.field private static m:I

.field private static final n:Ljava/lang/Object;

.field private static final o:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/util/concurrent/ThreadFactory;

.field private static q:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    const-class v0, Lcom/facebook/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/g;->a:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/LoggingBehavior;

    sget-object v2, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/facebook/g;->b:Ljava/util/HashSet;

    .line 71
    const-string/jumbo v0, "facebook.com"

    sput-object v0, Lcom/facebook/g;->g:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x10000

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/g;->h:Ljava/util/concurrent/atomic/AtomicLong;

    .line 73
    sput-boolean v4, Lcom/facebook/g;->i:Z

    .line 74
    sput-boolean v4, Lcom/facebook/g;->j:Z

    .line 80
    const v0, 0xface

    sput v0, Lcom/facebook/g;->m:I

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/g;->n:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/g;->o:Ljava/util/concurrent/BlockingQueue;

    .line 91
    new-instance v0, Lcom/facebook/g$1;

    invoke-direct {v0}, Lcom/facebook/g$1;-><init>()V

    sput-object v0, Lcom/facebook/g;->p:Ljava/util/concurrent/ThreadFactory;

    .line 121
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/g;->q:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 152
    const-class v1, Lcom/facebook/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/g;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v2, :cond_0

    .line 194
    :goto_0
    monitor-exit v1

    return-void

    .line 156
    :cond_0
    :try_start_1
    const-string/jumbo v0, "applicationContext"

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->b(Landroid/content/Context;Z)V

    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/internal/v;->a(Landroid/content/Context;Z)V

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/facebook/g;->l:Landroid/content/Context;

    .line 166
    sget-object v0, Lcom/facebook/g;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/g;->c(Landroid/content/Context;)V

    .line 168
    sget-object v0, Lcom/facebook/g;->l:Landroid/content/Context;

    sget-object v2, Lcom/facebook/g;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/facebook/internal/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/facebook/internal/p;->b()V

    .line 172
    sget-object v0, Lcom/facebook/g;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/BoltsMeasurementEventListener;->a(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 174
    sget-object v0, Lcom/facebook/g;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/facebook/g;->k:Ljava/io/File;

    .line 176
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/g$2;

    invoke-direct {v2}, Lcom/facebook/g$2;-><init>()V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 191
    invoke-static {}, Lcom/facebook/g;->d()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 193
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/g;->q:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 652
    sput-object p0, Lcom/facebook/g;->d:Ljava/lang/String;

    .line 653
    return-void
.end method

.method public static declared-synchronized a()Z
    .locals 2

    .prologue
    .line 201
    const-class v1, Lcom/facebook/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/g;->q:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 732
    sget v0, Lcom/facebook/g;->m:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/facebook/g;->m:I

    add-int/lit8 v0, v0, 0x64

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/facebook/LoggingBehavior;)Z
    .locals 2

    .prologue
    .line 272
    sget-object v1, Lcom/facebook/g;->b:Ljava/util/HashSet;

    monitor-enter v1

    .line 273
    :try_start_0
    invoke-static {}, Lcom/facebook/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/g;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 281
    sget-boolean v0, Lcom/facebook/g;->i:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 522
    const-string/jumbo v0, "com.facebook.sdk.appEventPreferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 524
    const-string/jumbo v1, "limitEventUsage"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 563
    if-nez p0, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 575
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 579
    sget-object v0, Lcom/facebook/g;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 580
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.ApplicationId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 581
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 582
    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/facebook/g;->d:Ljava/lang/String;

    .line 588
    :cond_2
    :goto_1
    sget-object v0, Lcom/facebook/g;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 589
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.facebook.sdk.ApplicationName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/g;->e:Ljava/lang/String;

    .line 592
    :cond_3
    sget-object v0, Lcom/facebook/g;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 593
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.facebook.sdk.ClientToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/g;->f:Ljava/lang/String;

    goto :goto_0

    .line 583
    :cond_4
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 584
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/g;->d:Ljava/lang/String;

    goto :goto_1

    .line 571
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 298
    sget-boolean v0, Lcom/facebook/g;->j:Z

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 603
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 604
    if-nez p0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-object v0

    .line 607
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 608
    if-eqz v1, :cond_0

    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 615
    const/16 v3, 0x40

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 620
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 621
    if-eqz v2, :cond_0

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 627
    :try_start_1
    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 632
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 633
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 616
    :catch_0
    move-exception v1

    goto :goto_0

    .line 628
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 10

    .prologue
    .line 325
    sget-object v9, Lcom/facebook/g;->n:Ljava/lang/Object;

    monitor-enter v9

    .line 326
    :try_start_0
    sget-object v0, Lcom/facebook/g;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 327
    invoke-static {}, Lcom/facebook/g;->m()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 328
    if-nez v1, :cond_0

    .line 329
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/facebook/g;->o:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/facebook/g;->p:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 333
    :cond_0
    sput-object v1, Lcom/facebook/g;->c:Ljava/util/concurrent/Executor;

    .line 335
    :cond_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    sget-object v0, Lcom/facebook/g;->c:Ljava/util/concurrent/Executor;

    return-object v0

    .line 335
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/facebook/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Landroid/content/Context;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 383
    sget-object v0, Lcom/facebook/g;->l:Landroid/content/Context;

    return-object v0
.end method

.method public static g()J
    .locals 2

    .prologue
    .line 547
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 548
    sget-object v0, Lcom/facebook/g;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 644
    sget-object v0, Lcom/facebook/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 662
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 663
    sget-object v0, Lcom/facebook/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 681
    sget-object v0, Lcom/facebook/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Ljava/io/File;
    .locals 1

    .prologue
    .line 699
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 700
    sget-object v0, Lcom/facebook/g;->k:Ljava/io/File;

    return-object v0
.end method

.method public static l()I
    .locals 1

    .prologue
    .line 718
    invoke-static {}, Lcom/facebook/internal/v;->b()V

    .line 719
    sget v0, Lcom/facebook/g;->m:I

    return v0
.end method

.method private static m()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 389
    :try_start_0
    const-class v0, Landroid/os/AsyncTask;

    const-string/jumbo v2, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 396
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 401
    if-nez v0, :cond_0

    move-object v0, v1

    .line 409
    :goto_0
    return-object v0

    .line 390
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 391
    goto :goto_0

    .line 397
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 398
    goto :goto_0

    .line 405
    :cond_0
    instance-of v2, v0, Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 406
    goto :goto_0

    .line 409
    :cond_1
    check-cast v0, Ljava/util/concurrent/Executor;

    goto :goto_0
.end method
