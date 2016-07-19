.class Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;
.source "ConversationThreadFragment.java"


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
    .line 316
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    if-ne p1, v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    .line 321
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$2;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 323
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;I)V

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/messaging/a;->b(Lcom/yelp/android/serializable/Conversation;)V

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    move-object v0, p2

    .line 331
    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    .line 332
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/cl/b;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/cl/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/cl/b;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/yelp/android/cl/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/ConversationMessage;

    .line 334
    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ConversationMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/cl/b;

    move-result-object v0

    check-cast p2, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {v0, p2}, Lcom/yelp/android/cl/b;->d(Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/cl/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/cl/b;->notifyDataSetChanged()V

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Z)V

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->b()V

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$5;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/e;->b(Lcom/yelp/android/serializable/Conversation;)V

    goto/16 :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
