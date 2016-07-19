.class public Lcom/yelp/android/ci/j;
.super Lcom/yelp/android/ci/g;
.source "VideoLikedFeedEvent.java"


# instance fields
.field private final b:Lcom/yelp/android/serializable/FeedItem;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/FeedItem;Z)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ci/g;-><init>(Lcom/yelp/android/serializable/FeedItem;Z)V

    .line 18
    iput-object p1, p0, Lcom/yelp/android/ci/j;->b:Lcom/yelp/android/serializable/FeedItem;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;
    .locals 3

    .prologue
    .line 23
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ej;

    iget-object v0, p0, Lcom/yelp/android/ci/j;->b:Lcom/yelp/android/serializable/FeedItem;

    const-class v2, Lcom/yelp/android/serializable/FeedVideoActivity;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedVideoActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedVideoActivity;->d()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    iget-boolean v2, p0, Lcom/yelp/android/ci/j;->a:Z

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/ej;-><init>(Lcom/yelp/android/serializable/Video;Z)V

    return-object v1
.end method

.method public synthetic b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/ci/j;->a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;

    move-result-object v0

    return-object v0
.end method
