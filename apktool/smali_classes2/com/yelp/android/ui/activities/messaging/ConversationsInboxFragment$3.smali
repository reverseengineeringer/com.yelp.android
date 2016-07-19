.class Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;
.super Ljava/lang/Object;
.source "ConversationsInboxFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/messaging/apimanagers/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z

    .line 404
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 406
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z

    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/cl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h()V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0, v4}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z

    .line 345
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_TRASHED:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_NEW:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    if-ne p1, v0, :cond_3

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Ljava/lang/String;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->c(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/cl/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/cl/c;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/messaging/a;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 373
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->i(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/cl/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/cl/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_CONVERSATIONS:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->populateError(Lcom/yelp/android/util/ErrorType;)V

    goto :goto_0

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->u_()V

    goto :goto_1

    .line 381
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->j(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h()V

    .line 392
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->k(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast p2, Lcom/yelp/android/appdata/webrequests/messaging/f$a;

    iget v1, p2, Lcom/yelp/android/appdata/webrequests/messaging/f$a;->b:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;I)V

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0, v4}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->c(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z

    goto/16 :goto_0
.end method
