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
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/FlagContentDialog;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;-><init>()V

    .line 29
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 30
    const-string/jumbo v2, "args_message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v2, "args_title"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->setArguments(Landroid/os/Bundle;)V

    .line 33
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->c:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "args_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "args_title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0300c3

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 45
    const v0, 0x7f0f0300

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07054e

    new-instance v2, Lcom/yelp/android/ui/dialogs/FlagContentDialog$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0706cd

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/UserFeedbackDialog;->onStart()V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->c:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 74
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->c:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagContentDialog;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/dialogs/FlagContentDialog$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/FlagContentDialog$2;-><init>(Lcom/yelp/android/ui/dialogs/FlagContentDialog;)V

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
