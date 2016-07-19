.class public Lcom/yelp/android/appdata/webrequests/cm;
.super Lcom/yelp/android/appdata/webrequests/dn;
.source "LocationRequestStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Lcom/yelp/android/appdata/webrequests/k",
        "<**TResult;>;Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/appdata/webrequests/dn",
        "<TRequest;TResult;",
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<TResult;>;>;"
    }
.end annotation


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/webrequests/dn;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 15
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 16
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/k;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/cm$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/webrequests/cm$1;-><init>(Lcom/yelp/android/appdata/webrequests/cm;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/k;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/cm;Z)Z
    .locals 0

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/yelp/android/appdata/webrequests/cm;->e:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/k;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/k;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 46
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->e:Z

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/k$b;->a()Z

    .line 51
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->c:Z

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cm;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/k$b;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 56
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/k;

    return-object v0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/cm;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {p1, v0, v1}, Lcom/yelp/android/appdata/webrequests/k$b;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method
