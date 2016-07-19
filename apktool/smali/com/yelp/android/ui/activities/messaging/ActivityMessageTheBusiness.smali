.class public Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMessageTheBusiness.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/cc/c;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/EditText;

.field private i:Lcom/yelp/android/appdata/webrequests/messaging/k;

.field private j:Lcom/yelp/android/appdata/webrequests/messaging/l;

.field private k:Z

.field private l:Z

.field private m:Landroid/text/TextWatcher;

.field private final n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

.field private q:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->k:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->l:Z

    .line 299
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$1;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->m:Landroid/text/TextWatcher;

    .line 324
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$2;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 375
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$3;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 391
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$4;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->p:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    .line 401
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$5;-><init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->q:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    .line 418
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->l:Z

    return p1
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 99
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_from_search_action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->g:Ljava/lang/String;

    return-object p1
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->k:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const v0, 0x7f07031e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->d()V

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->e()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->f:Z

    return p1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 253
    const v0, 0x7f070395

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x418

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->startActivityForResult(Landroid/content/Intent;I)V

    .line 256
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->g()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Landroid/text/TextWatcher;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->m:Landroid/text/TextWatcher;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->j:Lcom/yelp/android/appdata/webrequests/messaging/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->j:Lcom/yelp/android/appdata/webrequests/messaging/l;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/l;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->n:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/messaging/l;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->j:Lcom/yelp/android/appdata/webrequests/messaging/l;

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->j:Lcom/yelp/android/appdata/webrequests/messaging/l;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/l;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 268
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->enableLoading()V

    .line 270
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 271
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c:Z

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchRequestAQuoteSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->i:Lcom/yelp/android/appdata/webrequests/messaging/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->i:Lcom/yelp/android/appdata/webrequests/messaging/k;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/k;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/k;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/messaging/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->i:Lcom/yelp/android/appdata/webrequests/messaging/k;

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->i:Lcom/yelp/android/appdata/webrequests/messaging/k;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/k;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)Lcom/yelp/android/appdata/webrequests/messaging/l;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->j:Lcom/yelp/android/appdata/webrequests/messaging/l;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->e:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->f:Z

    if-eqz v0, :cond_2

    const v0, 0x7f02025f

    :goto_0
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 297
    :cond_1
    return-void

    .line 291
    :cond_2
    const v0, 0x7f0203f9

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->h:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a:Lcom/yelp/android/cc/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 221
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a:Lcom/yelp/android/cc/c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, p1}, Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/h$b;)V

    .line 210
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;)V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a:Lcom/yelp/android/cc/c;

    new-instance v1, Lcom/yelp/android/cc/k;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/yelp/android/cc/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/cc/k;Lcom/yelp/android/database/h$b;)V

    .line 215
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessNewMessage:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 192
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 193
    if-ne p2, v1, :cond_1

    const/16 v0, 0x418

    if-ne p1, v0, :cond_1

    .line 194
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->e()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/16 v0, 0x40b

    if-ne p1, v0, :cond_0

    .line 196
    invoke-virtual {p0, v1, p3}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c:Z

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0, p3}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->startActivity(Landroid/content/Intent;)V

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a()V

    .line 204
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 225
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 226
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessLeave:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 227
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_from_search_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c:Z

    .line 107
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->h()Lcom/yelp/android/cc/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a:Lcom/yelp/android/cc/c;

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f0300f5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->setContentView(I)V

    .line 111
    const v0, 0x7f0f037e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->h:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    const v0, 0x7f0f037d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->e:Landroid/widget/TextView;

    .line 115
    if-nez p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->p:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;)V

    .line 117
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->f()V

    .line 126
    :goto_0
    return-void

    .line 119
    :cond_0
    const-string/jumbo v0, "saved_blocked_by_business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->k:Z

    .line 120
    const-string/jumbo v0, "saved_placeholder_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->d:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, "response_time_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->g:Ljava/lang/String;

    .line 122
    const-string/jumbo v0, "show_warning_icon"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->f:Z

    .line 123
    const-string/jumbo v0, "is_first_message_change"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->l:Z

    .line 124
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->g()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100019

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 187
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 175
    :sswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->finish()V

    .line 176
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessLeave:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 179
    :sswitch_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessTapSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 180
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c:Z

    if-eqz v1, :cond_0

    .line 181
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchRequestAQuoteTapSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c()V

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f0614 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 147
    const-string/jumbo v0, "info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->i:Lcom/yelp/android/appdata/webrequests/messaging/k;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 148
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->q:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a(Ljava/lang/String;Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;)V

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 166
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 167
    const v0, 0x7f0f0614

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->k:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 168
    return v1

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 141
    const-string/jumbo v0, "info_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->i:Lcom/yelp/android/appdata/webrequests/messaging/k;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/messaging/k;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->i:Lcom/yelp/android/appdata/webrequests/messaging/k;

    .line 142
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string/jumbo v0, "saved_blocked_by_business"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    const-string/jumbo v0, "response_time_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string/jumbo v0, "saved_placeholder_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v0, "show_warning_icon"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    const-string/jumbo v0, "is_first_message_change"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 136
    return-void
.end method
