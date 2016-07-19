.class public Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "UpdatePromptDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/UpdatePrompt;)Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;-><init>()V

    .line 36
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 37
    const-string/jumbo v2, "update_prompt"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UpdatePrompt:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 99
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UpdatePromptDismiss:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 100
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030203

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 50
    const v0, 0x7f0f05c8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "update_prompt"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/UpdatePrompt;

    .line 52
    invoke-virtual {v1}, Lcom/yelp/android/serializable/UpdatePrompt;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 54
    const v0, 0x1020016

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070419

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 56
    const v0, 0x7f0f01f4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment$1;-><init>(Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0f05c9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment$2;-><init>(Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
