.class final enum Lcom/yelp/android/analytics/iris/EventIri$8;
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
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/analytics/iris/EventIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/EventIri$1;)V

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/yelp/android/analytics/iris/AnalyticCategory;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->AUTO:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    return-object v0
.end method

.method public bridge synthetic getGoogleAnalyticMetric()Lcom/yelp/android/bs/b;
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/yelp/android/analytics/iris/EventIri;->getGoogleAnalyticMetric()Lcom/yelp/android/bs/a;

    move-result-object v0

    return-object v0
.end method
