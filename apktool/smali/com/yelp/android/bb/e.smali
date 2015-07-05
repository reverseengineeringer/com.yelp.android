.class Lcom/yelp/android/bb/e;
.super Ljava/lang/Object;
.source "ConversationMessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/bb/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/bb/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/bb/e;->b:Lcom/yelp/android/bb/d;

    iput-object p2, p0, Lcom/yelp/android/bb/e;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/bb/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/bb/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/bb/e;->b:Lcom/yelp/android/bb/d;

    invoke-static {v2}, Lcom/yelp/android/bb/d;->a(Lcom/yelp/android/bb/d;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Conversation;->getReviewId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/bb/e;->b:Lcom/yelp/android/bb/d;

    invoke-static {v3}, Lcom/yelp/android/bb/d;->a(Lcom/yelp/android/bb/d;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Conversation;->getBusinessId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
