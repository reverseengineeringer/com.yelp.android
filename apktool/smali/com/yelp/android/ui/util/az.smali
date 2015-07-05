.class Lcom/yelp/android/ui/util/az;
.super Ljava/lang/Object;
.source "MediaAdapter.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ax;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ax;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/yelp/android/ui/util/az;->a:Lcom/yelp/android/ui/util/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/util/az;->a:Lcom/yelp/android/ui/util/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/ax;Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/util/az;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ax;->b(Lcom/yelp/android/ui/util/ax;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/util/az;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v0}, Lcom/yelp/android/ui/util/ax;->c(Lcom/yelp/android/ui/util/ax;)I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/az;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v1}, Lcom/yelp/android/ui/util/ax;->b(Lcom/yelp/android/ui/util/ax;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/util/az;->a:Lcom/yelp/android/ui/util/ax;

    iget-object v1, p0, Lcom/yelp/android/ui/util/az;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v1}, Lcom/yelp/android/ui/util/ax;->c(Lcom/yelp/android/ui/util/ax;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/ax;I)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/az;->a:Lcom/yelp/android/ui/util/ax;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ax;->c()V

    .line 255
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/util/az;->a:Lcom/yelp/android/ui/util/ax;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/ax;Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 243
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 237
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dm;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/util/az;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V

    return-void
.end method
