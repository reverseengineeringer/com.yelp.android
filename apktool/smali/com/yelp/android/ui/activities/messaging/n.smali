.class Lcom/yelp/android/ui/activities/messaging/n;
.super Ljava/lang/Object;
.source "ConversationThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/n;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/n;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/n;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->h(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/i;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/n;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->b(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/messaging/apimanagers/i;->a(Lcom/yelp/android/serializable/Conversation;)V

    .line 479
    :cond_0
    return-void
.end method
