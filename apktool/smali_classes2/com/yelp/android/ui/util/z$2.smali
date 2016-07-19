.class Lcom/yelp/android/ui/util/z$2;
.super Ljava/lang/Object;
.source "MediaAdapter.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/MediaPayload;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/z;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/z;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/yelp/android/ui/util/z$2;->a:Lcom/yelp/android/ui/util/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ")V"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/util/z$2;->a:Lcom/yelp/android/ui/util/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/z;->a(Lcom/yelp/android/ui/util/z;Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/util/z$2;->a:Lcom/yelp/android/ui/util/z;

    invoke-static {v0}, Lcom/yelp/android/ui/util/z;->b(Lcom/yelp/android/ui/util/z;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/util/z$2;->a:Lcom/yelp/android/ui/util/z;

    invoke-static {v0}, Lcom/yelp/android/ui/util/z;->c(Lcom/yelp/android/ui/util/z;)I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/z$2;->a:Lcom/yelp/android/ui/util/z;

    invoke-static {v1}, Lcom/yelp/android/ui/util/z;->b(Lcom/yelp/android/ui/util/z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/util/z$2;->a:Lcom/yelp/android/ui/util/z;

    iget-object v1, p0, Lcom/yelp/android/ui/util/z$2;->a:Lcom/yelp/android/ui/util/z;

    invoke-static {v1}, Lcom/yelp/android/ui/util/z;->c(Lcom/yelp/android/ui/util/z;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/z;->a(Lcom/yelp/android/ui/util/z;I)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/z$2;->a:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/z;->c()V

    .line 283
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
    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/util/z$2;->a:Lcom/yelp/android/ui/util/z;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/z;->a(Lcom/yelp/android/ui/util/z;Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 271
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 265
    check-cast p2, Lcom/yelp/android/serializable/MediaPayload;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/util/z$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V

    return-void
.end method
