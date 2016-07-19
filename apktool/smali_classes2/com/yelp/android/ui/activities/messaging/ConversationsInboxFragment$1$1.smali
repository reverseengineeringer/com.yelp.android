.class Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1$1;
.super Ljava/lang/Object;
.source "ConversationsInboxFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;->a(Lcom/yelp/android/services/push/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1$1;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1$1;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$1;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->h()V

    .line 240
    return-void
.end method
