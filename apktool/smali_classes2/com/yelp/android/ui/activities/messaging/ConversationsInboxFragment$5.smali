.class Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$5;
.super Ljava/lang/Object;
.source "ConversationsInboxFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;I)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$5;->b:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    iput p2, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$5;->b:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment$5;->a:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    .line 506
    return-void
.end method
