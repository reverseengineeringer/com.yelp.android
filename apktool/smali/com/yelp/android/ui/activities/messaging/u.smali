.class Lcom/yelp/android/ui/activities/messaging/u;
.super Ljava/lang/Object;
.source "ConversationsInboxFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/u;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/u;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/u;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    .line 451
    :cond_0
    return-void
.end method
