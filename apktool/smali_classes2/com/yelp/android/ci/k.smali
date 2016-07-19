.class public Lcom/yelp/android/ci/k;
.super Lcom/yelp/android/ci/e;
.source "YnraFeedEvent.java"


# instance fields
.field private final a:Lcom/yelp/android/serializable/FeedItem;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/FeedItem;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ci/e;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/ci/k;->a:Lcom/yelp/android/serializable/FeedItem;

    .line 21
    iput p2, p0, Lcom/yelp/android/ci/k;->b:I

    .line 22
    iput p3, p0, Lcom/yelp/android/ci/k;->c:I

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Lcom/yelp/android/ui/activities/feed/FeedEventIriType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    return-object v0
.end method

.method public synthetic b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/ci/k;->a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;

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
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ci/k;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/FeedItem;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ci/k;->a:Lcom/yelp/android/serializable/FeedItem;

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/yelp/android/ci/k;->b:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/yelp/android/ci/k;->c:I

    return v0
.end method
