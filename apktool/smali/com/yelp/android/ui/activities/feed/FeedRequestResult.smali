.class public Lcom/yelp/android/ui/activities/feed/FeedRequestResult;
.super Ljava/lang/Object;
.source "FeedRequestResult.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->b:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->c:Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    .line 26
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Lcom/yelp/android/ui/activities/feed/FeedRequestResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;

    if-nez p1, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;->NO_MORE_FEEDS:Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    :goto_0
    invoke-direct {v1, p0, p1, v0}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;->NEXT_PAGE:Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->c:Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    return-object v0
.end method
