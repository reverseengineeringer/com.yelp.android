.class public Lcom/yelp/android/analytics/adjust/AdjustManager;
.super Ljava/lang/Object;
.source "AdjustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/analytics/adjust/AdjustManager$1;-><init>(Lcom/yelp/android/analytics/adjust/AdjustManager;)V

    iput-object v0, p0, Lcom/yelp/android/analytics/adjust/AdjustManager;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 52
    const-string/jumbo v0, "production"

    .line 57
    new-instance v1, Lcom/adjust/sdk/AdjustConfig;

    const-string/jumbo v2, "puue7pqf3sf7"

    invoke-direct {v1, p1, v2, v0}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/AdjustConfig;->setEventBufferingEnabled(Ljava/lang/Boolean;)V

    .line 62
    sget-object v0, Lcom/adjust/sdk/LogLevel;->VERBOSE:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 65
    new-instance v0, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;

    invoke-direct {v0}, Lcom/yelp/android/analytics/adjust/YelpAdjustLogger;-><init>()V

    invoke-static {v0}, Lcom/adjust/sdk/AdjustFactory;->setLogger(Lcom/adjust/sdk/ILogger;)V

    .line 66
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/analytics/adjust/AdjustManager;->a:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 69
    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->PLATFORM_ORDER:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->getAdjustEvent()Lcom/adjust/sdk/AdjustEvent;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "USD"

    invoke-virtual {v0, p1, p2, v1}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 93
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 94
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->DEEPLINK_CRITEO:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->getAdjustEvent()Lcom/adjust/sdk/AdjustEvent;

    move-result-object v0

    .line 110
    invoke-static {v0, p1}, Lcom/adjust/sdk/plugin/AdjustCriteo;->injectDeeplinkIntoEvent(Lcom/adjust/sdk/AdjustEvent;Landroid/net/Uri;)V

    .line 111
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 112
    return-void
.end method

.method public a(Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;)V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p1}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->getAdjustEvent()Lcom/adjust/sdk/AdjustEvent;

    move-result-object v0

    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 73
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->YDID_SET:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->getAdjustEvent()Lcom/adjust/sdk/AdjustEvent;

    move-result-object v0

    .line 86
    const-string/jumbo v1, "y_device_id"

    invoke-virtual {v0, v1, p1}, Lcom/adjust/sdk/AdjustEvent;->addCallbackParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 88
    return-void
.end method
