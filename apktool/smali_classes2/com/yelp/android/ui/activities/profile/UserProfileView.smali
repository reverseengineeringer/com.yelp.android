.class public Lcom/yelp/android/ui/activities/profile/UserProfileView;
.super Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
.source "UserProfileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/profile/UserProfileView$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/content/res/ColorStateList;

.field private final c:Landroid/content/res/ColorStateList;

.field private final d:I

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/view/ViewGroup;

.field private h:Lcom/yelp/android/ui/widgets/SpannedTextView;

.field private i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f0101b0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    sget-object v0, Lcom/yelp/android/b$a;->UserProfileView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->e:Landroid/graphics/drawable/Drawable;

    .line 110
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->f:Landroid/graphics/drawable/Drawable;

    .line 111
    const/4 v1, 0x4

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a:I

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b:Landroid/content/res/ColorStateList;

    .line 116
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->c:Landroid/content/res/ColorStateList;

    .line 118
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d:I

    .line 120
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;I)Landroid/text/Spannable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 504
    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 505
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 506
    array-length v3, v0

    if-nez v3, :cond_0

    .line 507
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v2, v0, v1, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 512
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 514
    :cond_0
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 515
    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 516
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v2, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    .line 514
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 519
    :cond_2
    return-object v2
.end method

.method private a(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    const v0, 0x7f0703bb

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 138
    const v0, 0x7f0f05cb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 139
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 124
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 125
    const/4 v1, 0x4

    const v2, 0x7f030205

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/ay;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 127
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/User;Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x0

    .line 279
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->u()Ljava/util/List;

    move-result-object v4

    .line 280
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 281
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 283
    invoke-static {}, Lcom/yelp/android/ui/util/ar;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 284
    sget v0, Lcom/yelp/android/appdata/n;->m:I

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 285
    if-le v5, v11, :cond_0

    .line 286
    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 287
    const/4 v0, -0x1

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_0
    move v3, v2

    .line 291
    :goto_0
    if-ge v3, v5, :cond_2

    .line 292
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User$EliteYear;

    .line 296
    new-instance v7, Lcom/yelp/android/ui/activities/profile/EliteBadge;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/yelp/android/serializable/User$EliteYear;->b:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    if-eqz v3, :cond_1

    if-le v5, v11, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v10, v1}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getBadge(Z)I

    move-result v1

    invoke-direct {v7, v8, v9, v1}, Lcom/yelp/android/ui/activities/profile/EliteBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 302
    invoke-virtual {p2, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    const/4 v1, 0x5

    if-ge v3, v1, :cond_2

    .line 304
    iget v0, v0, Lcom/yelp/android/serializable/User$EliteYear;->a:I

    invoke-virtual {v7, v0}, Lcom/yelp/android/ui/activities/profile/EliteBadge;->setYear(I)V

    .line 291
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 296
    goto :goto_1

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    .line 310
    new-instance v1, Lcom/yelp/android/ui/util/ak;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileEliteBanner:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/ui/util/ak;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/widgets/LeftDrawableButton;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 356
    sget-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->ADD_FRIEND:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/User;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p2, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 359
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/User;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    :cond_1
    return-void
.end method

.method private b(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;
    .locals 3

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070393

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 370
    new-instance v1, Lcom/yelp/android/ui/activities/profile/UserProfileView$3;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonAddFriend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView$3;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    .line 380
    return-object v1
.end method

.method private final b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    .line 385
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070392

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 388
    new-instance v1, Lcom/yelp/android/ui/util/ak;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonCompliment:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/ui/util/ak;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    return-object v1
.end method

.method private c(Lcom/yelp/android/serializable/User;Z)V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(Lcom/yelp/android/serializable/User;Z)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpHeaderButtons(Lcom/yelp/android/serializable/User;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpUserNameAndQuote(Lcom/yelp/android/serializable/User;)V

    .line 146
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpEliteBanner(Lcom/yelp/android/serializable/User;)V

    .line 147
    return-void
.end method

.method private d(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lcom/yelp/android/ui/activities/profile/UserProfileView$4;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView$4;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/serializable/User;)V

    return-object v0
.end method

.method private d(Lcom/yelp/android/serializable/User;Z)V
    .locals 6

    .prologue
    .line 479
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->af()Lcom/yelp/android/serializable/PersonalStats;

    move-result-object v1

    .line 480
    const v0, 0x7f0f053e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 481
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 482
    const v0, 0x7f0f053f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 483
    const v2, 0x7f070363

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/yelp/android/serializable/PersonalStats;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    const v0, 0x7f0f0540

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 486
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PersonalStats;->d()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    const v0, 0x7f0f0541

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 489
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PersonalStats;->c()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    const v0, 0x7f0f0542

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 492
    invoke-virtual {v1}, Lcom/yelp/android/serializable/PersonalStats;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUpBasicUserInfo(Lcom/yelp/android/serializable/User;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 414
    const v0, 0x7f0f02a9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    .line 415
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 417
    const v2, 0x7f070686

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->Y()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a:I

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Ljava/lang/CharSequence;I)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 423
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->s()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 425
    const v2, 0x7f0f004b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 426
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 427
    const v2, 0x7f070687

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->s()Ljava/util/Date;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v2

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a:I

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Ljava/lang/CharSequence;I)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->V()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03019b

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 441
    const v0, 0x7f0f050a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 445
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->S()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 446
    new-instance v3, Lcom/yelp/android/ui/activities/profile/UserProfileView$a;

    invoke-direct {v3, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView$a;-><init>(Lcom/yelp/android/serializable/User;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 450
    new-instance v3, Lcom/yelp/android/ui/activities/profile/UserProfileView$5;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView$5;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Landroid/widget/CompoundButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(Landroid/view/ViewGroup;)Lcom/yelp/android/ui/widgets/SpannedTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Lcom/yelp/android/ui/widgets/SpannedTextView;

    .line 461
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    .line 463
    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Lcom/yelp/android/ui/widgets/SpannedTextView;

    const v2, 0x7f0703d6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Lcom/yelp/android/ui/widgets/SpannedTextView;

    new-instance v2, Lcom/yelp/android/ui/util/ak;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileMoreAboutButton:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, p1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/yelp/android/ui/util/ak;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setRight(Z)V

    .line 473
    return-void

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Lcom/yelp/android/ui/widgets/SpannedTextView;

    const v2, 0x7f0703d5

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setUpEliteBanner(Lcom/yelp/android/serializable/User;)V
    .locals 2

    .prologue
    .line 150
    const v0, 0x7f0f05cd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 151
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 154
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Lcom/yelp/android/serializable/User;Landroid/view/ViewGroup;)V

    .line 157
    :cond_0
    return-void

    .line 152
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setUpUserNameAndQuote(Lcom/yelp/android/serializable/User;)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v3, -0x41800000    # -0.25f

    .line 160
    const v0, 0x7f0f05d2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    const v1, 0x7f0f036a

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 163
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 164
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 166
    iget v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d:I

    if-eqz v2, :cond_0

    .line 167
    iget v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d:I

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 168
    iget v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d:I

    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 171
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->ab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->X()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 523
    const v0, 0x7f0101d2

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/view/ViewGroup;I)Lcom/yelp/android/ui/widgets/SpannedTextView;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/yelp/android/ui/widgets/SpannedTextView;
    .locals 3

    .prologue
    .line 531
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lcom/yelp/android/ui/widgets/SpannedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 532
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 533
    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 4

    .prologue
    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Lcom/yelp/android/ui/widgets/SpannedTextView;

    new-instance v1, Lcom/yelp/android/ui/util/ak;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileMoreAboutButton:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/ui/util/ak;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;Z)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->c(Lcom/yelp/android/serializable/User;Z)V

    .line 131
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a()V

    .line 132
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpCommunityInteractionButtons(Lcom/yelp/android/serializable/User;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpBasicUserInfo(Lcom/yelp/android/serializable/User;)V

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d(Lcom/yelp/android/serializable/User;Z)V

    .line 135
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 568
    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->k:Landroid/widget/TextView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 570
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 577
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->k:Landroid/widget/TextView;

    const v1, 0x7f020120

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 574
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public b(Landroid/view/ViewGroup;)Lcom/yelp/android/ui/widgets/SpannedTextView;
    .locals 1

    .prologue
    .line 527
    const v0, 0x7f0101d5

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/view/ViewGroup;I)Lcom/yelp/android/ui/widgets/SpannedTextView;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/yelp/android/serializable/User;Z)V
    .locals 4

    .prologue
    .line 244
    const v0, 0x7f0f05d0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 245
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    const v3, 0x7f0200c6

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 250
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->J()I

    move-result v2

    if-lez v2, :cond_1

    .line 251
    :cond_0
    const v2, 0x7f0f05d1

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    :cond_1
    if-nez p2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->J()I

    move-result v1

    if-lez v1, :cond_3

    .line 254
    :cond_2
    new-instance v1, Lcom/yelp/android/ui/activities/profile/UserProfileView$2;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileUserPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView$2;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/serializable/User;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    :cond_3
    return-void
.end method

.method public getAddFriendButton()Lcom/yelp/android/ui/widgets/LeftDrawableButton;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    return-object v0
.end method

.method getBasicInfo()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBoldTitleColor()I
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a:I

    return v0
.end method

.method public getComplimentButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFollowButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public setUpCommunityInteractionButtons(Lcom/yelp/android/serializable/User;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 315
    const v0, 0x7f0f05d4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 318
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    .line 319
    invoke-virtual {v1, p1}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    .line 320
    if-nez v1, :cond_4

    .line 321
    const v0, 0x7f0f04c9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 322
    const v0, 0x7f0f010d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Landroid/widget/TextView;

    .line 323
    const v0, 0x7f0f05d6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->k:Landroid/widget/TextView;

    .line 324
    const v0, 0x7f0f05d5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 325
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/widgets/LeftDrawableButton;Landroid/widget/TextView;)V

    .line 326
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->c(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    sget-object v1, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_MESSAGE:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {p1, v1}, Lcom/yelp/android/serializable/User;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/Features;->messaging:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->V()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->T()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Z)V

    .line 352
    :goto_1
    return-void

    .line 341
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setClickable(Z)V

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setBackgroundResource(I)V

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setText(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setImage(I)V

    goto :goto_0

    .line 350
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public setUpHeaderButtons(Lcom/yelp/android/serializable/User;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 182
    const v0, 0x7f0f04f0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 183
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080026

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setValue(Ljava/lang/CharSequence;)V

    .line 187
    new-instance v1, Lcom/yelp/android/ui/util/ak;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonBar_Reviews:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/yelp/android/ui/activities/profile/reviews/a$b;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/yelp/android/ui/util/ak;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setEnabled(Z)V

    .line 193
    const v0, 0x7f0f0575

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 194
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f080011

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setValue(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v1, Lcom/yelp/android/ui/util/ak;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonBar_Friends:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/yelp/android/ui/util/ak;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setEnabled(Z)V

    .line 205
    const v0, 0x7f0f04ed

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 207
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v1

    .line 208
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->l_()I

    move-result v4

    .line 209
    add-int v5, v1, v4

    .line 211
    if-lez v1, :cond_2

    if-lez v4, :cond_2

    .line 212
    const v1, 0x7f07048e

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    :goto_2
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 221
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setValue(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v4, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView$1;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/serializable/User;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    if-lez v5, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setEnabled(Z)V

    .line 241
    return-void

    :cond_0
    move v1, v3

    .line 191
    goto :goto_0

    :cond_1
    move v1, v3

    .line 203
    goto :goto_1

    .line 213
    :cond_2
    if-lez v1, :cond_3

    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f080033

    invoke-virtual {v4, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 217
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f080020

    invoke-virtual {v1, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 240
    goto :goto_3
.end method
