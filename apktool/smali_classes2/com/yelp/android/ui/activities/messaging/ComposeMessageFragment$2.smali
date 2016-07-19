.class Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->o()V
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
        "Lcom/yelp/android/serializable/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Conversation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Conversation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;Z)Z

    .line 446
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->g(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V

    .line 447
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->h(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$a;->a()V

    .line 448
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
    .line 439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->l()V

    .line 440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 441
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 436
    check-cast p2, Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Conversation;)V

    return-void
.end method
