.class public abstract Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "YelpAlertDialogFragment.java"


# instance fields
.field protected a:Landroid/content/DialogInterface$OnCancelListener;

.field private b:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    if-eqz p0, :cond_0

    .line 24
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 27
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;->a:Landroid/content/DialogInterface$OnCancelListener;

    .line 42
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;->b:Landroid/content/DialogInterface$OnDismissListener;

    .line 46
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, ""

    invoke-super {p0, p1, v0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 53
    :cond_0
    if-eqz p2, :cond_1

    .line 54
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;->b:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;->b:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 72
    :cond_0
    return-void
.end method
