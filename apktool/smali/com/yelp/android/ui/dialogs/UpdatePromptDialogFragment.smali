.class public Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "UpdatePromptDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/UpdatePrompt;)Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;-><init>()V

    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string/jumbo v2, "update_prompt"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UpdatePrompt:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 88
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UpdatePromptDismiss:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 89
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030189

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 51
    const v0, 0x7f0c04c2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "update_prompt"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/UpdatePrompt;

    .line 53
    invoke-virtual {v1}, Lcom/yelp/android/serializable/UpdatePrompt;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 55
    const v0, 0x1020016

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0703e6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    const v0, 0x7f0c01c4

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/bj;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/bj;-><init>(Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v0, 0x7f0c04c3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/bk;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/bk;-><init>(Lcom/yelp/android/ui/dialogs/UpdatePromptDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
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
