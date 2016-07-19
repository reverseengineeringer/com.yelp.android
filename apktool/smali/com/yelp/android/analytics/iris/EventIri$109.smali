.class final Lcom/yelp/android/analytics/iris/EventIri$109;
.super Lcom/yelp/android/bs/a;
.source "EventIri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/iris/EventIri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2046
    invoke-direct {p0}, Lcom/yelp/android/bs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2049
    const-string/jumbo v0, "category"

    return-object v0
.end method

.method public f()Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;
    .locals 1

    .prologue
    .line 2054
    sget-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->appwidget_tracker:Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    return-object v0
.end method
