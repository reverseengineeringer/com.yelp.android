.class Lcom/yelp/android/ui/activities/messaging/j;
.super Ljava/lang/Object;
.source "ConversationThreadFragment.java"

# interfaces
.implements Lcom/yelp/android/services/push/j;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/j;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/services/push/h;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/j;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/services/push/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/j;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/j;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/j;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/j;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->b(Lcom/yelp/android/serializable/Conversation;)V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/j;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Z)Z

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/j;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;Z)Z

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/services/push/h;)Z
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/j;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->g(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/services/push/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string/jumbo v0, "ConversationThreadFragment"

    return-object v0
.end method
