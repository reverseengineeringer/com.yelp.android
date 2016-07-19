.class public Lcom/yelp/android/appdata/webrequests/dm;
.super Lcom/yelp/android/appdata/webrequests/dn;
.source "RequestStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest",
        "<**TResult;>;Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/dn",
        "<TRequest;TResult;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<TResult;>;>;"
    }
.end annotation


# instance fields
.field private final e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/webrequests/dn;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 35
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dm$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/dm$1;-><init>(Lcom/yelp/android/appdata/webrequests/dm;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 17
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dm;->e:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 27
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->c:Z

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dm;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$b;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 32
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object v0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/dm;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-interface {p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$b;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method
