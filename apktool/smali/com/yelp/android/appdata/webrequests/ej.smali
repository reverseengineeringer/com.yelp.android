.class Lcom/yelp/android/appdata/webrequests/ej;
.super Ljava/lang/Object;
.source "RequestStore.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/ei;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/ei;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ej;->a:Lcom/yelp/android/appdata/webrequests/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ej;->a:Lcom/yelp/android/appdata/webrequests/ei;

    iput-object p2, v0, Lcom/yelp/android/appdata/webrequests/ei;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 39
    return-void
.end method

.method public onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;TResult;)V"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ej;->a:Lcom/yelp/android/appdata/webrequests/ei;

    iput-object p2, v0, Lcom/yelp/android/appdata/webrequests/ei;->b:Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ej;->a:Lcom/yelp/android/appdata/webrequests/ei;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yelp/android/appdata/webrequests/ei;->c:Z

    .line 45
    return-void
.end method
