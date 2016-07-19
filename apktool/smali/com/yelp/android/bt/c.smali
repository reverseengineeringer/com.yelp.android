.class public Lcom/yelp/android/bt/c;
.super Ljava/lang/Object;
.source "NetworkRepository.java"

# interfaces
.implements Lcom/yelp/android/bt/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<**TResult;>;)",
            "Lrx/a",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/yelp/android/bt/c$1;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/bt/c$1;-><init>(Lcom/yelp/android/bt/c;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/a",
            "<",
            "Lcom/yelp/android/appdata/webrequests/e$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    new-instance v0, Lcom/yelp/android/appdata/webrequests/e;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/e;-><init>()V

    invoke-direct {p0, v0}, Lcom/yelp/android/bt/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/User;IIZ)Lrx/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/User;",
            "IIZ)",
            "Lrx/a",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fo;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fo;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/User;IIZ)V

    invoke-direct {p0, v0}, Lcom/yelp/android/bt/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/User;IIZZ)Lrx/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/User;",
            "IIZZ)",
            "Lrx/a",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fp;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/fp;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/User;IIZZ)V

    invoke-direct {p0, v0}, Lcom/yelp/android/bt/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Badge;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fa;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/webrequests/fa;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/bt/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Z)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/appdata/webrequests/em;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/em;-><init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/bt/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/a",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/appdata/webrequests/a;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/webrequests/a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/bt/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lrx/a;

    move-result-object v0

    return-object v0
.end method
