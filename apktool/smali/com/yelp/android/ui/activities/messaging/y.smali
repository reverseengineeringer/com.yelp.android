.class Lcom/yelp/android/ui/activities/messaging/y;
.super Lcom/yelp/android/database/x;
.source "MessageTheBusinessFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/y;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    invoke-direct {p0}, Lcom/yelp/android/database/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/y;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Lcom/yelp/android/ay/t;

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/y;->a:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;->a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/ay/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method
