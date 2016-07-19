.class final Lcom/yelp/android/analytics/iris/EventIri$106;
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
    .line 2022
    invoke-direct {p0}, Lcom/yelp/android/bs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;
    .locals 1

    .prologue
    .line 2025
    sget-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->appwidget_tracker:Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    return-object v0
.end method
