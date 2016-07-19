.class public Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "CheckInOfferDialog.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/Offer;

.field private b:Landroid/os/CountDownTimer;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/view/View;

.field private l:Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/content/DialogInterface$OnClickListener;

.field private o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Lcom/yelp/android/ui/util/av$a;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 414
    new-instance v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->n:Landroid/content/DialogInterface$OnClickListener;

    .line 432
    new-instance v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$9;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 476
    new-instance v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$10;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->p:Lcom/yelp/android/ui/util/av$a;

    .line 490
    new-instance v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$2;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->q:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->m:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Lcom/yelp/android/serializable/Offer;)Lcom/yelp/android/serializable/Offer;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    const-string/jumbo v2, "offer"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    const-string/jumbo v2, "business_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v2, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v2, "show_discard"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->setArguments(Landroid/os/Bundle;)V

    .line 98
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Lcom/yelp/android/ui/dialogs/TwoButtonDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->l:Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f()V

    .line 270
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.offer_redeemed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "offer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Z)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Z)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/dialogs/TwoButtonDialog;)V
    .locals 1

    .prologue
    .line 329
    new-instance v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$1;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 336
    new-instance v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$3;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 343
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/OfferRedemption;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    if-eqz p1, :cond_2

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 251
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f04001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->p:Lcom/yelp/android/ui/util/av$a;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 254
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    :cond_1
    :goto_0
    return-void

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a()V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0704c1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 279
    const v1, 0x7f07044d

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/OfferRedemption;->i()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Lcom/yelp/android/ui/dialogs/TwoButtonDialog;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/TwoButtonDialog;)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->l:Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 288
    new-instance v1, Lcom/yelp/android/appdata/webrequests/dh;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->o:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/dh;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 290
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/dh;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 291
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v2, 0x7f0704df

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 292
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInOfferRedeem:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "check_in_offer_id"

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "business_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V

    .line 303
    const v0, 0x7f07044c

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 304
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInOfferSave:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "check_in_offer_id"

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->dismiss()V

    .line 306
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 312
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e()V

    .line 316
    new-instance v0, Lcom/yelp/android/ui/util/an;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->a()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->g:Landroid/widget/TextView;

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/util/an;-><init>(JLandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b:Landroid/os/CountDownTimer;

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 322
    return-void
.end method

.method private g()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInOfferView:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->m:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$4;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$5;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->j:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a()V

    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->j:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "dialog_retry_request"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/TwoButtonDialog;)V

    .line 217
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "offer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "dialog_discard_offer"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->l:Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->l:Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->l:Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v4

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DialogCheckInOffer must be called with an offer that has a redemption associated with it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0901b7

    invoke-direct {v5, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 143
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v5, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 145
    const v1, 0x7f030026

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 148
    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->d()I

    move-result v0

    if-le v0, v11, :cond_2

    .line 149
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f080023

    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->d()I

    move-result v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "business_name"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v0, v1, v7, v8}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 163
    :goto_0
    const v0, 0x7f0f011c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v0, 0x7f0f011f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    const v0, 0x7f0f0120

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const v0, 0x7f0f0121

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 171
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :goto_1
    const v0, 0x7f0f0122

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c:Landroid/widget/ImageView;

    .line 177
    const v0, 0x7f0f0127

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0f0126

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->j:Landroid/widget/Button;

    .line 179
    const v0, 0x7f0f0123

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    const v1, 0x7f0f0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->g:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0f0125

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h:Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0f011e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 187
    const v0, 0x7f0f0128

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f0f0129

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0f012a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f:Landroid/widget/TextView;

    .line 191
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "show_discard"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h()V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 197
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b()V

    .line 202
    :cond_1
    :goto_3
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 203
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 204
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 205
    return-object v0

    .line 157
    :cond_2
    const v0, 0x7f0704e2

    new-array v1, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "business_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 173
    :cond_3
    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    move v0, v3

    .line 191
    goto :goto_2

    .line 198
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Z)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 232
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e()V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->m:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 239
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 240
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->dismiss()V

    .line 242
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f()V

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->g()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 227
    return-void
.end method
