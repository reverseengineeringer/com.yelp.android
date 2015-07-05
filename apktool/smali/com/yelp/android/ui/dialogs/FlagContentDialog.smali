.class public Lcom/yelp/android/ui/dialogs/FlagContentDialog;
.super Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;
.source "FlagContentDialog.java"


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/FlagContentDialog;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;-><init>()V

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string/jumbo v2, "args_message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v2, "args_title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->c:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "args_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300ab

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 47
    const v0, 0x7f0c02aa

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07054e

    new-instance v2, Lcom/yelp/android/ui/dialogs/ak;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/ak;-><init>(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070110

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 65
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/yelp/android/appdata/n;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 69
    :cond_0
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->onStart()V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->c:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 79
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->c:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/dialogs/al;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/al;-><init>(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_0
    return-void
.end method
