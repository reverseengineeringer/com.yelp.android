.class Lcom/yelp/android/ui/activities/messaging/d;
.super Lcom/yelp/android/database/x;
.source "ComposeMessageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/d;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-direct {p0}, Lcom/yelp/android/database/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/d;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/d;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    check-cast p1, Lcom/yelp/android/ay/m;

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/d;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->b(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/ay/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/d;->a:Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;->c(Lcom/yelp/android/ui/activities/messaging/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/ay/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method
