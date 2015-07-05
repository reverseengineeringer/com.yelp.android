.class Lcom/yelp/android/ui/activities/talk/t;
.super Ljava/lang/Object;
.source "TalkMessageAdapter.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/aw/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/q;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/q;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/aw/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/aw/h;",
            ")V"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/q;->d(Lcom/yelp/android/ui/activities/talk/q;)Lcom/yelp/android/ui/activities/talk/v;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/talk/v;->disableLoading()V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {p2}, Lcom/yelp/android/aw/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/q;->a(Ljava/util/Collection;)V

    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {p2}, Lcom/yelp/android/aw/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/q;->a(Lcom/yelp/android/ui/activities/talk/q;Ljava/lang/String;)Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {p2}, Lcom/yelp/android/aw/h;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/q;->a(Lcom/yelp/android/ui/activities/talk/q;I)I

    move-result v0

    .line 339
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {p2}, Lcom/yelp/android/aw/h;->b()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/talk/q;->a(Lcom/yelp/android/ui/activities/talk/q;II)V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/q;->e(Lcom/yelp/android/ui/activities/talk/q;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v0

    if-nez v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/q;->d(Lcom/yelp/android/ui/activities/talk/q;)Lcom/yelp/android/ui/activities/talk/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/talk/v;->a(Z)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->notifyDataSetChanged()V

    .line 361
    return-void

    .line 344
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/aw/h;->b()I

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/q;->e(Lcom/yelp/android/ui/activities/talk/q;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/q;->e(Lcom/yelp/android/ui/activities/talk/q;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/q;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 347
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/q;->e(Lcom/yelp/android/ui/activities/talk/q;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/q;->e()I

    move-result v1

    sub-int/2addr v0, v1

    .line 349
    add-int/lit8 v0, v0, 0x1

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    const/16 v2, 0x32

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/talk/q;->b(Lcom/yelp/android/ui/activities/talk/q;I)V

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/q;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/q;->c(Lcom/yelp/android/ui/activities/talk/q;I)V

    goto :goto_0
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
    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/q;->d(Lcom/yelp/android/ui/activities/talk/q;)Lcom/yelp/android/ui/activities/talk/v;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/activities/talk/v;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/t;->a:Lcom/yelp/android/ui/activities/talk/q;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/q;->f(Lcom/yelp/android/ui/activities/talk/q;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/q;->b(Lcom/yelp/android/ui/activities/talk/q;I)V

    .line 367
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 329
    check-cast p2, Lcom/yelp/android/aw/h;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/t;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/aw/h;)V

    return-void
.end method
