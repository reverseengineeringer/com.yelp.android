.class final enum Lcom/yelp/android/analytics/iris/EventIri$97;
.super Lcom/yelp/android/analytics/iris/EventIri;
.source "EventIri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/iris/EventIri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/analytics/iris/EventIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getGoogleAnalyticMetric()Lcom/yelp/android/bs/b;
    .locals 1

    .prologue
    .line 1097
    invoke-super {p0}, Lcom/yelp/android/analytics/iris/EventIri;->getGoogleAnalyticMetric()Lcom/yelp/android/bs/a;

    move-result-object v0

    return-object v0
.end method

.method public isExcludedFromGoogleAnalytics()Z
    .locals 1

    .prologue
    .line 1100
    const/4 v0, 0x1

    return v0
.end method
