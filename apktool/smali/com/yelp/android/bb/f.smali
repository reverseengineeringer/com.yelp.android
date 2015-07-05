.class Lcom/yelp/android/bb/f;
.super Ljava/lang/Object;
.source "ConversationMessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/ConversationMessage;

.field final synthetic b:Lcom/yelp/android/serializable/bg;

.field final synthetic c:Lcom/yelp/android/bb/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/bb/d;Lcom/yelp/android/serializable/ConversationMessage;Lcom/yelp/android/serializable/bg;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yelp/android/bb/f;->c:Lcom/yelp/android/bb/d;

    iput-object p2, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/serializable/ConversationMessage;

    iput-object p3, p0, Lcom/yelp/android/bb/f;->b:Lcom/yelp/android/serializable/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/yelp/android/bb/f;->a:Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ConversationMessage;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/yelp/android/bb/f;->b:Lcom/yelp/android/serializable/bg;

    invoke-interface {v1}, Lcom/yelp/android/serializable/bg;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/bb/f;->c:Lcom/yelp/android/bb/d;

    invoke-static {v1}, Lcom/yelp/android/bb/d;->a(Lcom/yelp/android/bb/d;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
