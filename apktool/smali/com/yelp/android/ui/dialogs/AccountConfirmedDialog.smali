.class public Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "AccountConfirmedDialog.java"


# instance fields
.field private a:Landroid/content/DialogInterface$OnDismissListener;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 67
    new-instance v0, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a()Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 32
    return-void
.end method

.method public b()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->EmailConfirmed:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->b()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    const v1, 0x7f0f00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 50
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->a:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->a:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 60
    :cond_0
    return-void
.end method
