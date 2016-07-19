.class public Lcom/yelp/android/bs/c;
.super Lcom/yelp/android/bs/b;
.source "ScreenName.java"


# static fields
.field public static final a:Lcom/yelp/android/bs/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/yelp/android/bs/c;

    invoke-direct {v0}, Lcom/yelp/android/bs/c;-><init>()V

    sput-object v0, Lcom/yelp/android/bs/c;->a:Lcom/yelp/android/bs/c;

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
    sget-object v0, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->VIEW:Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    return-object v0
.end method
