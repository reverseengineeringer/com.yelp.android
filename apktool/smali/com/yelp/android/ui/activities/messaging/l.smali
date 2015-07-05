.class Lcom/yelp/android/ui/activities/messaging/l;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/p;
.source "ConversationThreadFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/l;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/l;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    .line 349
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/l;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 344
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 333
    sget-object v0, Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;->DELETE_CONVERSATION:Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;

    if-eq p1, v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/l;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->j()V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/l;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->o(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/l;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->p(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/l;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->e(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/l;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/serializable/Conversation;)V

    .line 339
    return-void
.end method
