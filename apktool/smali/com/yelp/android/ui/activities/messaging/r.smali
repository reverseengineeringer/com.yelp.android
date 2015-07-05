.class Lcom/yelp/android/ui/activities/messaging/r;
.super Ljava/lang/Object;
.source "ConversationsInboxFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/q;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/q;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/r;->a:Lcom/yelp/android/ui/activities/messaging/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/r;->a:Lcom/yelp/android/ui/activities/messaging/q;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/messaging/q;->a:Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationsInboxFragment;->g()V

    .line 232
    return-void
.end method
