.class public Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "YelpProgressDialogFragment.java"


# instance fields
.field private a:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;
    .locals 3

    .prologue
    .line 17
    new-instance v0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;-><init>()V

    .line 18
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 19
    const-string/jumbo v2, "loading_string_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 21
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a:Landroid/content/DialogInterface$OnCancelListener;

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 26
    new-instance v1, Lcom/yelp/android/ui/dialogs/bn;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/dialogs/bn;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "loading_string_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 30
    if-nez v0, :cond_0

    sget v0, Lcom/yelp/android/bf/k;->loading:I

    .line 31
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 33
    return-object v1
.end method
