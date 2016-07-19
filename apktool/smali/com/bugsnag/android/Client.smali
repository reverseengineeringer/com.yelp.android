.class public Lcom/bugsnag/android/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final appData:Lcom/bugsnag/android/AppData;

.field private final breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

.field private final config:Lcom/bugsnag/android/Configuration;

.field private final deviceData:Lcom/bugsnag/android/DeviceData;

.field private final errorStore:Lcom/bugsnag/android/ErrorStore;

.field private final user:Lcom/bugsnag/android/User;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/bugsnag/android/User;

    invoke-direct {v0}, Lcom/bugsnag/android/User;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    .line 62
    const/4 v0, 0x0

    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 68
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.bugsnag.android.API_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 69
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.bugsnag.android.BUILD_UUID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "You must provide a Bugsnag API key"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v1, Lcom/bugsnag/android/Configuration;

    invoke-direct {v1, p2}, Lcom/bugsnag/android/Configuration;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    .line 81
    if-eqz v0, :cond_2

    .line 82
    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object v0, v1, Lcom/bugsnag/android/Configuration;->buildUUID:Ljava/lang/String;

    .line 86
    :cond_2
    new-instance v0, Lcom/bugsnag/android/AppData;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, v2}, Lcom/bugsnag/android/AppData;-><init>(Landroid/content/Context;Lcom/bugsnag/android/Configuration;)V

    iput-object v0, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    .line 87
    new-instance v0, Lcom/bugsnag/android/DeviceData;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/DeviceData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    .line 88
    invoke-static {}, Lcom/bugsnag/android/AppState;->init()V

    .line 91
    new-instance v0, Lcom/bugsnag/android/Breadcrumbs;

    invoke-direct {v0}, Lcom/bugsnag/android/Breadcrumbs;-><init>()V

    iput-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Client;->setProjectPackages([Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {v0}, Lcom/bugsnag/android/DeviceData;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bugsnag/android/Client;->setUserId(Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/bugsnag/android/ErrorStore;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v2, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/bugsnag/android/ErrorStore;-><init>(Lcom/bugsnag/android/Configuration;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    .line 101
    if-eqz p3, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/bugsnag/android/Client;->enableExceptionHandler()V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {v0}, Lcom/bugsnag/android/ErrorStore;->flush()V

    .line 107
    return-void

    .line 70
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private notify(Lcom/bugsnag/android/Error;Z)V
    .locals 2

    .prologue
    .line 573
    invoke-virtual {p1}, Lcom/bugsnag/android/Error;->shouldIgnoreClass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {v1}, Lcom/bugsnag/android/AppData;->getReleaseStage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bugsnag/android/Configuration;->shouldNotifyForReleaseStage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/bugsnag/android/Client;->appData:Lcom/bugsnag/android/AppData;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setAppData(Lcom/bugsnag/android/AppData;)V

    .line 584
    iget-object v0, p0, Lcom/bugsnag/android/Client;->deviceData:Lcom/bugsnag/android/DeviceData;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setDeviceData(Lcom/bugsnag/android/DeviceData;)V

    .line 585
    new-instance v0, Lcom/bugsnag/android/AppState;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/AppState;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setAppState(Lcom/bugsnag/android/AppState;)V

    .line 586
    new-instance v0, Lcom/bugsnag/android/DeviceState;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/DeviceState;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setDeviceState(Lcom/bugsnag/android/DeviceState;)V

    .line 589
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setBreadcrumbs(Lcom/bugsnag/android/Breadcrumbs;)V

    .line 592
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {p1, v0}, Lcom/bugsnag/android/Error;->setUser(Lcom/bugsnag/android/User;)V

    .line 595
    invoke-direct {p0, p1}, Lcom/bugsnag/android/Client;->runBeforeNotifyTasks(Lcom/bugsnag/android/Error;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 596
    const-string/jumbo v0, "Skipping notification - beforeNotify task returned false"

    invoke-static {v0}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 601
    :cond_2
    new-instance v0, Lcom/bugsnag/android/Notification;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1}, Lcom/bugsnag/android/Notification;-><init>(Lcom/bugsnag/android/Configuration;)V

    .line 602
    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Notification;->addError(Lcom/bugsnag/android/Error;)V

    .line 604
    if-eqz p2, :cond_3

    .line 605
    invoke-virtual {p0, v0, p1}, Lcom/bugsnag/android/Client;->deliver(Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V

    goto :goto_0

    .line 608
    :cond_3
    new-instance v1, Lcom/bugsnag/android/Client$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/bugsnag/android/Client$1;-><init>(Lcom/bugsnag/android/Client;Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V

    invoke-static {v1}, Lcom/bugsnag/android/Async;->run(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private runBeforeNotifyTasks(Lcom/bugsnag/android/Error;)Z
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->beforeNotifyTasks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bugsnag/android/BeforeNotify;

    .line 636
    :try_start_0
    invoke-interface {v0, p1}, Lcom/bugsnag/android/BeforeNotify;->run(Lcom/bugsnag/android/Error;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 637
    const/4 v0, 0x0

    .line 645
    :goto_1
    return v0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    const-string/jumbo v2, "BeforeNotify threw an Exception"

    invoke-static {v2, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 645
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    return-void
.end method

.method public beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Configuration;->beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V

    .line 309
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v0}, Lcom/bugsnag/android/Breadcrumbs;->clear()V

    .line 554
    return-void
.end method

.method public clearTab(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/MetaData;->clearTab(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method deliver(Lcom/bugsnag/android/Notification;Lcom/bugsnag/android/Error;)V
    .locals 4

    .prologue
    .line 619
    :try_start_0
    invoke-virtual {p1}, Lcom/bugsnag/android/Notification;->deliver()I

    move-result v0

    .line 620
    const-string/jumbo v1, "Sent %d new error(s) to Bugsnag"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/bugsnag/android/HttpClient$NetworkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/bugsnag/android/HttpClient$BadResponseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 631
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    const-string/jumbo v0, "Could not send error(s) to Bugsnag, saving to disk to send later"

    invoke-static {v0}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/bugsnag/android/Client;->errorStore:Lcom/bugsnag/android/ErrorStore;

    invoke-virtual {v0, p2}, Lcom/bugsnag/android/ErrorStore;->write(Lcom/bugsnag/android/Error;)V

    goto :goto_0

    .line 626
    :catch_1
    move-exception v0

    .line 627
    const-string/jumbo v0, "Bad response when sending data to Bugsnag"

    invoke-static {v0}, Lcom/bugsnag/android/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :catch_2
    move-exception v0

    .line 629
    const-string/jumbo v1, "Problem sending error to Bugsnag"

    invoke-static {v1, v0}, Lcom/bugsnag/android/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public disableExceptionHandler()V
    .locals 0

    .prologue
    .line 568
    invoke-static {p0}, Lcom/bugsnag/android/ExceptionHandler;->disable(Lcom/bugsnag/android/Client;)V

    .line 569
    return-void
.end method

.method public enableExceptionHandler()V
    .locals 0

    .prologue
    .line 561
    invoke-static {p0}, Lcom/bugsnag/android/ExceptionHandler;->enable(Lcom/bugsnag/android/Client;)V

    .line 562
    return-void
.end method

.method public getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iget-object v0, v0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    return-object v0
.end method

.method public leaveBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Breadcrumbs;->add(Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method public notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .prologue
    .line 458
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 459
    invoke-virtual {v0, p5}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 460
    invoke-virtual {v0, p6}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 461
    invoke-virtual {v0, p3}, Lcom/bugsnag/android/Error;->setContext(Ljava/lang/String;)V

    .line 462
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 463
    return-void
.end method

.method public notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .prologue
    .line 423
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 424
    invoke-virtual {v0, p4}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 425
    invoke-virtual {v0, p5}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 426
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 427
    return-void
.end method

.method public notify(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 317
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 318
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 319
    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .prologue
    .line 365
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 366
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 367
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 368
    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V
    .locals 2

    .prologue
    .line 339
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 340
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 341
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 342
    return-void
.end method

.method public notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 392
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 393
    invoke-virtual {v0, p3}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 394
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 395
    return-void
.end method

.method public notifyBlocking(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .prologue
    .line 477
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1, p2, p4}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 478
    invoke-virtual {v0, p5}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 479
    invoke-virtual {v0, p6}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 480
    invoke-virtual {v0, p3}, Lcom/bugsnag/android/Error;->setContext(Ljava/lang/String;)V

    .line 481
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 482
    return-void
.end method

.method public notifyBlocking(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .prologue
    .line 440
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 441
    invoke-virtual {v0, p4}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 442
    invoke-virtual {v0, p5}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 443
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 444
    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 328
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 329
    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .prologue
    .line 377
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 378
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 379
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 380
    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V
    .locals 2

    .prologue
    .line 352
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 353
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 354
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 355
    return-void
.end method

.method public notifyBlocking(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 2

    .prologue
    .line 406
    new-instance v0, Lcom/bugsnag/android/Error;

    iget-object v1, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    invoke-direct {v0, v1, p1}, Lcom/bugsnag/android/Error;-><init>(Lcom/bugsnag/android/Configuration;Ljava/lang/Throwable;)V

    .line 407
    invoke-virtual {v0, p2}, Lcom/bugsnag/android/Error;->setSeverity(Lcom/bugsnag/android/Severity;)V

    .line 408
    invoke-virtual {v0, p3}, Lcom/bugsnag/android/Error;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 409
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/bugsnag/android/Client;->notify(Lcom/bugsnag/android/Error;Z)V

    .line 410
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->appVersion:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setBuildUUID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->buildUUID:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setContext(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->context:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setEndpoint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->endpoint:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public varargs setFilters([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->filters:[Ljava/lang/String;

    .line 170
    return-void
.end method

.method public varargs setIgnoreClasses([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->ignoreClasses:[Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setMaxBreadcrumbs(I)V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/bugsnag/android/Client;->breadcrumbs:Lcom/bugsnag/android/Breadcrumbs;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/Breadcrumbs;->setSize(I)V

    .line 547
    return-void
.end method

.method public setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->metaData:Lcom/bugsnag/android/MetaData;

    .line 526
    return-void
.end method

.method public varargs setNotifyReleaseStages([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->notifyReleaseStages:[Ljava/lang/String;

    .line 198
    return-void
.end method

.method public varargs setProjectPackages([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->projectPackages:[Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setReleaseStage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-object p1, v0, Lcom/bugsnag/android/Configuration;->releaseStage:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setSendThreads(Z)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/bugsnag/android/Client;->config:Lcom/bugsnag/android/Configuration;

    iput-boolean p1, v0, Lcom/bugsnag/android/Configuration;->sendThreads:Z

    .line 236
    return-void
.end method

.method public setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p2}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p3}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setUserEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setEmail(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setId(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/bugsnag/android/Client;->user:Lcom/bugsnag/android/User;

    invoke-virtual {v0, p1}, Lcom/bugsnag/android/User;->setName(Ljava/lang/String;)V

    .line 285
    return-void
.end method
