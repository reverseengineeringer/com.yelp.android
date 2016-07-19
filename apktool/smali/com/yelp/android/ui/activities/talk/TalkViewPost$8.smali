.class Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;
.super Ljava/lang/Object;
.source "TalkViewPost.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/talk/TalkViewPost;
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
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/bv/c$b;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/talk/b;->a(Lcom/yelp/android/bv/c$b;)V

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->d()Lcom/yelp/android/ui/activities/talk/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/a;->a(Z)V

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Z)V

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/view/View;)V

    .line 401
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/talk/b;->a(Lcom/yelp/android/bv/c$b;)V

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->d()Lcom/yelp/android/ui/activities/talk/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/a;->a(Z)V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Z)V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->d()Lcom/yelp/android/ui/activities/talk/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/talk/a;->a(Z)V

    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->d()Lcom/yelp/android/ui/activities/talk/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/talk/a;->a(Z)V

    .line 381
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 373
    check-cast p2, Lcom/yelp/android/bv/c$b;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost$8;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/bv/c$b;)V

    return-void
.end method
