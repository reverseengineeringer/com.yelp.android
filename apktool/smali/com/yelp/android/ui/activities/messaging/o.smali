.class Lcom/yelp/android/ui/activities/messaging/o;
.super Lcom/yelp/android/database/x;
.source "ConversationThreadFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/o;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {p0}, Lcom/yelp/android/database/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/o;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    check-cast p1, Lcom/yelp/android/ay/r;

    .line 495
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/o;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/ay/r;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method
