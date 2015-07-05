.class public Lcom/adjust/sdk/a;
.super Landroid/os/HandlerThread;
.source "ActivityHandler.java"


# static fields
.field private static a:J

.field private static b:J

.field private static c:J

.field private static i:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private d:Lcom/adjust/sdk/d;

.field private e:Lcom/adjust/sdk/g;

.field private f:Lcom/adjust/sdk/j;

.field private g:Lcom/adjust/sdk/ActivityState;

.field private h:Lcom/adjust/sdk/Logger;

.field private j:Landroid/content/Context;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "Adjust"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 80
    invoke-direct {p0, p1}, Lcom/adjust/sdk/a;->a(Landroid/app/Activity;)V

    .line 82
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 83
    const v1, 0x11bb6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 84
    iget-object v1, p0, Lcom/adjust/sdk/a;->d:Lcom/adjust/sdk/d;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    .line 85
    return-void
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 489
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-wide v0, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v0, p1, v0

    .line 494
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 495
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Time travel!"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput-wide p1, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    goto :goto_0

    .line 501
    :cond_2
    sget-wide v2, Lcom/adjust/sdk/a;->b:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 505
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v4, v0

    iput-wide v4, v2, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 506
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-wide v4, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    .line 507
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput-wide p1, v0, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 104
    invoke-virtual {p0, v2}, Lcom/adjust/sdk/a;->setDaemon(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/adjust/sdk/a;->start()V

    .line 107
    invoke-static {}, Lcom/adjust/sdk/f;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/a;->a:J

    .line 108
    invoke-static {}, Lcom/adjust/sdk/f;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/a;->b:J

    .line 109
    invoke-static {}, Lcom/adjust/sdk/f;->d()J

    move-result-wide v0

    sput-wide v0, Lcom/adjust/sdk/a;->c:J

    .line 110
    new-instance v0, Lcom/adjust/sdk/d;

    invoke-virtual {p0}, Lcom/adjust/sdk/a;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/d;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/a;)V

    iput-object v0, p0, Lcom/adjust/sdk/a;->d:Lcom/adjust/sdk/d;

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    .line 112
    const-string/jumbo v0, "android3.3.5"

    iput-object v0, p0, Lcom/adjust/sdk/a;->v:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/adjust/sdk/a;->o:Z

    .line 115
    invoke-static {}, Lcom/adjust/sdk/f;->a()Lcom/adjust/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    .line 116
    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 430
    if-nez p1, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 435
    if-eqz v0, :cond_0

    .line 439
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 441
    const-string/jumbo v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 442
    array-length v4, v3

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_2

    .line 462
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    new-instance v0, Lcom/adjust/sdk/k;

    iget-object v3, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/adjust/sdk/k;-><init>(Landroid/content/Context;)V

    .line 467
    invoke-virtual {v0, v2}, Lcom/adjust/sdk/k;->b(Ljava/util/Map;)V

    .line 468
    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->e(Lcom/adjust/sdk/k;)V

    .line 469
    invoke-virtual {v0}, Lcom/adjust/sdk/k;->f()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 470
    iget-object v3, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v3, v0}, Lcom/adjust/sdk/g;->a(Lcom/adjust/sdk/ActivityPackage;)V

    .line 471
    iget-object v0, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->a()V

    .line 473
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v3, "Reattribution %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_2
    aget-object v5, v3, v0

    .line 443
    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 444
    array-length v6, v5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 442
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 447
    :cond_4
    aget-object v6, v5, v1

    .line 448
    const-string/jumbo v7, "adjust_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 451
    aget-object v5, v5, v8

    .line 452
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 455
    const-string/jumbo v7, "adjust_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 456
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 459
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method static synthetic a(Lcom/adjust/sdk/a;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/adjust/sdk/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/adjust/sdk/a;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/adjust/sdk/a;->a(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/adjust/sdk/a;Lcom/adjust/sdk/k;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/k;)V

    return-void
.end method

.method static synthetic a(Lcom/adjust/sdk/a;Z)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/adjust/sdk/a;->a(Z)V

    return-void
.end method

.method private a(Lcom/adjust/sdk/k;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 371
    invoke-direct {p0, p1}, Lcom/adjust/sdk/a;->c(Lcom/adjust/sdk/k;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 380
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 381
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 382
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/a;->a(J)V

    .line 384
    invoke-direct {p0, p1}, Lcom/adjust/sdk/a;->e(Lcom/adjust/sdk/k;)V

    .line 385
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityState;->injectEventAttributes(Lcom/adjust/sdk/k;)V

    .line 386
    invoke-virtual {p1}, Lcom/adjust/sdk/k;->d()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/g;->a(Lcom/adjust/sdk/ActivityPackage;)V

    .line 389
    iget-boolean v1, p0, Lcom/adjust/sdk/a;->m:Z

    if-eqz v1, :cond_2

    .line 390
    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Buffered event %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getSuffix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->d(Ljava/lang/String;)V

    .line 395
    :goto_1
    invoke-direct {p0}, Lcom/adjust/sdk/a;->g()V

    .line 396
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Event %d"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget v4, v4, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->a()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 661
    iput-object p1, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing environment"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->g(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    sget-object v1, Lcom/adjust/sdk/Logger$LogLevel;->ASSERT:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->a(Lcom/adjust/sdk/Logger$LogLevel;)V

    .line 665
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    .line 678
    :goto_0
    return-void

    .line 666
    :cond_0
    const-string/jumbo v0, "sandbox"

    iget-object v1, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    .line 668
    const-string/jumbo v1, "SANDBOX: Adjust is running in Sandbox mode. Use this setting for testing. Don\'t forget to set the environment to `production` before publishing!"

    .line 667
    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_1
    const-string/jumbo v0, "production"

    iget-object v1, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    .line 671
    const-string/jumbo v1, "PRODUCTION: Adjust is running in Production mode. Use this setting only for the build that you want to publish. Set the environment to `sandbox` if you want to test your app!"

    .line 670
    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->g(Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    sget-object v1, Lcom/adjust/sdk/Logger$LogLevel;->ASSERT:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->a(Lcom/adjust/sdk/Logger$LogLevel;)V

    goto :goto_0

    .line 674
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Malformed environment \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->g(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    sget-object v1, Lcom/adjust/sdk/Logger$LogLevel;->ASSERT:Lcom/adjust/sdk/Logger$LogLevel;

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->a(Lcom/adjust/sdk/Logger$LogLevel;)V

    .line 676
    const-string/jumbo v0, "malformed"

    iput-object v0, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 260
    if-eqz p1, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/adjust/sdk/a;->l()V

    .line 267
    :goto_0
    invoke-direct {p0}, Lcom/adjust/sdk/a;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :goto_1
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->a(Ljava/lang/String;)V

    .line 264
    iget-boolean v0, p0, Lcom/adjust/sdk/a;->m:Z

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->b(Z)V

    goto :goto_0

    .line 271
    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adjust/sdk/a;->q:Ljava/lang/String;

    .line 272
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/adjust/sdk/a;->r:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->s:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->t:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->u:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/adjust/sdk/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-nez v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Unable to get Google Play Services Advertising ID at start time"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->d(Ljava/lang/String;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/adjust/sdk/a;->n:Z

    invoke-static {p0, v0, v1}, Lcom/adjust/sdk/f;->a(Lcom/adjust/sdk/a;Landroid/content/Context;Z)Lcom/adjust/sdk/g;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    .line 284
    invoke-direct {p0}, Lcom/adjust/sdk/a;->f()V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 633
    const/4 v0, 0x1

    .line 635
    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-static {p1, v1}, Lcom/adjust/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing permission: INTERNET"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 637
    const/4 v0, 0x0

    .line 639
    :cond_0
    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v1}, Lcom/adjust/sdk/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Missing permission: ACCESS_WIFI_STATE"

    invoke-interface {v1, v2}, Lcom/adjust/sdk/Logger;->e(Ljava/lang/String;)V

    .line 643
    :cond_1
    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 726
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/adjust/sdk/ActivityState;)Z
    .locals 2

    .prologue
    .line 730
    if-nez p1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing activity state."

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 732
    const/4 v0, 0x0

    .line 734
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/adjust/sdk/a;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/adjust/sdk/a;->e()V

    return-void
.end method

.method static synthetic b(Lcom/adjust/sdk/a;Lcom/adjust/sdk/k;)V
    .locals 0

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/adjust/sdk/a;->b(Lcom/adjust/sdk/k;)V

    return-void
.end method

.method private b(Lcom/adjust/sdk/k;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 400
    invoke-direct {p0, p1}, Lcom/adjust/sdk/a;->d(Lcom/adjust/sdk/k;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 410
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 411
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/adjust/sdk/ActivityState;->eventCount:I

    .line 412
    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/a;->a(J)V

    .line 414
    invoke-direct {p0, p1}, Lcom/adjust/sdk/a;->e(Lcom/adjust/sdk/k;)V

    .line 415
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v0, p1}, Lcom/adjust/sdk/ActivityState;->injectEventAttributes(Lcom/adjust/sdk/k;)V

    .line 416
    invoke-virtual {p1}, Lcom/adjust/sdk/k;->e()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 417
    iget-object v1, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/g;->a(Lcom/adjust/sdk/ActivityPackage;)V

    .line 419
    iget-boolean v1, p0, Lcom/adjust/sdk/a;->m:Z

    if-eqz v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Buffered revenue %s"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityPackage;->getSuffix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->d(Ljava/lang/String;)V

    .line 425
    :goto_1
    invoke-direct {p0}, Lcom/adjust/sdk/a;->g()V

    .line 426
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Event %d (revenue)"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget v4, v4, Lcom/adjust/sdk/ActivityState;->eventCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->a()V

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 688
    iput-object p1, p0, Lcom/adjust/sdk/a;->l:Ljava/lang/String;

    .line 689
    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Default tracker: \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adjust/sdk/a;->l:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->d(Ljava/lang/String;)V

    .line 692
    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/adjust/sdk/a;->m:Z

    .line 682
    iget-boolean v0, p0, Lcom/adjust/sdk/a;->m:Z

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Event buffering is enabled"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->d(Ljava/lang/String;)V

    .line 685
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 717
    if-nez p1, :cond_0

    .line 718
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing context"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x0

    .line 721
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/adjust/sdk/a;)Lcom/adjust/sdk/j;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/j;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 695
    iput-boolean p1, p0, Lcom/adjust/sdk/a;->n:Z

    .line 696
    iget-boolean v0, p0, Lcom/adjust/sdk/a;->n:Z

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Offline activities will get dropped"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->d(Ljava/lang/String;)V

    .line 699
    :cond_0
    return-void
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 288
    goto :goto_0
.end method

.method private c(Lcom/adjust/sdk/k;)Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p1}, Lcom/adjust/sdk/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 477
    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 738
    if-nez p1, :cond_0

    .line 739
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Missing App Token."

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 740
    const/4 v0, 0x0

    .line 742
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 295
    iget-object v0, p0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->e()V

    .line 305
    invoke-direct {p0}, Lcom/adjust/sdk/a;->i()V

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 310
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    if-nez v2, :cond_3

    .line 311
    new-instance v2, Lcom/adjust/sdk/ActivityState;

    invoke-direct {v2}, Lcom/adjust/sdk/ActivityState;-><init>()V

    iput-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    .line 312
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput v9, v2, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 313
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 315
    invoke-direct {p0}, Lcom/adjust/sdk/a;->h()V

    .line 316
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 317
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-boolean v1, p0, Lcom/adjust/sdk/a;->o:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    .line 318
    invoke-direct {p0}, Lcom/adjust/sdk/a;->g()V

    .line 319
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "First session"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_3
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-wide v2, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    sub-long v2, v0, v2

    .line 325
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 326
    iget-object v2, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v3, "Time travel!"

    invoke-interface {v2, v3}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 327
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 328
    invoke-direct {p0}, Lcom/adjust/sdk/a;->g()V

    goto :goto_0

    .line 333
    :cond_4
    sget-wide v4, Lcom/adjust/sdk/a;->b:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    .line 334
    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    .line 335
    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v4, Lcom/adjust/sdk/ActivityState;->createdAt:J

    .line 336
    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->lastInterval:J

    .line 338
    invoke-direct {p0}, Lcom/adjust/sdk/a;->h()V

    .line 339
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0, v1}, Lcom/adjust/sdk/ActivityState;->resetSessionAttributes(J)V

    .line 340
    invoke-direct {p0}, Lcom/adjust/sdk/a;->g()V

    .line 341
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 342
    const-string/jumbo v2, "Session %d"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget v4, v4, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    .line 341
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :cond_5
    sget-wide v4, Lcom/adjust/sdk/a;->c:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_6

    .line 348
    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    .line 349
    iget-object v4, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 350
    const-string/jumbo v6, "Started subsession %d of session %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 351
    iget-object v8, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget v8, v8, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    .line 352
    iget-object v8, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget v8, v8, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    .line 349
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/adjust/sdk/Logger;->d(Ljava/lang/String;)V

    .line 354
    :cond_6
    iget-object v4, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-wide v6, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    add-long/2addr v2, v6

    iput-wide v2, v4, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    .line 355
    iget-object v2, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iput-wide v0, v2, Lcom/adjust/sdk/ActivityState;->lastActivity:J

    .line 356
    invoke-direct {p0}, Lcom/adjust/sdk/a;->g()V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/adjust/sdk/a;)V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/adjust/sdk/a;->k()V

    return-void
.end method

.method private d(Lcom/adjust/sdk/k;)Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/adjust/sdk/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 483
    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 746
    const/16 v2, 0xc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 747
    iget-object v2, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v3, "Malformed App Token \'%s\'"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 750
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->d()V

    .line 365
    invoke-direct {p0}, Lcom/adjust/sdk/a;->j()V

    .line 366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/a;->a(J)V

    .line 367
    invoke-direct {p0}, Lcom/adjust/sdk/a;->g()V

    goto :goto_0
.end method

.method private e(Lcom/adjust/sdk/k;)V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->a(Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/adjust/sdk/a;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->c(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/adjust/sdk/a;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->b(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/adjust/sdk/a;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->d(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/adjust/sdk/a;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->f(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/adjust/sdk/a;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->g(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/adjust/sdk/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->h(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/adjust/sdk/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->i(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/adjust/sdk/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->j(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    const-string/jumbo v1, "AdjustIoActivityState"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 513
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 514
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 517
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityState;

    iput-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    .line 518
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Read activity state: %s uuid:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 519
    iget-object v5, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-object v5, v5, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 518
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 541
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to find activity state class"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 530
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 540
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    goto :goto_0

    .line 523
    :catch_1
    move-exception v0

    .line 530
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 533
    :catch_2
    move-exception v0

    .line 534
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Activity state file not found"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 525
    :catch_3
    move-exception v0

    .line 526
    :try_start_6
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to read activity states object"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 530
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 535
    :catch_4
    move-exception v0

    .line 536
    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to open activity state file for reading (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 527
    :catch_5
    move-exception v0

    .line 528
    :try_start_8
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to cast activity state object"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 530
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_1

    .line 529
    :catchall_0
    move-exception v0

    .line 530
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 531
    throw v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
.end method

.method private f(Lcom/adjust/sdk/k;)V
    .locals 5

    .prologue
    .line 592
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 593
    const-string/jumbo v1, "AdjustInstallReferrer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/adjust/sdk/k;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to inject referrer (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    const-string/jumbo v1, "AdjustIoActivityState"

    .line 546
    const/4 v2, 0x0

    .line 545
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 547
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 548
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 551
    :try_start_1
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 552
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Wrote activity state: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/NotSerializableException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 556
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 562
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to serialize activity state"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 556
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 559
    :catch_1
    move-exception v0

    .line 560
    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to open activity state for writing (%s)"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    .line 556
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 557
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 569
    new-instance v0, Lcom/adjust/sdk/k;

    iget-object v1, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/k;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->e(Lcom/adjust/sdk/k;)V

    .line 571
    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->f(Lcom/adjust/sdk/k;)V

    .line 572
    iget-object v1, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityState;->injectSessionAttributes(Lcom/adjust/sdk/k;)V

    .line 573
    invoke-virtual {v0}, Lcom/adjust/sdk/k;->c()Lcom/adjust/sdk/ActivityPackage;

    move-result-object v0

    .line 574
    iget-object v1, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/g;->a(Lcom/adjust/sdk/ActivityPackage;)V

    .line 575
    iget-object v0, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->a()V

    .line 576
    return-void
.end method

.method private i()V
    .locals 7

    .prologue
    .line 600
    sget-object v0, Lcom/adjust/sdk/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/adjust/sdk/a;->j()V

    .line 603
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adjust/sdk/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    .line 604
    sget-object v0, Lcom/adjust/sdk/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adjust/sdk/c;

    invoke-direct {v1, p0}, Lcom/adjust/sdk/c;-><init>(Lcom/adjust/sdk/a;)V

    .line 609
    const-wide/16 v2, 0x3e8

    sget-wide v4, Lcom/adjust/sdk/a;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 604
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 610
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 614
    :try_start_0
    sget-object v0, Lcom/adjust/sdk/a;->i:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v0

    .line 616
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "No timer found"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/adjust/sdk/a;->g:Lcom/adjust/sdk/ActivityState;

    iget-object v0, v0, Lcom/adjust/sdk/ActivityState;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->e:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->a()V

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/a;->a(J)V

    .line 629
    invoke-direct {p0}, Lcom/adjust/sdk/a;->g()V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/adjust/sdk/a;->m()Landroid/os/Bundle;

    move-result-object v0

    .line 648
    if-nez v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 652
    :cond_0
    const-string/jumbo v1, "AdjustAppToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adjust/sdk/a;->p:Ljava/lang/String;

    .line 653
    const-string/jumbo v1, "AdjustEnvironment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/a;->a(Ljava/lang/String;)V

    .line 654
    const-string/jumbo v1, "AdjustDefaultTracker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/a;->b(Ljava/lang/String;)V

    .line 655
    const-string/jumbo v1, "AdjustEventBuffering"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/adjust/sdk/a;->b(Z)V

    .line 656
    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "AdjustLogLevel"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/adjust/sdk/Logger;->a(Ljava/lang/String;)V

    .line 657
    const-string/jumbo v1, "AdjustDropOfflineActivities"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/adjust/sdk/a;->c(Z)V

    goto :goto_0
.end method

.method private m()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 706
    const/16 v2, 0x80

    .line 705
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 707
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 713
    :goto_0
    return-object v0

    .line 708
    :catch_0
    move-exception v0

    .line 709
    iget-object v0, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "ApplicationInfo not found"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 713
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 710
    :catch_1
    move-exception v0

    .line 711
    iget-object v1, p0, Lcom/adjust/sdk/a;->h:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to get ApplicationBundle (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 127
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 128
    const v1, 0x11bc0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 129
    iget-object v1, p0, Lcom/adjust/sdk/a;->d:Lcom/adjust/sdk/d;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    .line 130
    return-void
.end method

.method public a(Lcom/adjust/sdk/p;)V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adjust/sdk/a;->f:Lcom/adjust/sdk/j;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 166
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    new-instance v1, Lcom/adjust/sdk/b;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/b;-><init>(Lcom/adjust/sdk/a;Lcom/adjust/sdk/p;)V

    .line 176
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lcom/adjust/sdk/k;

    iget-object v1, p0, Lcom/adjust/sdk/a;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/adjust/sdk/k;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {v0, p1}, Lcom/adjust/sdk/k;->l(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, p2}, Lcom/adjust/sdk/k;->a(Ljava/util/Map;)V

    .line 143
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 144
    const v2, 0x11bd4

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 145
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/adjust/sdk/a;->d:Lcom/adjust/sdk/d;

    invoke-virtual {v0, v1}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    .line 147
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 134
    const v1, 0x11bca

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 135
    iget-object v1, p0, Lcom/adjust/sdk/a;->d:Lcom/adjust/sdk/d;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/d;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method
