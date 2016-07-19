.class final Lcom/yelp/android/analytics/iris/ViewIri$10;
.super Lcom/yelp/android/bs/c;
.source "ViewIri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/iris/ViewIri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/yelp/android/bs/c;-><init>()V

    return-void
.end method


# virtual methods
.method public e()[Lcom/yelp/android/analytics/c;
    .locals 3

    .prologue
    .line 315
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/analytics/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->review_suggestions_viewed:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/yelp/android/analytics/iris/ViewIri$10;->a([Lcom/yelp/android/analytics/c;)[Lcom/yelp/android/analytics/c;

    move-result-object v0

    return-object v0
.end method
