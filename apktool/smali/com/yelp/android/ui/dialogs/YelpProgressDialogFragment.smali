.class public Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "YelpProgressDialogFragment.java"


# instance fields
.field private a:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a(II)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(II)Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;-><init>()V

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string/jumbo v2, "loading_string_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    const-string/jumbo v2, "title_string_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a:Landroid/content/DialogInterface$OnCancelListener;

    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 38
    new-instance v2, Lcom/yelp/android/ui/dialogs/d;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/yelp/android/ui/dialogs/d;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "loading_string_id"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "title_string_id"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/dialogs/d;->a(I)Lcom/yelp/android/ui/dialogs/d;

    .line 44
    :cond_0
    if-nez v0, :cond_1

    sget v0, Lcom/yelp/android/co/a$j;->loading:I

    move v1, v0

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/yelp/android/co/a$h;->panel_loading_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 48
    const v0, 0x102000b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/dialogs/d;->a(Landroid/view/View;)Lcom/yelp/android/ui/dialogs/d;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/dialogs/d;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/yelp/android/ui/dialogs/d;

    .line 57
    :goto_1
    invoke-virtual {v2}, Lcom/yelp/android/ui/dialogs/d;->a()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v0

    .line 44
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/dialogs/YelpProgressDialogFragment;->setCancelable(Z)V

    goto :goto_1
.end method
