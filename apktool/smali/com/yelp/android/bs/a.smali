.class public Lcom/yelp/android/bs/a;
.super Lcom/yelp/android/bs/b;
.source "EventAction.java"


# static fields
.field public static final a:Lcom/yelp/android/bs/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/yelp/android/bs/a;

    invoke-direct {v0}, Lcom/yelp/android/bs/a;-><init>()V

    sput-object v0, Lcom/yelp/android/bs/a;->a:Lcom/yelp/android/bs/a;

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
    sget-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->EVENT:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
