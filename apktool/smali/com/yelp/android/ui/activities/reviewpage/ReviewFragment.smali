.class public Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "ReviewFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/database/DataSetObserver;

.field private b:Lcom/yelp/android/serializable/YelpBusinessReview;

.field private c:Lcom/yelp/android/ui/activities/reviewpage/av;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/LinearLayout;

.field private g:Lcom/yelp/android/ui/activities/addphoto/i;

.field private h:Landroid/widget/ToggleButton;

.field private i:Landroid/widget/ToggleButton;

.field private j:Landroid/widget/ToggleButton;

.field private k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Lcom/yelp/android/ui/activities/reviewpage/bi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 449
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/au;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/au;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;-><init>()V

    .line 86
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string/jumbo v2, "review.extra"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v2, "business_name"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 5

    .prologue
    .line 237
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getBusinessOwnerReply()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    const v0, 0x7f0c00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 239
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getBusinessOwnerReply()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessOwnerReply;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009b

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 242
    const v0, 0x7f0c00b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 243
    const v1, 0x7f070451

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getBusinessOwnerReply()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/BusinessOwnerReply;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const v0, 0x7f0c00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getBusinessOwnerReply()Lcom/yelp/android/serializable/BusinessOwnerReply;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/BusinessOwnerReply;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    const v1, 0x7f0c00b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 252
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 254
    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/aq;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/aq;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 265
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    const v0, 0x7f0c00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 270
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/dc;)V
    .locals 10

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v8

    .line 328
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v9

    .line 329
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v5

    .line 330
    invoke-virtual {p3}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v6

    .line 331
    if-eqz v5, :cond_1

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 332
    :goto_0
    const v3, 0x7f0c00b9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 333
    if-eqz v0, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 334
    if-nez v0, :cond_0

    .line 335
    const v0, 0x7f0c00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 336
    if-eqz v5, :cond_3

    .line 337
    const v0, 0x7f0c00bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 339
    const v0, 0x7f070625

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    .line 340
    const v0, 0x7f0c00bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    const v3, 0x7f070626

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getUsefulVotes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getFunnyVotes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getCoolVotes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 331
    goto :goto_0

    :cond_2
    move v3, v2

    .line 333
    goto :goto_1

    .line 349
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->h:Landroid/widget/ToggleButton;

    const v2, 0x7f0701d8

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getCoolVotes()I

    move-result v3

    invoke-virtual {v8}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->isVotedCool()Z

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/ToggleButton;IIZZZ)V

    .line 351
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->i:Landroid/widget/ToggleButton;

    const v2, 0x7f0702b5

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getFunnyVotes()I

    move-result v3

    invoke-virtual {v8}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->isVotedFunny()Z

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/ToggleButton;IIZZZ)V

    .line 353
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->j:Landroid/widget/ToggleButton;

    const v2, 0x7f070653

    invoke-virtual {v9}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getUsefulVotes()I

    move-result v3

    invoke-virtual {v8}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->isVotedUseful()Z

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/ToggleButton;IIZZZ)V

    .line 355
    const v0, 0x7f070628

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 275
    const v0, 0x7f070396

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 276
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 277
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 278
    return-void
.end method

.method private a(Landroid/widget/ToggleButton;IIZZZ)V
    .locals 7

    .prologue
    .line 363
    if-eqz p4, :cond_0

    add-int/lit8 p3, p3, -0x1

    .line 364
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    add-int/lit8 v1, p3, 0x1

    .line 368
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 369
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002d

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

    .line 371
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002d

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

    .line 373
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 374
    if-nez p5, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 375
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    if-eqz p6, :cond_3

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c:Lcom/yelp/android/ui/activities/reviewpage/av;

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 395
    :cond_1
    :goto_1
    return-void

    .line 374
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 380
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 381
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/as;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/as;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)Lcom/yelp/android/ui/activities/addphoto/i;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Lcom/yelp/android/ui/activities/addphoto/i;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 191
    const-string/jumbo v0, "com.yelp.android.media.update"

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ao;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ao;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 217
    const-string/jumbo v0, "com.yelp.android.review.translate"

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ap;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ap;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 234
    return-void
.end method

.method private b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 287
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getPreviousReviews()Ljava/util/List;

    move-result-object v2

    .line 288
    const v0, 0x7f0c00b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 290
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 291
    const v1, 0x7f0c00b8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 292
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    const v4, 0x7f0e0020

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/PreviousReview;

    .line 296
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ee

    invoke-virtual {v2, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 298
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    const v2, 0x7f0c0387

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 300
    const v3, 0x7f0c0334

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 301
    const v4, 0x7f0c0388

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 303
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PreviousReview;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PreviousReview;->getRating()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/ImageView;F)V

    .line 305
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PreviousReview;->getDateModified()Ljava/util/Date;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PreviousReview;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 308
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ar;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ar;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 322
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    :cond_1
    return-void
.end method

.method private b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/dc;)V
    .locals 2

    .prologue
    .line 399
    const v0, 0x7f0c00c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->l:Landroid/view/View;

    .line 400
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->l:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/at;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/activities/reviewpage/at;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Lcom/yelp/android/serializable/YelpBusinessReview;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private b(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 281
    const v0, 0x7f070337

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 282
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 284
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 424
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->ORIGINAL:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 425
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->shouldDisplayTranslation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTranslatedText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATING:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    .line 430
    :cond_0
    :goto_0
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/reviewpage/bi;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 431
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/bi;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Ljava/util/List;)V

    .line 434
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setContents(Ljava/util/List;)V

    .line 435
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;->setState(Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;)V

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/bi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Landroid/view/View;Landroid/view/View;)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/bi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/bi;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/am;

    .line 439
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->f:Landroid/widget/TextView;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 440
    return-void

    .line 426
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;->TRANSLATED:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate$TranslateState;

    goto :goto_0
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 156
    const v0, 0x7f0c00b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    .line 157
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/am;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/am;-><init>(Landroid/view/View;Z)V

    .line 158
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->f:Landroid/widget/TextView;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 160
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 161
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->m:Landroid/view/View;

    const v1, 0x7f0c0368

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 165
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/an;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/an;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 176
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0, p1, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 177
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0, p1, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/dc;)V

    .line 178
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-direct {p0, p1, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/dc;)V

    .line 180
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c()V

    .line 181
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c()V

    return-void
.end method

.method private d(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 457
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->e:Landroid/widget/LinearLayout;

    .line 458
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 459
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->getBusinessId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v2, v0, v3}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Ljava/lang/String;)Lcom/yelp/android/ui/activities/addphoto/i;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Lcom/yelp/android/ui/activities/addphoto/i;

    .line 463
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getAttachedMediaSorted()Ljava/util/List;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Ljava/util/List;)V

    .line 465
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Lcom/yelp/android/ui/activities/addphoto/i;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getPhotos()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/addphoto/i;->a_(Ljava/util/List;)V

    .line 466
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Lcom/yelp/android/ui/activities/addphoto/i;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview;->getVideos()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/addphoto/i;->b(Ljava/util/List;)V

    .line 467
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/addphoto/i;->b(I)V

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->notifyDataSetChanged()V

    .line 472
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/addphoto/i;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->g:Lcom/yelp/android/ui/activities/addphoto/i;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v4, v3}, Lcom/yelp/android/ui/activities/addphoto/i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 472
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/appdata/webrequests/dc;)V

    .line 188
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/reviewpage/av;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c:Lcom/yelp/android/ui/activities/reviewpage/av;

    .line 137
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b()V

    .line 108
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 118
    packed-switch p1, :pswitch_data_0

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c:Lcom/yelp/android/ui/activities/reviewpage/av;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c:Lcom/yelp/android/ui/activities/reviewpage/av;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviewpage/av;->a()V

    .line 133
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    const-string/jumbo v0, "review.extra"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b:Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 100
    const-string/jumbo v0, "business_name"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->d:Ljava/lang/String;

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 141
    const v0, 0x7f03001b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 143
    const v0, 0x7f0c00c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->h:Landroid/widget/ToggleButton;

    .line 144
    const v0, 0x7f0c00bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->i:Landroid/widget/ToggleButton;

    .line 145
    const v0, 0x7f0c00be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->j:Landroid/widget/ToggleButton;

    .line 146
    const v0, 0x7f0c036b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->k:Lcom/yelp/android/ui/activities/reviewpage/PanelReviewTranslate;

    .line 147
    const v0, 0x7f0c00b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->c(Landroid/view/View;)V

    .line 149
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->d(Landroid/view/View;)V

    .line 150
    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDetach()V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->n:Lcom/yelp/android/ui/activities/reviewpage/bi;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/bi;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 114
    return-void
.end method
