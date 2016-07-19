.class Lcom/yelp/android/cl/b$1;
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
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/cl/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/cl/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/cl/b$1;->b:Lcom/yelp/android/cl/b;

    iput-object p2, p0, Lcom/yelp/android/cl/b$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Lcom/yelp/android/cl/b$1;->b:Lcom/yelp/android/cl/b;

    invoke-static {v0}, Lcom/yelp/android/cl/b;->a(Lcom/yelp/android/cl/b;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Conversation;->e()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/yelp/android/cl/b$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/cl/b$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/yelp/android/cl/b$1;->b:Lcom/yelp/android/cl/b;

    invoke-static {v3}, Lcom/yelp/android/cl/b;->a(Lcom/yelp/android/cl/b;)Lcom/yelp/android/serializable/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Conversation;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/cl/b$1;->a:Landroid/content/Context;

    const v1, 0x7f070509

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v1

    .line 80
    iget-object v0, p0, Lcom/yelp/android/cl/b$1;->a:Landroid/content/Context;

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessaging;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0
.end method
