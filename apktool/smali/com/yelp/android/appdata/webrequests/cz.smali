.class public Lcom/yelp/android/appdata/webrequests/cz;
.super Lcom/yelp/android/appdata/webrequests/ek;
.source "LocationRequestStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/yelp/android/appdata/webrequests/h",
        "<**TResult;>;Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/ek",
        "<TRequest;TResult;",
        "Lcom/yelp/android/appdata/webrequests/j",
        "<TResult;>;>;"
    }
.end annotation


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/h;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;Z)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/webrequests/ek;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 15
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cz;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 16
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cz;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/h;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/da;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/appdata/webrequests/da;-><init>(Lcom/yelp/android/appdata/webrequests/cz;Z)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/h;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/cz;Z)Z
    .locals 0

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/yelp/android/appdata/webrequests/cz;->e:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cz;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/h;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/h;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 39
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/cz;->e:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/j;->a()Z

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/cz;->c:Z

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cz;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cz;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/j;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 49
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cz;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/h;

    return-object v0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cz;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cz;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cz;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/j;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method
