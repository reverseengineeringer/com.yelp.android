.class Lcom/yelp/android/ui/activities/bf;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bf;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 581
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bf;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->h(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 587
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bf;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Z)Z

    .line 588
    return-void
.end method
