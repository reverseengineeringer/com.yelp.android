.class Lcom/yelp/android/ui/activities/messaging/v;
.super Ljava/lang/Object;
.source "ConversationsInboxFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;I)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/v;->b:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    iput p2, p0, Lcom/yelp/android/ui/activities/messaging/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/v;->b:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g(Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;)Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/messaging/v;->a:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    .line 488
    return-void
.end method
