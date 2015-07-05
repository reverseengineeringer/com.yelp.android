.class Lcom/yelp/android/ui/activities/talk/af;
.super Ljava/lang/Object;
.source "TalkViewPost.java"

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
.field final synthetic a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/aw/h;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/talk/q;->a(Lcom/yelp/android/aw/h;)V

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->d()Lcom/yelp/android/ui/activities/talk/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/j;->a(Z)V

    .line 374
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Z)V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->g(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cp;->b(Landroid/view/View;)V

    .line 378
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/talk/q;->a(Lcom/yelp/android/aw/h;)V

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->d()Lcom/yelp/android/ui/activities/talk/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/j;->a(Z)V

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

    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->a(Z)V

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->e(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->d()Lcom/yelp/android/ui/activities/talk/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/talk/j;->a(Z)V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/af;->a:Lcom/yelp/android/ui/activities/talk/TalkViewPost;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/talk/TalkViewPost;->f(Lcom/yelp/android/ui/activities/talk/TalkViewPost;)Lcom/yelp/android/ui/activities/talk/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->d()Lcom/yelp/android/ui/activities/talk/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/talk/j;->a(Z)V

    .line 359
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 351
    check-cast p2, Lcom/yelp/android/aw/h;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/af;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/aw/h;)V

    return-void
.end method
