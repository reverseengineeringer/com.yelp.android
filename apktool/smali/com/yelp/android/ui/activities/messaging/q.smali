.class Lcom/yelp/android/ui/activities/messaging/q;
.super Ljava/lang/Object;
.source "ConversationsInboxFragment.java"

# interfaces
.implements Lcom/yelp/android/services/push/j;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/q;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/services/push/h;)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/q;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/q;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z

    .line 235
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/q;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/r;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/r;-><init>(Lcom/yelp/android/ui/activities/messaging/q;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/services/push/h;)Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string/jumbo v0, "ConversationsInboxFragment"

    return-object v0
.end method
