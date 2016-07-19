.class public Lcom/yelp/android/ci/c;
.super Lcom/yelp/android/ci/e;
.source "CheckInCommentFeedEvent.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/FeedItem;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/FeedItem;IZ)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ci/e;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yelp/android/ci/c;->a:Lcom/yelp/android/serializable/FeedItem;

    .line 27
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ci/c;->b:Ljava/util/Map;

    .line 28
    iget-object v0, p0, Lcom/yelp/android/ci/c;->b:Ljava/util/Map;

    const-string/jumbo v1, "index"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-boolean p3, p0, Lcom/yelp/android/ci/c;->c:Z

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/yelp/android/ui/activities/feed/FeedEventIriType;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_CHECK_IN_COMMENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    return-object v0
.end method

.method public synthetic b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/ci/c;->a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ci/c;->b:Ljava/util/Map;

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ci/c;->a:Lcom/yelp/android/serializable/FeedItem;

    const-class v1, Lcom/yelp/android/serializable/FeedCheckInActivity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedCheckInActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedCheckInActivity;->d()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yelp/android/ci/c;->c:Z

    return v0
.end method
