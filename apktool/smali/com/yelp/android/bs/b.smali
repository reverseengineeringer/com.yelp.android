.class public abstract Lcom/yelp/android/bs/b;
.super Ljava/lang/Object;
.source "GoogleAnalyticMetric.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static varargs a([Lcom/yelp/android/analytics/c;)[Lcom/yelp/android/analytics/c;
    .locals 0

    .prologue
    .line 18
    return-object p0
.end method


# virtual methods
.method public abstract a()Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public e()[Lcom/yelp/android/analytics/c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/analytics/GaCustomDimenLink;->EMPTY_ARRAY:[Lcom/yelp/android/analytics/GaCustomDimenLink;

    return-object v0
.end method

.method public f()Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->default_tracker:Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    return-object v0
.end method
