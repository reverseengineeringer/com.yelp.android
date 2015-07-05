.class public Lcom/yelp/android/ui/activities/CheckInDialog;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "CheckInDialog.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Lcom/yelp/android/appdata/webrequests/ak;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/serializable/YelpCheckIn;

.field private e:Landroid/widget/CompoundButton;

.field private f:Landroid/widget/CompoundButton;

.field private g:Landroid/widget/CompoundButton;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/yelp/android/ui/activities/ew;

.field private l:Landroid/content/DialogInterface$OnDismissListener;

.field private final m:Landroid/view/View$OnClickListener;

.field private final n:Landroid/view/View$OnClickListener;

.field private o:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/yelp/android/ui/activities/support/o;

.field private final q:Landroid/content/DialogInterface$OnClickListener;

.field private final r:Landroid/content/DialogInterface$OnClickListener;

.field private final s:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 320
    new-instance v0, Lcom/yelp/android/ui/activities/es;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/es;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->m:Landroid/view/View$OnClickListener;

    .line 340
    new-instance v0, Lcom/yelp/android/ui/activities/et;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/et;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->n:Landroid/view/View$OnClickListener;

    .line 352
    new-instance v0, Lcom/yelp/android/ui/activities/eu;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/eu;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->o:Lcom/yelp/android/appdata/webrequests/j;

    .line 425
    new-instance v0, Lcom/yelp/android/ui/activities/ev;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ev;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->p:Lcom/yelp/android/ui/activities/support/o;

    .line 439
    new-instance v0, Lcom/yelp/android/ui/activities/el;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/el;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->q:Landroid/content/DialogInterface$OnClickListener;

    .line 448
    new-instance v0, Lcom/yelp/android/ui/activities/em;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/em;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 456
    new-instance v0, Lcom/yelp/android/ui/activities/en;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/en;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->s:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->g:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->d:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/CheckInDialog;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;-><init>()V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    const-string/jumbo v2, "business"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->setArguments(Landroid/os/Bundle;)V

    .line 99
    return-object v0
.end method

.method private a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/yelp/android/ui/activities/ActivityRetryCheckInShare;

    invoke-static {v0, p1, p2, v1}, Lcom/yelp/android/util/z;->a(Landroid/content/Context;Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/util/List;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_0

    .line 313
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->startActivityForResult(Landroid/content/Intent;I)V

    .line 314
    const/4 v0, 0x1

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->e:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->f:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/ew;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->k:Lcom/yelp/android/ui/activities/ew;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->q:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->r:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->s:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/o;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->p:Lcom/yelp/android/ui/activities/support/o;

    return-object v0
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckIn:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->l:Landroid/content/DialogInterface$OnDismissListener;

    .line 298
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/ew;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->k:Lcom/yelp/android/ui/activities/ew;

    .line 294
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 283
    const/4 v0, 0x0

    .line 284
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    :cond_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ak;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->o:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v1, v2, v0, v3}, Lcom/yelp/android/appdata/webrequests/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/appdata/webrequests/ak;

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/appdata/webrequests/ak;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ak;->executeWithLocation([Ljava/lang/Object;)V

    .line 289
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    const v1, 0x7f07013f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(I)V

    .line 290
    return-void
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->a()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    const-string/jumbo v0, "business_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 258
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 259
    new-instance v0, Ljava/util/LinkedList;

    const-string/jumbo v1, "yelp:retry_shares"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/f;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Ljava/util/LinkedList;

    .line 262
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->b()V

    .line 264
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "get_notifications"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->r:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 112
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->q:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->s:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 125
    const v0, 0x7f0c00cb

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f0c00c9

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->h:Landroid/widget/Button;

    .line 127
    const v0, 0x7f0c00cc

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->e:Landroid/widget/CompoundButton;

    .line 128
    const v0, 0x7f0c00ce

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->f:Landroid/widget/CompoundButton;

    .line 129
    const v0, 0x7f0c00cd

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->g:Landroid/widget/CompoundButton;

    .line 130
    const v0, 0x7f0c00ca

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/EditText;

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/ek;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ek;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 146
    new-instance v0, Lcom/yelp/android/ui/activities/eo;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d000f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v5, 0x7f0a0010

    const v6, 0x7f0a00b2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/eo;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;Landroid/widget/TextView;IIII)V

    .line 159
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->g:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/yelp/android/ui/activities/ep;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/ep;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/ui/util/ce;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->f:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/yelp/android/ui/activities/eq;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/eq;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->e:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/yelp/android/ui/activities/er;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/er;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/EditText;

    const-string/jumbo v1, "comment_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    const-string/jumbo v0, "check_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->d:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 194
    new-instance v0, Ljava/util/LinkedList;

    const-string/jumbo v1, "share_types"

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/yelp/android/util/f;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Ljava/util/LinkedList;

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 202
    const v0, 0x7f0c00c6

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 203
    const v0, 0x7f0c00c7

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    const v0, 0x7f0c00c8

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getAddressForBusinessSearchResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const v0, 0x7f0c00cf

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->e:Landroid/widget/CompoundButton;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->f:Landroid/widget/CompoundButton;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->g:Landroid/widget/CompoundButton;

    invoke-static {v8, v0, v1, v2, v3}, Lcom/yelp/android/util/z;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Landroid/content/SharedPreferences;Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V

    .line 217
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 218
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 219
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 221
    return-object v0

    .line 197
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Ljava/util/LinkedList;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->l:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->l:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 251
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onPause()V

    .line 233
    const-string/jumbo v0, "check_in"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/appdata/webrequests/ak;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 234
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onResume()V

    .line 227
    const-string/jumbo v0, "check_in"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/appdata/webrequests/ak;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->o:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ak;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/appdata/webrequests/ak;

    .line 228
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 239
    const-string/jumbo v0, "comment_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 240
    const-string/jumbo v0, "check_in"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->d:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 241
    const-string/jumbo v0, "share_types"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Ljava/util/LinkedList;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/f;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;

    .line 242
    return-void
.end method
