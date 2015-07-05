.class Lcom/yelp/android/appdata/webrequests/da;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "LocationRequestStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/yelp/android/appdata/webrequests/cz;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/cz;Z)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/da;->b:Lcom/yelp/android/appdata/webrequests/cz;

    iput-boolean p2, p0, Lcom/yelp/android/appdata/webrequests/da;->a:Z

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/da;->b:Lcom/yelp/android/appdata/webrequests/cz;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/cz;->a(Lcom/yelp/android/appdata/webrequests/cz;Z)Z

    .line 20
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/da;->a:Z

    return v0
.end method

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
    .line 25
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/da;->b:Lcom/yelp/android/appdata/webrequests/cz;

    iput-object p2, v0, Lcom/yelp/android/appdata/webrequests/cz;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 26
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
    .line 30
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/da;->b:Lcom/yelp/android/appdata/webrequests/cz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yelp/android/appdata/webrequests/cz;->c:Z

    .line 31
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/da;->b:Lcom/yelp/android/appdata/webrequests/cz;

    iput-object p2, v0, Lcom/yelp/android/appdata/webrequests/cz;->b:Ljava/lang/Object;

    .line 32
    return-void
.end method
