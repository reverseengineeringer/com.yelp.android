.class public Lcom/yelp/android/ui/panels/BizAttributesFragment;
.super Landroid/support/v4/app/Fragment;
.source "BizAttributesFragment.java"


# static fields
.field private static final i:Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/serializable/SurveyQuestion;

.field private d:I

.field private e:Lcom/yelp/android/ui/panels/BizAttributePanel;

.field private f:Lcom/yelp/android/ui/widgets/WidgetSpan;

.field private g:Lcom/yelp/android/serializable/YelpBusiness;

.field private h:I

.field private j:Ljava/lang/Runnable;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/yelp/android/ui/panels/o;

.field private final o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->c:Lcom/yelp/android/serializable/SurveyQuestion;

    .line 433
    new-instance v0, Lcom/yelp/android/ui/panels/n;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/n;-><init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 489
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->c(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/serializable/SurveyQuestion;)Lcom/yelp/android/serializable/SurveyQuestion;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->c:Lcom/yelp/android/serializable/SurveyQuestion;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/ui/panels/BizAttributesFragment;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getSurveyQuestions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/panels/BizAttributesFragment;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "show_review"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getContributionType()Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    move-result-object v0

    sget-object v6, Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;->REVIEW:Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {v3}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "add_photo_video"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpCheckIn;->getContributionType()Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    move-result-object v5

    sget-object v6, Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;->PHOTO_OR_VIDEO:Lcom/yelp/android/serializable/YelpCheckIn$ContributionType;

    if-ne v5, v6, :cond_1

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    return-object v3

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0

    :cond_1
    move v1, v2

    .line 112
    goto :goto_1
.end method

.method public static a(Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;Z)Lcom/yelp/android/ui/panels/BizAttributesFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyQuestion;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Z)",
            "Lcom/yelp/android/ui/panels/BizAttributesFragment;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;-><init>()V

    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string/jumbo v2, "survey_questions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 101
    const-string/jumbo v2, "business"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    const-string/jumbo v2, "is_check_in"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/BizAttributesFragment;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a(Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/m;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/SurveyAnswer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v4, 0x7f0f0090

    const/4 v9, 0x0

    .line 376
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-float v1, v1

    div-float v5, v0, v1

    .line 377
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SurveyAnswer;

    .line 378
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v7, v9, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 381
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyAnswer;->getText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 382
    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->l:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0100ca

    .line 383
    :goto_1
    new-instance v2, Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v8, 0x0

    invoke-direct {v2, v3, v8, v1}, Lcom/yelp/android/ui/widgets/SpannedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 384
    check-cast v1, Lcom/yelp/android/ui/widgets/SpannedTextView;

    .line 387
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x4

    if-ge v3, v8, :cond_1

    move v3, v4

    .line 388
    :goto_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v1, v8, v3}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 389
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyAnswer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_3
    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    sget v1, Lcom/yelp/android/appdata/ao;->j:I

    sget v3, Lcom/yelp/android/appdata/ao;->j:I

    invoke-virtual {v2, v1, v9, v3, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 405
    new-instance v1, Lcom/yelp/android/ui/panels/m;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/panels/m;-><init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/serializable/SurveyAnswer;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WidgetSpan;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 382
    :cond_0
    const v1, 0x7f01015c

    goto :goto_1

    .line 387
    :cond_1
    const v3, 0x7f0f00ed

    goto :goto_2

    .line 391
    :cond_2
    new-instance v2, Lcom/yelp/android/ui/widgets/TwoTierButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;-><init>(Landroid/content/Context;)V

    .line 392
    iget-boolean v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->l:Z

    if-nez v1, :cond_3

    .line 393
    const v1, 0x7f020412

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    move-object v1, v2

    .line 395
    check-cast v1, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 396
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyAnswer;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setValue(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyAnswer;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getValue()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v3, v8, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 399
    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getLabel()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v8, 0x7f0f00e3

    invoke-virtual {v1, v3, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_3

    .line 422
    :cond_4
    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 304
    iget v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->h:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 305
    new-instance v0, Lcom/yelp/android/appdata/webrequests/t;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/yelp/android/appdata/webrequests/t;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/m;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/t;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 306
    iget v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->h:I

    .line 308
    :cond_0
    return-void
.end method

.method private b(Landroid/view/ViewGroup;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;
    .locals 3

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 313
    const v1, 0x7f030058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    .line 315
    const v1, 0x7f0c01d6

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviews/StarsView;

    .line 317
    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->g:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getUserReviewRating()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setNumStars(I)V

    .line 318
    new-instance v2, Lcom/yelp/android/ui/panels/j;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/panels/j;-><init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/ui/activities/reviews/StarsView;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reviews/StarsView;->setOnStarsClicked(Ljava/lang/Runnable;)V

    .line 330
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/BizAttributesFragment;Landroid/view/ViewGroup;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b(Landroid/view/ViewGroup;)Lcom/yelp/android/ui/widgets/SpannableFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/BizAttributesFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->i:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->k:Z

    return v0
.end method

.method private c(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 338
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_capture:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const v0, 0x7f0c020a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v2, 0x7f07009a

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setText(Ljava/lang/String;)V

    .line 343
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/panels/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/k;-><init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    return-object v1
.end method

.method static synthetic c(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->g:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->m:Z

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/serializable/SurveyQuestion;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->c:Lcom/yelp/android/serializable/SurveyQuestion;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/widgets/WidgetSpan;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f:Lcom/yelp/android/ui/widgets/WidgetSpan;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->o:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/o;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->n:Lcom/yelp/android/ui/panels/o;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Lcom/yelp/android/ui/panels/BizAttributePanel;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->e:Lcom/yelp/android/ui/panels/BizAttributePanel;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/yelp/android/ui/panels/l;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/l;-><init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    return-object v0
.end method

.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 256
    const-string/jumbo v0, "number_answered"

    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    const-string/jumbo v2, "unanswered_question_identifier"

    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SurveyQuestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/SurveyQuestion;->getQuestionIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->l:Z

    if-eqz v0, :cond_1

    .line 262
    const-string/jumbo v0, "number_total"

    iget v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInsReceiptSurveyQuestionFinished:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 269
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    :goto_1
    return-void

    .line 265
    :cond_1
    const-string/jumbo v0, "number_received"

    iget v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewPostedSurveyQuestionFinished:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_0

    .line 273
    :cond_2
    new-instance v0, Lcom/yelp/android/ui/panels/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/h;-><init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V

    .line 291
    new-instance v1, Lcom/yelp/android/ui/panels/i;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/panels/i;-><init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->j:Ljava/lang/Runnable;

    .line 298
    iput v3, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->h:I

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/ui/panels/o;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->n:Lcom/yelp/android/ui/panels/o;

    .line 251
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f:Lcom/yelp/android/ui/widgets/WidgetSpan;

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/WidgetSpan;->setClickable(Z)V

    .line 247
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    if-nez p1, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "survey_questions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a:Ljava/util/ArrayList;

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->d:I

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "business"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->g:Lcom/yelp/android/serializable/YelpBusiness;

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_review"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->k:Z

    .line 128
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "add_photo_video"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->m:Z

    .line 129
    return-void

    .line 123
    :cond_0
    const-string/jumbo v0, "saved_survey_questions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 148
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "is_check_in"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->l:Z

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yelp/android/ui/widgets/WidgetSpan;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f:Lcom/yelp/android/ui/widgets/WidgetSpan;

    .line 158
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->l:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020171

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->f:Lcom/yelp/android/ui/widgets/WidgetSpan;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/WidgetSpan;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/panels/g;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/panels/g;-><init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/ui/panels/BizAttributePanel;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/panels/f;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->e:Lcom/yelp/android/ui/panels/BizAttributePanel;

    .line 236
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->e:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    return-object v1

    .line 161
    :cond_1
    const v0, 0x7f020236

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->e:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b()Z

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->e:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a()V

    .line 137
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string/jumbo v0, "saved_survey_questions"

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributesFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    return-void
.end method
