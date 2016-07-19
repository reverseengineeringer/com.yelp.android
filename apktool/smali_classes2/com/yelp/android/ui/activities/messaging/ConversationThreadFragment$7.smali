.class Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;
.super Ljava/lang/Object;
.source "ConversationThreadFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/messaging/apimanagers/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a()V

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 445
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setBackgroundResource(I)V

    .line 448
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 405
    :cond_0
    :goto_0
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$2;->b:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 430
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 433
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b(Lcom/yelp/android/serializable/Conversation;)V

    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Z)Z

    .line 438
    :cond_1
    :goto_2
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->q(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    goto :goto_0

    .line 407
    :pswitch_0
    check-cast p2, Lcom/yelp/android/serializable/Conversation;

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/serializable/Conversation;)V

    goto :goto_1

    .line 411
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Z)V

    goto :goto_1

    .line 414
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Z)V

    goto :goto_1

    .line 418
    :pswitch_3
    check-cast p2, Ljava/util/List;

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 421
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    invoke-virtual {v1, v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelectionFromTop(II)V

    goto :goto_1

    .line 435
    :cond_4
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;->CONTENT_ADDED_BOTTOM:Lcom/yelp/android/ui/activities/messaging/apimanagers/ApiListManager$RequestResult;

    if-ne p1, v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$7;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->f()V

    goto :goto_2

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
