.class Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$9;
.super Lcom/yelp/android/database/h$c;
.source "ConversationThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$9;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-direct {p0}, Lcom/yelp/android/database/h$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$9;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    check-cast p1, Lcom/yelp/android/cc/i;

    .line 540
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment$9;->a:Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;->c(Lcom/yelp/android/ui/activities/messaging/ConversationThreadFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/cc/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 542
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 547
    return-void
.end method
