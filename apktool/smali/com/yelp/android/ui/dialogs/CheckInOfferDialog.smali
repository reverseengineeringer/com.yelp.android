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

.field private m:Landroid/content/DialogInterface$OnClickListener;

.field private n:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lcom/yelp/android/ui/util/dd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 376
    new-instance v0, Lcom/yelp/android/ui/dialogs/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/k;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->m:Landroid/content/DialogInterface$OnClickListener;

    .line 389
    new-instance v0, Lcom/yelp/android/ui/dialogs/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/l;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->n:Lcom/yelp/android/appdata/webrequests/m;

    .line 424
    new-instance v0, Lcom/yelp/android/ui/dialogs/n;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/n;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->o:Lcom/yelp/android/ui/util/dd;

    return-void
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
    .line 84
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;-><init>()V

    .line 90
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 91
    const-string/jumbo v2, "offer"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 92
    const-string/jumbo v2, "business_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v2, "show_discard"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->setArguments(Landroid/os/Bundle;)V

    .line 96
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

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->j:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f()V

    .line 253
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.offer_redeemed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "offer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
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
    .line 306
    new-instance v0, Lcom/yelp/android/ui/dialogs/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/c;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 312
    new-instance v0, Lcom/yelp/android/ui/dialogs/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/d;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 318
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getRedemption()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/OfferRedemption;->getInstructionText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Offer;->getRedemption()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->getInstructionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_0
    if-eqz p1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 234
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f040014

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->o:Lcom/yelp/android/ui/util/dd;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 237
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 243
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a()V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0704a8

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 262
    const v1, 0x7f070416

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Offer;->getRedemption()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/OfferRedemption;->getDateRedeemed()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
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
    .line 269
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ee;

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->n:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/ee;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 270
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/ee;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 271
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    const v2, 0x7f0704c4

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;I)V

    .line 272
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInOfferRedeem:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "check_in_offer_id"

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Offer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "business_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V

    .line 283
    const v0, 0x7f070415

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 284
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInOfferSave:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "check_in_offer_id"

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Offer;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 285
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->dismiss()V

    .line 286
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
    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 292
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
    .line 295
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e()V

    .line 296
    new-instance v0, Lcom/yelp/android/ui/util/cg;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Offer;->getRedemption()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->getSystemClockExpiration()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->g:Landroid/widget/TextView;

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/ui/util/cg;-><init>(JLandroid/widget/TextView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b:Landroid/os/CountDownTimer;

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 299
    return-void
.end method

.method private g()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->CheckInOfferView:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/dialogs/e;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/e;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/dialogs/f;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/f;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/dialogs/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/g;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->j:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/dialogs/h;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/h;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/Button;
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
    .line 203
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog_retry_request"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/TwoButtonDialog;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "offer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "dialog_discard_offer"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->l:Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->l:Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->l:Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->m:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
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

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getRedemption()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v4

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getRedemption()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "DialogCheckInOffer must be called with an offer that has a redemption associated with it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f014c

    invoke-direct {v5, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 141
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v5, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 143
    const v1, 0x7f03001e

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 146
    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->getTotalCheckIns()I

    move-result v0

    if-le v0, v11, :cond_2

    .line 147
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f0e0021

    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->getTotalCheckIns()I

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

    .line 155
    :goto_0
    const v0, 0x7f0c00d0

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v0, 0x7f0c00d3

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->getDiscountText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v0, 0x7f0c00d4

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->getItemText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v0, 0x7f0c00d5

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->getFinePrint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 163
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_1
    const v0, 0x7f0c00d6

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0c00db

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0c00da

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->j:Landroid/widget/Button;

    .line 171
    const v0, 0x7f0c00d7

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k:Landroid/view/View;

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->g:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0c00d9

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0c00d2

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 179
    const v0, 0x7f0c00dc

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0c00dd

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0c00de

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f:Landroid/widget/TextView;

    .line 183
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

    .line 187
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h()V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b()V

    .line 195
    :cond_1
    :goto_3
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 197
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 198
    return-object v0

    .line 151
    :cond_2
    const v0, 0x7f0704c7

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

    .line 165
    :cond_3
    invoke-virtual {v4}, Lcom/yelp/android/serializable/OfferRedemption;->getFinePrint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    move v0, v3

    .line 183
    goto :goto_2

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->isRedeemed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Z)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 224
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e()V

    .line 225
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->isUsed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a:Lcom/yelp/android/serializable/Offer;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->isRedeemed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f()V

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->g()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 219
    return-void
.end method
