.class Lcom/yelp/android/ui/activities/messaging/s;
.super Lcom/yelp/android/ui/activities/messaging/apimanagers/p;
.source "ConversationsInboxFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/s;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/p;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/s;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->f(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    .line 262
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/s;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/s;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/s;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/appdata/webrequests/YelpException;Lcom/yelp/android/serializable/Conversation;)V

    .line 257
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/s;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/s;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->e(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/s;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->c(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/a;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/s;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->d(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/yelp/android/ui/activities/messaging/MessagingActionsHelper;->a(Lcom/yelp/android/ui/activities/messaging/a;Lcom/yelp/android/ui/activities/messaging/apimanagers/MessagingAction;Lcom/yelp/android/serializable/Conversation;)V

    .line 250
    return-void
.end method
