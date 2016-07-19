.class final Lcom/yelp/android/analytics/iris/EventIri$171;
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
    .line 426
    invoke-direct {p0}, Lcom/yelp/android/bs/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;
    .locals 1

    .prologue
    .line 429
    sget-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->PUSH_NOTIFICATION:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    return-object v0
.end method
