.class public Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$a;
    }
.end annotation


# instance fields
.field a:Landroid/database/DataSetObserver;

.field private b:Lcom/yelp/android/serializable/YelpBusinessReview;

.field private c:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$a;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/yelp/android/ui/activities/addphoto/a;

.field private g:Landroid/widget/ToggleButton;

.field private i:Landroid/widget/ToggleButton;

.field private j:Landroid/widget/ToggleButton;

.field private k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Lcom/yelp/android/ui/activities/reviewpage/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 518
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$8;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;-><init>()V

    .line 89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 90
    const-string/jumbo v2, "business_review"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v2, "business_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "business_country"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 5

    .prologue
    .line 244
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->X()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    const v0, 0x7f0f0100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 246
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->X()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessOwnerReply;->c()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200c6

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 249
    const v0, 0x7f0f0103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 250
    const v1, 0x7f070476

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->X()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/BusinessOwnerReply;->d()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const v0, 0x7f0f0102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 257
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->X()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessOwnerReply;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const v1, 0x7f0f0101

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 262
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 264
    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$4;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 276
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    const v0, 0x7f0f00ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 281
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 10

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->m()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v8

    .line 357
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v9

    .line 358
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v5

    .line 359
    invoke-virtual {p3}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v6

    .line 360
    if-eqz v5, :cond_1

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 361
    :goto_0
    const v3, 0x7f0f0106

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 362
    if-eqz v0, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    if-nez v0, :cond_0

    .line 364
    const v0, 0x7f0f0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 365
    if-eqz v5, :cond_3

    .line 366
    const v0, 0x7f0f0109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 368
    const v0, 0x7f070611

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 369
    const v0, 0x7f0f0108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 371
    const v3, 0x7f070612

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 360
    goto :goto_0

    :cond_2
    move v3, v2

    .line 362
    goto :goto_1

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Landroid/widget/ToggleButton;

    const v2, 0x7f070225

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c()I

    move-result v3

    invoke-virtual {v8}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c()Z

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/ToggleButton;IIZZZ)V

    .line 387
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->i:Landroid/widget/ToggleButton;

    const v2, 0x7f070301

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b()I

    move-result v3

    invoke-virtual {v8}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b()Z

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/ToggleButton;IIZZZ)V

    .line 394
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->j:Landroid/widget/ToggleButton;

    const v2, 0x7f070630

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a()I

    move-result v3

    invoke-virtual {v8}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a()Z

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/ToggleButton;IIZZZ)V

    .line 401
    const v0, 0x7f070613

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 286
    const v0, 0x7f0703d4

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 287
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 288
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 289
    return-void
.end method

.method private a(Landroid/widget/ToggleButton;IIZZZ)V
    .locals 7

    .prologue
    .line 413
    if-eqz p4, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 414
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 416
    add-int/lit8 v1, p3, 0x1

    .line 418
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 419
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080030

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 424
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080030

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    add-int/lit8 v5, p3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 433
    if-nez p5, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 434
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    if-eqz p6, :cond_3

    .line 436
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$a;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 458
    :cond_1
    :goto_1
    return-void

    .line 433
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 439
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 440
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$6;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)Lcom/yelp/android/ui/activities/addphoto/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->f:Lcom/yelp/android/ui/activities/addphoto/a;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 197
    const-string/jumbo v0, "com.yelp.android.media.update"

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$2;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 224
    const-string/jumbo v0, "com.yelp.android.review.translate"

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$3;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 241
    return-void
.end method

.method private b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 298
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->T()Ljava/util/List;

    move-result-object v2

    .line 299
    const v0, 0x7f0f0104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 301
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 302
    const v1, 0x7f0f0105

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 304
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    const v4, 0x7f080022

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/PreviousReview;

    .line 311
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03014a

    invoke-virtual {v2, v3, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 317
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    const v2, 0x7f0f0464

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 319
    const v3, 0x7f0f03cf

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 320
    const v4, 0x7f0f0465

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 322
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PreviousReview;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PreviousReview;->e()I

    move-result v2

    int-to-double v8, v2

    invoke-static {v3, v8, v9}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 324
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PreviousReview;->l()Ljava/util/Date;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-static {p2, v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/serializable/PreviousReview;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    .line 329
    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 330
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$5;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 351
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    :cond_1
    return-void
.end method

.method private b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/co;)V
    .locals 2

    .prologue
    .line 462
    const v0, 0x7f0f010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->l:Landroid/view/View;

    .line 463
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->l:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$7;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$7;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private b(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 292
    const v0, 0x7f07036e

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 293
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 295
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 491
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 492
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->G()Lcom/yelp/android/serializable/TranslatedReview;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATING:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 499
    :cond_0
    :goto_0
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/e;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/reviewpage/e;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/e;

    .line 500
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/e;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Ljava/util/List;)V

    .line 503
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setContents(Ljava/util/List;)V

    .line 504
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setState(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)V

    .line 505
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/e;->a(Landroid/view/View;Landroid/view/View;)V

    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/e;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 507
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;

    .line 508
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->h:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 509
    return-void

    .line 493
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    goto :goto_0
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 160
    const v0, 0x7f0f00fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    .line 161
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/c$a;-><init>(Landroid/view/View;Z)V

    .line 162
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->h:Landroid/widget/TextView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 164
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 165
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    const v1, 0x7f0f0445

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 182
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 183
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0, p1, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/co;)V

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0, p1, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/co;)V

    .line 186
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c()V

    .line 187
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c()V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 527
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->e:Landroid/widget/LinearLayout;

    .line 528
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 529
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->Q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v2, v0, v3}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Ljava/lang/String;)Lcom/yelp/android/ui/activities/addphoto/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->f:Lcom/yelp/android/ui/activities/addphoto/a;

    .line 538
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->k()Ljava/util/List;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->f:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Ljava/util/List;)V

    .line 540
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->f:Lcom/yelp/android/ui/activities/addphoto/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->U()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/addphoto/a;->a_(Ljava/util/List;)V

    .line 541
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->f:Lcom/yelp/android/ui/activities/addphoto/a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->R()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/addphoto/a;->b(Ljava/util/List;)V

    .line 542
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->f:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/addphoto/a;->b(I)V

    .line 543
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->f:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->notifyDataSetChanged()V

    .line 547
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->f:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/addphoto/a;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->f:Lcom/yelp/android/ui/activities/addphoto/a;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v4, v3}, Lcom/yelp/android/ui/activities/addphoto/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 547
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 550
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/co;)V

    .line 194
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$a;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$a;

    .line 139
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b()V

    .line 110
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 120
    packed-switch p1, :pswitch_data_0

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    :goto_0
    return-void

    .line 122
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$a;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$a;->a()V

    .line 135
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    const-string/jumbo v0, "business_review"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 103
    const-string/jumbo v0, "business_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->d:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 144
    const v0, 0x7f030022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 146
    const v0, 0x7f0f010c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Landroid/widget/ToggleButton;

    .line 147
    const v0, 0x7f0f010b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->i:Landroid/widget/ToggleButton;

    .line 148
    const v0, 0x7f0f010a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->j:Landroid/widget/ToggleButton;

    .line 149
    const v0, 0x7f0f0448

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    .line 151
    const v0, 0x7f0f00fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c(Landroid/view/View;)V

    .line 153
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->d(Landroid/view/View;)V

    .line 154
    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDetach()V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/e;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/e;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 116
    return-void
.end method
