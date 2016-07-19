.class public Lcom/yelp/android/ui/activities/CheckInDialog;
.super Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;
.source "CheckInDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/CheckInDialog$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Lcom/yelp/android/appdata/webrequests/ak;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yelp/android/serializable/YelpCheckIn;

.field private f:Z

.field private g:Landroid/widget/CompoundButton;

.field private h:Landroid/widget/CompoundButton;

.field private i:Landroid/widget/CompoundButton;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/yelp/android/ui/activities/CheckInDialog$a;

.field private m:Landroid/content/DialogInterface$OnDismissListener;

.field private final n:Landroid/view/View$OnClickListener;

.field private o:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/yelp/android/ui/activities/support/b$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;-><init>()V

    .line 330
    new-instance v0, Lcom/yelp/android/ui/activities/CheckInDialog$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/CheckInDialog$7;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->n:Landroid/view/View$OnClickListener;

    .line 357
    new-instance v0, Lcom/yelp/android/ui/activities/CheckInDialog$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/CheckInDialog$8;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->o:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 439
    new-instance v0, Lcom/yelp/android/ui/activities/CheckInDialog$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/CheckInDialog$9;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->p:Lcom/yelp/android/ui/activities/support/b$e;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->e:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Lcom/yelp/android/ui/activities/CheckInDialog;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;-><init>()V

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string/jumbo v2, "business"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    const-string/jumbo v2, "comment_text"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->setArguments(Landroid/os/Bundle;)V

    .line 93
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/CheckInDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/CheckInDialog;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/CheckInDialog;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->g:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->h:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->e:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/CheckInDialog$a;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->l:Lcom/yelp/android/ui/activities/CheckInDialog$a;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/b$e;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->p:Lcom/yelp/android/ui/activities/support/b$e;

    return-object v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckIn:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->m:Landroid/content/DialogInterface$OnDismissListener;

    .line 328
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/CheckInDialog$a;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->l:Lcom/yelp/android/ui/activities/CheckInDialog$a;

    .line 324
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 313
    const/4 v0, 0x0

    .line 314
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_0
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ak;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->o:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v1, v2, v0, v3}, Lcom/yelp/android/appdata/webrequests/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Lcom/yelp/android/appdata/webrequests/ak;

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Lcom/yelp/android/appdata/webrequests/ak;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ak;->a([Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d()Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    const v1, 0x7f0701c1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(I)V

    .line 320
    return-void
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->a()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    const-string/jumbo v0, "business_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 282
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "retry_shares"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->d:Ljava/util/ArrayList;

    .line 288
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->c()V

    .line 290
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
    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 104
    const v0, 0x7f0f0117

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->k:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f0f0118

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->g:Landroid/widget/CompoundButton;

    .line 106
    const v0, 0x7f0f011a

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->h:Landroid/widget/CompoundButton;

    .line 107
    const v0, 0x7f0f0119

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/CompoundButton;

    .line 108
    const v0, 0x7f0f0116

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/EditText;

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "comment_text"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/CheckInDialog$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/CheckInDialog$1;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 128
    new-instance v0, Lcom/yelp/android/ui/activities/CheckInDialog$2;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c0017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v5, 0x7f0e002c

    const v6, 0x7f0e00fe

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/CheckInDialog$2;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;Landroid/widget/TextView;IIII)V

    .line 148
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/EditText;

    new-instance v2, Lcom/yelp/android/ui/activities/CheckInDialog$3;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/CheckInDialog$3;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 165
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/yelp/android/ui/activities/CheckInDialog$4;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/CheckInDialog$4;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/ui/util/al;)V

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->h:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/yelp/android/ui/activities/CheckInDialog$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/CheckInDialog$5;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->g:Landroid/widget/CompoundButton;

    new-instance v1, Lcom/yelp/android/ui/activities/CheckInDialog$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/CheckInDialog$6;-><init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 201
    if-eqz p1, :cond_1

    .line 202
    const-string/jumbo v0, "comment_text"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->j:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const-string/jumbo v0, "check_in"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->e:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "share_types"

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->d:Ljava/util/ArrayList;

    .line 209
    const-string/jumbo v0, "have_sent_expanded_iri"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->f:Z

    .line 215
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 217
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    const v0, 0x7f0f0113

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 221
    const v0, 0x7f0f0114

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v0, 0x7f0f0115

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const v0, 0x7f0f011b

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 232
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v3

    iget-object v5, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->g:Landroid/widget/CompoundButton;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->h:Landroid/widget/CompoundButton;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->i:Landroid/widget/CompoundButton;

    invoke-static/range {v2 .. v7}, Lcom/yelp/android/util/p;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/User;ZLandroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)V

    .line 240
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 242
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 244
    return-object v0

    .line 212
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->d:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->m:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->m:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onPause()V

    .line 256
    const-string/jumbo v0, "check_in"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Lcom/yelp/android/appdata/webrequests/ak;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 249
    invoke-super {p0}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onResume()V

    .line 250
    const-string/jumbo v0, "check_in"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Lcom/yelp/android/appdata/webrequests/ak;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->o:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ak;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->c:Lcom/yelp/android/appdata/webrequests/ak;

    .line 251
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/yelp/android/ui/dialogs/YelpBaseDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    const-string/jumbo v0, "comment_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 263
    const-string/jumbo v0, "check_in"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->e:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 264
    const-string/jumbo v0, "have_sent_expanded_iri"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    const-string/jumbo v0, "share_types"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog;->d:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;

    .line 266
    return-void
.end method
