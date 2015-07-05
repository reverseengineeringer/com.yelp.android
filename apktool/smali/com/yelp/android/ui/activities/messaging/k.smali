.class Lcom/yelp/android/ui/activities/messaging/k;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/p;
.source "ConversationThreadFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->MARK_CONVERSATION_READ:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    if-ne p1, v0, :cond_0

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    .line 284
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/h;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 286
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;I)V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/messaging/a;->b(Lcom/yelp/android/serializable/Conversation;)V

    goto :goto_0

    .line 291
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->k(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    move-object v0, p2

    .line 294
    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    .line 295
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/bb/d;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/bb/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/bb/d;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/yelp/android/bb/d;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/ConversationMessage;

    .line 297
    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/ConversationMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/bb/d;

    move-result-object v0

    check-cast p2, Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {v0, p2}, Lcom/yelp/android/bb/d;->c(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/bb/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/bb/d;->notifyDataSetChanged()V

    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->m(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->a(Z)V

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/a;->c()V

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->n(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/k;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b(Lcom/yelp/android/serializable/Conversation;)V

    goto/16 :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
