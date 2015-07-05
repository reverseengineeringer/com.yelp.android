.class public Lcom/yelp/android/ui/dialogs/ChoiceDialog;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ChoiceDialog.java"


# instance fields
.field private a:I

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 72
    return-void
.end method

.method public static a(Landroid/content/Intent;)I
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "extra.choices"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private a()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/ui/dialogs/o;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/o;-><init>(Landroid/app/Activity;)V

    .line 66
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->b:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->a:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    const-class v1, Lcom/yelp/android/ui/dialogs/ChoiceDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v1, "extra.title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string/jumbo v1, "extra.choices"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f0f0159

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->setTheme(I)V

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "extra.title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->a:I

    .line 45
    const-string/jumbo v1, "extra.choices"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->b:[Ljava/lang/String;

    .line 46
    if-nez p1, :cond_0

    .line 47
    const/16 v0, 0x2be2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->showDialog(I)V

    .line 49
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 53
    .line 54
    packed-switch p1, :pswitch_data_0

    .line 59
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 56
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/ChoiceDialog;->a()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 54
    nop

    :pswitch_data_0
    .packed-switch 0x2be2
        :pswitch_0
    .end packed-switch
.end method
