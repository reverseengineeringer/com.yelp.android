.class public Lcom/yelp/android/ci/a;
.super Lcom/yelp/android/ci/g;
.source "BizPhotoLikedEvent.java"


# instance fields
.field private final b:Lcom/yelp/android/serializable/Photo;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/Photo;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p3}, Lcom/yelp/android/ci/g;-><init>(Lcom/yelp/android/serializable/FeedItem;Z)V

    .line 19
    iput-object p2, p0, Lcom/yelp/android/ci/a;->b:Lcom/yelp/android/serializable/Photo;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eh;

    iget-object v1, p0, Lcom/yelp/android/ci/a;->b:Lcom/yelp/android/serializable/Photo;

    iget-boolean v2, p0, Lcom/yelp/android/ci/a;->a:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/yelp/android/appdata/webrequests/eh;-><init>(Lcom/yelp/android/serializable/Photo;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    return-object v0
.end method

.method public synthetic b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/ci/a;->a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;

    move-result-object v0

    return-object v0
.end method
