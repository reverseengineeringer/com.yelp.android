.class public Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "ReservationSearchDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;

.field private b:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 127
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/EventIri;)Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string/jumbo v1, "SEND_ON_CANCEL"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 41
    new-instance v1, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;-><init>()V

    .line 42
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 125
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->a()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->a:Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$a;

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->c:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "SEARCH_WIDGET_CONTROLLER"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a()Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    const-string/jumbo v2, "SEARCH_WIDGET_CONTROLLER"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 60
    :cond_0
    if-eqz p1, :cond_1

    .line 61
    const-string/jumbo v0, "saved_search_term"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->c:Ljava/lang/String;

    .line 63
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "SEND_ON_CANCEL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yelp/android/analytics/iris/EventIri;

    .line 72
    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;-><init>(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->b:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->e()Landroid/support/v7/app/d$a;

    move-result-object v7

    .line 76
    const v0, 0x7f07054d

    invoke-virtual {v7, v0}, Landroid/support/v7/app/d$a;->a(I)Landroid/support/v7/app/d$a;

    move-result-object v0

    sget v2, Lcom/yelp/android/appdata/n;->b:I

    sget v3, Lcom/yelp/android/appdata/n;->b:I

    sget v4, Lcom/yelp/android/appdata/n;->b:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/d$a;->a(Landroid/view/View;IIII)Landroid/support/v7/app/d$a;

    move-result-object v0

    const v1, 0x7f070520

    new-instance v2, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$2;-><init>(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    move-result-object v0

    const v1, 0x7f0706cd

    new-instance v2, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$1;

    invoke-direct {v2, p0, v6}, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment$1;-><init>(Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 102
    invoke-virtual {v7}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    const-string/jumbo v0, "saved_search_term"

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/ReservationSearchDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
