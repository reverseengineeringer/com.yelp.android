.class Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;
.super Ljava/lang/Object;
.source "ConversationsInboxFragment.java"

# interfaces
.implements Lcom/yelp/android/services/push/e$a;


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
    .line 221
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/services/push/d$a;)V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;Z)Z

    .line 243
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1$1;-><init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/services/push/d$a;)Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    const-string/jumbo v0, "ConversationsInboxFragment"

    return-object v0
.end method
