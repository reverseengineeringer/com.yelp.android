.class Lcom/yelp/android/bb/i;
.super Ljava/lang/Object;
.source "ConversationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Conversation;

.field final synthetic b:Lcom/yelp/android/bb/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/bb/h;Lcom/yelp/android/serializable/Conversation;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/yelp/android/bb/i;->b:Lcom/yelp/android/bb/h;

    iput-object p2, p0, Lcom/yelp/android/bb/i;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/yelp/android/bb/i;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/yelp/android/bb/i;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->getOtherUser()Lcom/yelp/android/serializable/bg;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/serializable/bg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/bb/i;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
