.class Lcom/yelp/android/appdata/webrequests/cm$1;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "LocationRequestStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/webrequests/cm;-><init>(Lcom/yelp/android/appdata/webrequests/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/cm;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/cm;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/cm$1;->a:Lcom/yelp/android/appdata/webrequests/cm;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 20
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm$1;->a:Lcom/yelp/android/appdata/webrequests/cm;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/cm;->a(Lcom/yelp/android/appdata/webrequests/cm;Z)Z

    .line 27
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm$1;->a:Lcom/yelp/android/appdata/webrequests/cm;

    iget-object v0, v0, Lcom/yelp/android/appdata/webrequests/cm;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    check-cast v0, Lcom/yelp/android/appdata/webrequests/k;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 32
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm$1;->a:Lcom/yelp/android/appdata/webrequests/cm;

    iput-object p2, v0, Lcom/yelp/android/appdata/webrequests/cm;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 33
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
    .line 37
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm$1;->a:Lcom/yelp/android/appdata/webrequests/cm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yelp/android/appdata/webrequests/cm;->c:Z

    .line 38
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/cm$1;->a:Lcom/yelp/android/appdata/webrequests/cm;

    iput-object p2, v0, Lcom/yelp/android/appdata/webrequests/cm;->b:Ljava/lang/Object;

    .line 39
    return-void
.end method
