.class final enum Lcom/yelp/android/analytics/iris/ViewIri$3;
.super Lcom/yelp/android/analytics/iris/ViewIri;
.source "ViewIri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/iris/ViewIri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/analytics/iris/ViewIri;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getGoogleAnalyticMetric()Lcom/yelp/android/bs/b;
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/yelp/android/analytics/iris/ViewIri;->getGoogleAnalyticMetric()Lcom/yelp/android/bs/c;

    move-result-object v0

    return-object v0
.end method

.method public isExcludedFromGoogleAnalytics()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
