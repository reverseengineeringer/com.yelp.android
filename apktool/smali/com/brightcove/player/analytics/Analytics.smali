.class public Lcom/brightcove/player/analytics/Analytics;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "Analytics.java"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "didSetAnalyticsBaseParams",
        "error"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {
        "addAnalyticsBaseParams",
        "completed",
        "didSeekTo",
        "didSetVideo",
        "progress",
        "readyToPlay",
        "setAnalyticsBaseParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/analytics/Analytics$Fields;,
        Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;
    }
.end annotation


# static fields
.field private static final baseURL:Ljava/lang/String; = "http://metrics.brightcove.com/tracker"

.field private static final defaultName:Ljava/lang/String; = "BCPlayer for Android"

.field private static final deviceOS:Ljava/lang/String; = "android"

.field private static final domain:Ljava/lang/String; = "videocloud"

.field private static final engagementPeriod:I = 0x2710


# instance fields
.field private final baseParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public destination:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private endTime:I

.field private hasStarted:Z

.field public playerName:Ljava/lang/String;

.field private startTime:I


# direct methods
.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/brightcove/player/analytics/Analytics;

    invoke-direct {p0, p1, p2, v0}, Lcom/brightcove/player/analytics/Analytics;-><init>(Lcom/brightcove/player/event/EventEmitter;Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    return-void
.end method

.method protected constructor <init>(Lcom/brightcove/player/event/EventEmitter;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/brightcove/player/event/Component;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, p1, p3}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;

    .line 122
    iput v1, p0, Lcom/brightcove/player/analytics/Analytics;->endTime:I

    iput v1, p0, Lcom/brightcove/player/analytics/Analytics;->startTime:I

    .line 123
    iput-boolean v1, p0, Lcom/brightcove/player/analytics/Analytics;->hasStarted:Z

    .line 124
    const-string/jumbo v0, "BCPlayer for Android"

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->playerName:Ljava/lang/String;

    .line 126
    invoke-direct {p0, p2}, Lcom/brightcove/player/analytics/Analytics;->setAppName(Landroid/content/Context;)V

    .line 127
    invoke-direct {p0, p2}, Lcom/brightcove/player/analytics/Analytics;->setDestination(Landroid/content/Context;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/brightcove/player/analytics/Analytics;->initializeEvents(Lcom/brightcove/player/event/EventEmitter;)V

    .line 130
    invoke-direct {p0, p2}, Lcom/brightcove/player/analytics/Analytics;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->deviceType:Ljava/lang/String;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/analytics/Analytics;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brightcove/player/analytics/Analytics;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/brightcove/player/analytics/Analytics;->emitDidSetEvent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/analytics/Analytics;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/brightcove/player/analytics/Analytics;->endTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/brightcove/player/analytics/Analytics;I)I
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/brightcove/player/analytics/Analytics;->endTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/brightcove/player/analytics/Analytics;)I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/brightcove/player/analytics/Analytics;->startTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/brightcove/player/analytics/Analytics;I)I
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/brightcove/player/analytics/Analytics;->startTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;II)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/brightcove/player/analytics/Analytics;->sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/brightcove/player/analytics/Analytics;Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/brightcove/player/analytics/Analytics;->sendVideoAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lcom/brightcove/player/analytics/Analytics;)Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/brightcove/player/analytics/Analytics;->hasStarted:Z

    return v0
.end method

.method static synthetic access$602(Lcom/brightcove/player/analytics/Analytics;Z)Z
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/brightcove/player/analytics/Analytics;->hasStarted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/brightcove/player/analytics/Analytics;)Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method private emitDidSetEvent()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 363
    const-string/jumbo v1, "baseParams"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/brightcove/player/analytics/Analytics;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    const-string/jumbo v2, "didSetAnalyticsBaseParams"

    invoke-interface {v1, v2, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 365
    return-void
.end method

.method private getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    const-string/jumbo v1, "tablet"

    .line 370
    if-eqz p1, :cond_0

    .line 372
    :try_start_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 375
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string/jumbo v0, "mobile"
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 387
    :goto_0
    return-object v0

    .line 378
    :catch_0
    move-exception v0

    .line 380
    const-string/jumbo v0, "tablet"

    goto :goto_0

    .line 381
    :catch_1
    move-exception v0

    .line 383
    const-string/jumbo v0, "tablet"

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private initializeEvents(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "addAnalyticsBaseParams"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$1;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$1;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 178
    const-string/jumbo v0, "setAnalyticsBaseParams"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$2;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$2;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 193
    const-string/jumbo v0, "didSetVideo"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$3;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$3;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 208
    const-string/jumbo v0, "didSeekTo"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$4;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$4;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 228
    const-string/jumbo v0, "progress"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$5;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$5;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 257
    const-string/jumbo v0, "completed"

    new-instance v1, Lcom/brightcove/player/analytics/Analytics$6;

    invoke-direct {v1, p0}, Lcom/brightcove/player/analytics/Analytics$6;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 270
    return-void
.end method

.method private sendVideoAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/Event;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    if-nez p3, :cond_0

    .line 289
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 292
    :cond_0
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 294
    if-eqz v0, :cond_2

    .line 295
    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->getId()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    const-string/jumbo v2, "video"

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_1
    const-string/jumbo v1, "pubId"

    invoke-virtual {v0, v1}, Lcom/brightcove/player/model/Video;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 303
    const-string/jumbo v1, "account"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/brightcove/player/analytics/Analytics;->sendAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    .line 308
    return-void
.end method

.method private sendVideoEngagementRequest(Lcom/brightcove/player/event/Event;II)V
    .locals 7

    .prologue
    .line 273
    div-int/lit16 v0, p2, 0x3e8

    .line 274
    div-int/lit16 v1, p3, 0x3e8

    add-int/lit8 v1, v1, -0x1

    .line 276
    if-ge v1, v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 281
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 282
    const-string/jumbo v3, "range"

    const-string/jumbo v4, "%d..%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v0, "video_engagement"

    invoke-direct {p0, p1, v0, v2}, Lcom/brightcove/player/analytics/Analytics;->sendVideoAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private setAppName(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->playerName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->playerName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 154
    const-string/jumbo v0, "BCPlayer for Android"

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->playerName:Ljava/lang/String;

    .line 156
    :cond_1
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->playerName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDestination(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->destination:Ljava/lang/String;

    .line 160
    return-void
.end method


# virtual methods
.method protected sendAnalyticsRequest(Lcom/brightcove/player/event/Event;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/Event;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 315
    iget-object v0, p0, Lcom/brightcove/player/analytics/Analytics;->baseParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 316
    if-eqz p3, :cond_0

    .line 317
    invoke-interface {v1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 320
    :cond_0
    const-string/jumbo v0, "account"

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    .line 325
    :cond_1
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string/jumbo v2, "video"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    .line 326
    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->getDuration()I

    move-result v2

    .line 328
    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Lcom/brightcove/player/model/Video;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    if-lez v2, :cond_2

    .line 331
    const-string/jumbo v3, "video_duration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 335
    const-string/jumbo v2, "video_name"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_3
    const-string/jumbo v0, "event"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v0, "domain"

    const-string/jumbo v2, "videocloud"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v0, "device_os"

    const-string/jumbo v2, "android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v0, "device_type"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->deviceType:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string/jumbo v0, "device_os_version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string/jumbo v0, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string/jumbo v0, "embed"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->playerName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string/jumbo v0, "player_name"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->playerName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v0, "destination"

    iget-object v2, p0, Lcom/brightcove/player/analytics/Analytics;->destination:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;

    invoke-direct {v0, p0}, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;-><init>(Lcom/brightcove/player/analytics/Analytics;)V

    .line 350
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/HashMap;

    .line 351
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 352
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_4

    .line 353
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v3, v2}, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move-object v0, v1

    .line 358
    goto/16 :goto_0

    .line 355
    :cond_4
    invoke-virtual {v0, v2}, Lcom/brightcove/player/analytics/Analytics$HttpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
