.class final Lcom/yelp/android/analytics/iris/EventIri$75;
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
    .line 1725
    invoke-direct {p0}, Lcom/yelp/android/bs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1728
    const-string/jumbo v0, "item_type"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1733
    const-string/jumbo v0, "is_positive"

    return-object v0
.end method

.method public e()[Lcom/yelp/android/analytics/c;
    .locals 3

    .prologue
    .line 1738
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/analytics/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->vote_type:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/yelp/android/analytics/iris/EventIri$75;->a([Lcom/yelp/android/analytics/c;)[Lcom/yelp/android/analytics/c;

    move-result-object v0

    return-object v0
.end method
