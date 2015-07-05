.class public Lcom/yelp/android/ui/dialogs/FlagMediaDialog;
.super Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;
.source "FlagMediaDialog.java"


# instance fields
.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FlagMediaDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/FlagMediaDialog;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;-><init>()V

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string/jumbo v2, "key_hint"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v2, "key_title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_hint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "key_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v3, 0x7f0300aa

    invoke-static {v0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->b:Landroid/widget/EditText;

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->b:Landroid/widget/EditText;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 44
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070111

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07054e

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 50
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->onStart()V

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagMediaDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    new-instance v1, Lcom/yelp/android/ui/dialogs/am;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/am;-><init>(Lcom/yelp/android/ui/dialogs/FlagMediaDialog;)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_0
    return-void
.end method
