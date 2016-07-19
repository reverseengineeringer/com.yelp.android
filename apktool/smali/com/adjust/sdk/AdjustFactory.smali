.class public Lcom/adjust/sdk/AdjustFactory;
.super Ljava/lang/Object;
.source "AdjustFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
    }
.end annotation


# static fields
.field private static activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private static attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

.field private static httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private static logger:Lcom/adjust/sdk/ILogger;

.field private static packageHandler:Lcom/adjust/sdk/IPackageHandler;

.field private static packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private static requestHandler:Lcom/adjust/sdk/IRequestHandler;

.field private static sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

.field private static sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

.field private static sessionInterval:J

.field private static subsessionInterval:J

.field private static timerInterval:J

.field private static timerStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 12
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    .line 13
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 14
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 15
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    .line 16
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 17
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    .line 19
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    .line 20
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    .line 21
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    .line 22
    sput-wide v2, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    .line 23
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 24
    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityHandler(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/IActivityHandler;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    if-nez v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/adjust/sdk/ActivityHandler;->getInstance(Lcom/adjust/sdk/AdjustConfig;)Lcom/adjust/sdk/ActivityHandler;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/IActivityHandler;->init(Lcom/adjust/sdk/AdjustConfig;)V

    .line 108
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    goto :goto_0
.end method

.method public static getAttributionHandler(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)Lcom/adjust/sdk/IAttributionHandler;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/adjust/sdk/AttributionHandler;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adjust/sdk/AttributionHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V

    .line 119
    :goto_0
    return-object v0

    .line 118
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/adjust/sdk/IAttributionHandler;->init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V

    .line 119
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    goto :goto_0
.end method

.method public static getHttpsURLConnection(Ljava/net/URL;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 127
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_0
.end method

.method public static getHttpsURLGetConnection(Ljava/net/URL;)Lcom/adjust/sdk/AdjustFactory$URLGetConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-nez v0, :cond_0

    .line 132
    new-instance v1, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v1, v0, p0}, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;-><init>(Ljavax/net/ssl/HttpsURLConnection;Ljava/net/URL;)V

    move-object v0, v1

    .line 135
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;

    sget-object v1, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/AdjustFactory$URLGetConnection;-><init>(Ljavax/net/ssl/HttpsURLConnection;Ljava/net/URL;)V

    goto :goto_0
.end method

.method public static getLogger()Lcom/adjust/sdk/ILogger;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/adjust/sdk/Logger;

    invoke-direct {v0}, Lcom/adjust/sdk/Logger;-><init>()V

    sput-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    .line 58
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    return-object v0
.end method

.method public static getPackageHandler(Lcom/adjust/sdk/ActivityHandler;Landroid/content/Context;Z)Lcom/adjust/sdk/IPackageHandler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/adjust/sdk/PackageHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/adjust/sdk/PackageHandler;-><init>(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    .line 42
    :goto_0
    return-object v0

    .line 41
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p0, p1, p2}, Lcom/adjust/sdk/IPackageHandler;->init(Lcom/adjust/sdk/IActivityHandler;Landroid/content/Context;Z)V

    .line 42
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    goto :goto_0
.end method

.method public static getPackageHandlerBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    if-nez v0, :cond_0

    .line 98
    sget-object v0, Lcom/adjust/sdk/BackoffStrategy;->LONG_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 100
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    goto :goto_0
.end method

.method public static getRequestHandler(Lcom/adjust/sdk/IPackageHandler;)Lcom/adjust/sdk/IRequestHandler;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/adjust/sdk/RequestHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/RequestHandler;-><init>(Lcom/adjust/sdk/IPackageHandler;)V

    .line 50
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/IRequestHandler;->init(Lcom/adjust/sdk/IPackageHandler;)V

    .line 50
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    goto :goto_0
.end method

.method public static getSdkClickBackoffStrategy()Lcom/adjust/sdk/BackoffStrategy;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/adjust/sdk/BackoffStrategy;->SHORT_WAIT:Lcom/adjust/sdk/BackoffStrategy;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    goto :goto_0
.end method

.method public static getSdkClickHandler(Z)Lcom/adjust/sdk/ISdkClickHandler;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/adjust/sdk/SdkClickHandler;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/SdkClickHandler;-><init>(Z)V

    .line 144
    :goto_0
    return-object v0

    .line 143
    :cond_0
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    invoke-interface {v0, p0}, Lcom/adjust/sdk/ISdkClickHandler;->init(Z)V

    .line 144
    sget-object v0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    goto :goto_0
.end method

.method public static getSessionInterval()J
    .locals 4

    .prologue
    .line 76
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 77
    const-wide/32 v0, 0x1b7740

    .line 79
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    goto :goto_0
.end method

.method public static getSubsessionInterval()J
    .locals 4

    .prologue
    .line 83
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    const-wide/16 v0, 0x3e8

    .line 86
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    goto :goto_0
.end method

.method public static getTimerInterval()J
    .locals 4

    .prologue
    .line 62
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 63
    const-wide/32 v0, 0xea60

    .line 65
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    goto :goto_0
.end method

.method public static getTimerStart()J
    .locals 4

    .prologue
    .line 69
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 70
    const-wide/32 v0, 0xea60

    .line 72
    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    goto :goto_0
.end method

.method public static setActivityHandler(Lcom/adjust/sdk/IActivityHandler;)V
    .locals 0

    .prologue
    .line 184
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 185
    return-void
.end method

.method public static setAttributionHandler(Lcom/adjust/sdk/IAttributionHandler;)V
    .locals 0

    .prologue
    .line 188
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->attributionHandler:Lcom/adjust/sdk/IAttributionHandler;

    .line 189
    return-void
.end method

.method public static setHttpsURLConnection(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0

    .prologue
    .line 192
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->httpsURLConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 193
    return-void
.end method

.method public static setLogger(Lcom/adjust/sdk/ILogger;)V
    .locals 0

    .prologue
    .line 156
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->logger:Lcom/adjust/sdk/ILogger;

    .line 157
    return-void
.end method

.method public static setPackageHandler(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 0

    .prologue
    .line 148
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 149
    return-void
.end method

.method public static setPackageHandlerBackoffStrategy(Lcom/adjust/sdk/BackoffStrategy;)V
    .locals 0

    .prologue
    .line 180
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->packageHandlerBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 181
    return-void
.end method

.method public static setRequestHandler(Lcom/adjust/sdk/IRequestHandler;)V
    .locals 0

    .prologue
    .line 152
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->requestHandler:Lcom/adjust/sdk/IRequestHandler;

    .line 153
    return-void
.end method

.method public static setSdkClickBackoffStrategy(Lcom/adjust/sdk/BackoffStrategy;)V
    .locals 0

    .prologue
    .line 176
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->sdkClickBackoffStrategy:Lcom/adjust/sdk/BackoffStrategy;

    .line 177
    return-void
.end method

.method public static setSdkClickHandler(Lcom/adjust/sdk/ISdkClickHandler;)V
    .locals 0

    .prologue
    .line 196
    sput-object p0, Lcom/adjust/sdk/AdjustFactory;->sdkClickHandler:Lcom/adjust/sdk/ISdkClickHandler;

    .line 197
    return-void
.end method

.method public static setSessionInterval(J)V
    .locals 0

    .prologue
    .line 168
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->sessionInterval:J

    .line 169
    return-void
.end method

.method public static setSubsessionInterval(J)V
    .locals 0

    .prologue
    .line 172
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->subsessionInterval:J

    .line 173
    return-void
.end method

.method public static setTimerInterval(J)V
    .locals 0

    .prologue
    .line 160
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->timerInterval:J

    .line 161
    return-void
.end method

.method public static setTimerStart(J)V
    .locals 0

    .prologue
    .line 164
    sput-wide p0, Lcom/adjust/sdk/AdjustFactory;->timerStart:J

    .line 165
    return-void
.end method
