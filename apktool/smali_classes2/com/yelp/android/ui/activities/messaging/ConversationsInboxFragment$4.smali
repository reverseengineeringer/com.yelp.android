.class Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$4;
.super Ljava/lang/Object;
.source "ConversationsInboxFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->u_()V
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
    .line 458
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$4;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$4;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->a(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/activities/messaging/apimanagers/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/apimanagers/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$4;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->l(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)V

    .line 468
    :cond_0
    return-void
.end method
