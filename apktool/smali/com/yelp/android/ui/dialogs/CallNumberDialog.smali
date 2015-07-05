.class public Lcom/yelp/android/ui/dialogs/CallNumberDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CallNumberDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/CallNumberDialog;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;-><init>()V

    .line 26
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const-string/jumbo v2, "phone.number"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0704fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07010f

    new-instance v2, Lcom/yelp/android/ui/dialogs/b;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/b;-><init>(Lcom/yelp/android/ui/dialogs/CallNumberDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070110

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
