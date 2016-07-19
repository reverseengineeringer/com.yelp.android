.class Lcom/yelp/android/cl/c$1;
.super Ljava/lang/Object;
.source "ConversationsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cl/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Conversation;

.field final synthetic b:Lcom/yelp/android/cl/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/cl/c;Lcom/yelp/android/serializable/Conversation;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yelp/android/cl/c$1;->b:Lcom/yelp/android/cl/c;

    iput-object p2, p0, Lcom/yelp/android/cl/c$1;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/yelp/android/cl/c$1;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->k()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/yelp/android/cl/c$1;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->a()Lcom/yelp/android/serializable/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/serializable/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/cl/c$1;->a:Lcom/yelp/android/serializable/Conversation;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Conversation;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
