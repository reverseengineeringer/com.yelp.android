.class Lcom/yelp/android/cl/b$2;
.super Ljava/lang/Object;
.source "ConversationMessagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cl/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/ConversationMessage;

.field final synthetic b:Lcom/yelp/android/serializable/e;

.field final synthetic c:Lcom/yelp/android/cl/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/cl/b;Lcom/yelp/android/serializable/ConversationMessage;Lcom/yelp/android/serializable/e;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yelp/android/cl/b$2;->c:Lcom/yelp/android/cl/b;

    iput-object p2, p0, Lcom/yelp/android/cl/b$2;->a:Lcom/yelp/android/serializable/ConversationMessage;

    iput-object p3, p0, Lcom/yelp/android/cl/b$2;->b:Lcom/yelp/android/serializable/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/yelp/android/cl/b$2;->a:Lcom/yelp/android/serializable/ConversationMessage;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ConversationMessage;->e()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/yelp/android/cl/b$2;->b:Lcom/yelp/android/serializable/e;

    invoke-interface {v1}, Lcom/yelp/android/serializable/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/cl/b$2;->c:Lcom/yelp/android/cl/b;

    invoke-static {v1}, Lcom/yelp/android/cl/b;->a(Lcom/yelp/android/cl/b;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
