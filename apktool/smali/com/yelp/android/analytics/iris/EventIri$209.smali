.class final Lcom/yelp/android/analytics/iris/EventIri$209;
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
    .line 1119
    invoke-direct {p0}, Lcom/yelp/android/bs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    const-string/jumbo v0, "from_toggle"

    return-object v0
.end method

.method public e()[Lcom/yelp/android/analytics/c;
    .locals 3

    .prologue
    .line 1127
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yelp/android/analytics/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->alias:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/yelp/android/analytics/GaCustomDimenLink;->promoted_filter_toggle:Lcom/yelp/android/analytics/GaCustomDimenLink;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/yelp/android/analytics/iris/EventIri$209;->a([Lcom/yelp/android/analytics/c;)[Lcom/yelp/android/analytics/c;

    move-result-object v0

    return-object v0
.end method