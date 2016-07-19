.class Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$3;
.super Lcom/yelp/android/database/h$c;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/serializable/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-direct {p0}, Lcom/yelp/android/database/h$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    check-cast p1, Lcom/yelp/android/cc/d;

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/cc/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment$3;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/cc/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 500
    return-void
.end method
