.class Lcom/yelp/android/ui/activities/talk/b$3;
.super Ljava/lang/Object;
.source "TalkMessageAdapter.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/talk/b;
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
        "Lcom/yelp/android/bv/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/b;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/bv/c$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/bv/c$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/b;->d(Lcom/yelp/android/ui/activities/talk/b;)Lcom/yelp/android/ui/activities/talk/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/talk/c;->disableLoading()V

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {p2}, Lcom/yelp/android/bv/c$b;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/b;->a(Ljava/util/Collection;)V

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {p2}, Lcom/yelp/android/bv/c$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/b;->a(Lcom/yelp/android/ui/activities/talk/b;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {p2}, Lcom/yelp/android/bv/c$b;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/b;->a(Lcom/yelp/android/ui/activities/talk/b;I)I

    move-result v0

    .line 347
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {p2}, Lcom/yelp/android/bv/c$b;->b()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/talk/b;->a(Lcom/yelp/android/ui/activities/talk/b;II)V

    .line 364
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/b;->e(Lcom/yelp/android/ui/activities/talk/b;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/b;->d(Lcom/yelp/android/ui/activities/talk/b;)Lcom/yelp/android/ui/activities/talk/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/talk/c;->a(Z)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->notifyDataSetChanged()V

    .line 369
    return-void

    .line 352
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/bv/c$b;->b()I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/b;->e(Lcom/yelp/android/ui/activities/talk/b;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/b;->e(Lcom/yelp/android/ui/activities/talk/b;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/b;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 355
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/b;->e(Lcom/yelp/android/ui/activities/talk/b;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/b;->e()I

    move-result v1

    sub-int/2addr v0, v1

    .line 357
    add-int/lit8 v0, v0, 0x1

    .line 359
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    const/16 v2, 0x32

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/talk/b;->b(Lcom/yelp/android/ui/activities/talk/b;I)V

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/b;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/b;->c(Lcom/yelp/android/ui/activities/talk/b;I)V

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
    .line 373
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/b;->d(Lcom/yelp/android/ui/activities/talk/b;)Lcom/yelp/android/ui/activities/talk/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/activities/talk/c;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b$3;->a:Lcom/yelp/android/ui/activities/talk/b;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/talk/b;->f(Lcom/yelp/android/ui/activities/talk/b;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/talk/b;->b(Lcom/yelp/android/ui/activities/talk/b;I)V

    .line 375
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 336
    check-cast p2, Lcom/yelp/android/bv/c$b;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/b$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/bv/c$b;)V

    return-void
.end method
