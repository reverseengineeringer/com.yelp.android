.class public Lcom/yelp/android/ui/activities/AddNewBizDialog;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "AddNewBizDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/AddNewBizDialog$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/AddNewBizDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/AddNewBizDialog;)Lcom/yelp/android/ui/activities/AddNewBizDialog$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/activities/AddNewBizDialog;->a:Lcom/yelp/android/ui/activities/AddNewBizDialog$a;

    return-object v0
.end method

.method public static a()Lcom/yelp/android/ui/activities/AddNewBizDialog;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/ui/activities/AddNewBizDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/AddNewBizDialog;-><init>()V

    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/AddNewBizDialog;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method


# virtual methods
.method public b()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckIn:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/AddNewBizDialog;->b()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 35
    check-cast p1, Lcom/yelp/android/ui/activities/AddNewBizDialog$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/AddNewBizDialog;->a:Lcom/yelp/android/ui/activities/AddNewBizDialog$a;

    .line 36
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/AddNewBizDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03005c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    const v1, 0x7f0f01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/AddNewBizDialog$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/AddNewBizDialog$1;-><init>(Lcom/yelp/android/ui/activities/AddNewBizDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f0f01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/AddNewBizDialog$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/AddNewBizDialog$2;-><init>(Lcom/yelp/android/ui/activities/AddNewBizDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/AddNewBizDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 67
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 69
    return-object v1
.end method
