.class public Lcom/yelp/android/bs/d;
.super Lcom/yelp/android/bs/b;
.source "TimingEvent.java"


# static fields
.field public static final a:Lcom/yelp/android/bs/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/yelp/android/bs/d;

    invoke-direct {v0}, Lcom/yelp/android/bs/d;-><init>()V

    sput-object v0, Lcom/yelp/android/bs/d;->a:Lcom/yelp/android/bs/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/bs/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->TIMING:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
