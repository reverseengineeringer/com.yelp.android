.class public Lcom/yelp/android/ui/dialogs/AlertDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;
.source "AlertDialogFragment.java"


# instance fields
.field private b:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/AlertDialogFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;-><init>()V

    .line 41
    invoke-static {p0, p1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 43
    if-eqz p2, :cond_0

    .line 44
    const-string/jumbo v2, "button_message"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 90
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 54
    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 58
    if-eqz v3, :cond_1

    .line 59
    const-string/jumbo v0, "title"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string/jumbo v0, "message"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string/jumbo v0, "button_message"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/dialogs/a;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/a;-><init>(Lcom/yelp/android/ui/dialogs/AlertDialogFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    const-string/jumbo v0, "button_message"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method
