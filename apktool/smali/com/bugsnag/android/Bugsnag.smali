.class public final Lcom/bugsnag/android/Bugsnag;
.super Ljava/lang/Object;
.source "Bugsnag.java"


# static fields
.field private static client:Lcom/bugsnag/android/Client;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method public static beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->beforeNotify(Lcom/bugsnag/android/BeforeNotify;)V

    .line 248
    return-void
.end method

.method public static clearBreadcrumbs()V
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->clearBreadcrumbs()V

    .line 391
    return-void
.end method

.method public static clearTab(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->clearTab(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public static enableExceptionHandler()V
    .locals 1

    .prologue
    .line 398
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->enableExceptionHandler()V

    .line 399
    return-void
.end method

.method public static getClient()Lcom/bugsnag/android/Client;
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You must call Bugsnag.init before any other Bugsnag methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    sget-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    return-object v0
.end method

.method public static getMetaData()Lcom/bugsnag/android/MetaData;
    .locals 1

    .prologue
    .line 353
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->getMetaData()Lcom/bugsnag/android/MetaData;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/bugsnag/android/Client;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/bugsnag/android/Client;

    invoke-direct {v0, p0}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    .line 25
    sget-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Lcom/bugsnag/android/Client;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/bugsnag/android/Client;

    invoke-direct {v0, p0, p1}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    .line 36
    sget-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)Lcom/bugsnag/android/Client;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/bugsnag/android/Client;

    invoke-direct {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    .line 48
    sget-object v0, Lcom/bugsnag/android/Bugsnag;->client:Lcom/bugsnag/android/Client;

    return-object v0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public static notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 7

    .prologue
    .line 318
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V

    .line 319
    return-void
.end method

.method public static notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 6

    .prologue
    .line 303
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V

    .line 304
    return-void
.end method

.method public static notify(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 256
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;)V

    .line 257
    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/MetaData;)V

    .line 278
    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V

    .line 268
    return-void
.end method

.method public static notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .prologue
    .line 289
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V

    .line 290
    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setAppVersion(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static setBuildUUID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setBuildUUID(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static setContext(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setContext(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setEndpoint(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static varargs setFilters([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setFilters([Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public static varargs setIgnoreClasses([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setIgnoreClasses([Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static setMaxBreadcrumbs(I)V
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setMaxBreadcrumbs(I)V

    .line 384
    return-void
.end method

.method public static setMetaData(Lcom/bugsnag/android/MetaData;)V
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setMetaData(Lcom/bugsnag/android/MetaData;)V

    .line 363
    return-void
.end method

.method public static varargs setNotifyReleaseStages([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setNotifyReleaseStages([Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static varargs setProjectPackages([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setProjectPackages([Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static setReleaseStage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setReleaseStage(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static setSendThreads(Z)V
    .locals 1

    .prologue
    .line 176
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setSendThreads(Z)V

    .line 177
    return-void
.end method

.method public static setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/bugsnag/android/Client;->setUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static setUserEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserEmail(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserId(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bugsnag/android/Client;->setUserName(Ljava/lang/String;)V

    .line 224
    return-void
.end method


# virtual methods
.method public disableExceptionHandler()V
    .locals 1

    .prologue
    .line 405
    invoke-static {}, Lcom/bugsnag/android/Bugsnag;->getClient()Lcom/bugsnag/android/Client;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bugsnag/android/Client;->disableExceptionHandler()V

    .line 406
    return-void
.end method
