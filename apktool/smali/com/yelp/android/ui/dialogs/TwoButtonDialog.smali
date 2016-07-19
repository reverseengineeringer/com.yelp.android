.class public Lcom/yelp/android/ui/dialogs/TwoButtonDialog;
.super Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;
.source "TwoButtonDialog.java"


# instance fields
.field private b:Landroid/content/DialogInterface$OnClickListener;

.field private c:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpAlertDialogFragment;-><init>()V

    return-void
.end method

.method public static a(III)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(IIII)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(IIII)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    .line 26
    if-nez p0, :cond_0

    move-object v3, v0

    .line 27
    :goto_0
    if-nez p1, :cond_1

    move-object v2, v0

    .line 28
    :goto_1
    if-nez p2, :cond_2

    move-object v1, v0

    .line 30
    :goto_2
    if-nez p3, :cond_3

    .line 32
    :goto_3
    invoke-static {v3, v2, v1, v0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {v4, p0}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v4, p1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1

    .line 28
    :cond_2
    invoke-virtual {v4, p2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 30
    :cond_3
    invoke-virtual {v4, p3}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;-><init>()V

    .line 38
    invoke-static {p0, p1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 39
    const-string/jumbo v2, "positive_button"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v2, "negative_button"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 66
    return-void
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "negative_button"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "positive_button"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v7/app/d$a;

    move-result-object v0

    .line 54
    if-eqz v2, :cond_0

    .line 55
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/d$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 57
    :cond_0
    if-eqz v3, :cond_1

    .line 58
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v1}, Landroid/support/v7/app/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 61
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method
