.class Lcom/yelp/android/ui/activities/messaging/b;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/gq;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/b;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/gq;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->a(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;Z)Z

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->e(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/gq;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;Z)Z

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->f(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

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
    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->j()V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->d(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 335
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 329
    check-cast p2, Lcom/yelp/android/appdata/webrequests/gq;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/gq;)V

    return-void
.end method
