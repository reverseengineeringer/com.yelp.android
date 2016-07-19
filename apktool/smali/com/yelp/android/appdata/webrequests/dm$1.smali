.class Lcom/yelp/android/appdata/webrequests/dm$1;
.super Ljava/lang/Object;
.source "RequestStore.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/dm;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/dm;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/dm$1;->a:Lcom/yelp/android/appdata/webrequests/dm;

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
    .line 39
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm$1;->a:Lcom/yelp/android/appdata/webrequests/dm;

    iput-object p2, v0, Lcom/yelp/android/appdata/webrequests/dm;->d:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 40
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
    .line 44
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm$1;->a:Lcom/yelp/android/appdata/webrequests/dm;

    iput-object p2, v0, Lcom/yelp/android/appdata/webrequests/dm;->b:Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/dm$1;->a:Lcom/yelp/android/appdata/webrequests/dm;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/yelp/android/appdata/webrequests/dm;->c:Z

    .line 46
    return-void
.end method
