.class public Lcom/yelp/android/ui/activities/profile/UserProfileView;
.super Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
.source "UserProfileView.java"


# instance fields
.field private final a:I

.field private final b:Landroid/content/res/ColorStateList;

.field private final c:Landroid/content/res/ColorStateList;

.field private final d:I

.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/view/ViewGroup;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

.field private j:Lcom/yelp/android/ui/widgets/LeftDrawableButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f010146

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    sget-object v0, Lcom/yelp/android/b;->UserProfileView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->e:Landroid/graphics/drawable/Drawable;

    .line 106
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->f:Landroid/graphics/drawable/Drawable;

    .line 107
    const/4 v1, 0x4

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a:I

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b:Landroid/content/res/ColorStateList;

    .line 112
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->c:Landroid/content/res/ColorStateList;

    .line 114
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d:I

    .line 116
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;I)Landroid/text/Spannable;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 436
    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 437
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 438
    array-length v3, v0

    if-nez v3, :cond_0

    .line 439
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v2, v0, v1, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 441
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-interface {v2, v1, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 443
    :cond_0
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 444
    invoke-virtual {v4}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 445
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v2, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;

    .line 443
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_2
    return-object v2
.end method

.method private final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    const v0, 0x7f07037d

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(I)Ljava/lang/String;

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
    .line 134
    const v0, 0x7f0c04c4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 135
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 122
    const/4 v1, 0x4

    const v2, 0x7f03018a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/dj;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 124
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/User;Landroid/view/ViewGroup;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x0

    .line 257
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getYearsElite()Ljava/util/List;

    move-result-object v4

    .line 258
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 259
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 261
    invoke-static {}, Lcom/yelp/android/ui/util/cp;->b()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 262
    sget v0, Lcom/yelp/android/appdata/ao;->m:I

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 263
    if-le v5, v11, :cond_0

    .line 264
    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 265
    const/4 v0, -0x1

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_0
    move v3, v2

    .line 269
    :goto_0
    if-ge v3, v5, :cond_2

    .line 270
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User$EliteYear;

    .line 274
    new-instance v7, Lcom/yelp/android/ui/activities/profile/EliteBadge;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/yelp/android/serializable/User$EliteYear;->type:Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    if-eqz v3, :cond_1

    if-le v5, v11, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v10, v1}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getBadge(Z)I

    move-result v1

    invoke-direct {v7, v8, v9, v1}, Lcom/yelp/android/ui/activities/profile/EliteBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 276
    invoke-virtual {p2, v7, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    const/4 v1, 0x5

    if-ge v3, v1, :cond_2

    .line 278
    iget v0, v0, Lcom/yelp/android/serializable/User$EliteYear;->year:I

    invoke-virtual {v7, v0}, Lcom/yelp/android/ui/activities/profile/EliteBadge;->setYear(I)V

    .line 269
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 274
    goto :goto_1

    .line 283
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/profile/WhatsAnElite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/yelp/android/ui/util/by;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileEliteBanner:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/ui/util/by;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/widgets/LeftDrawableButton;Lcom/yelp/android/ui/widgets/LeftDrawableButton;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 329
    sget-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->ADD_FRIEND:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/User;->isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p2, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 332
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/User;->isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {p3, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 335
    :cond_1
    return-void
.end method

.method private b(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;
    .locals 3

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070358

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/yelp/android/ui/activities/friends/SendFriendRequestForm;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/yelp/android/ui/activities/profile/ab;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonAddFriend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, v0}, Lcom/yelp/android/ui/activities/profile/ab;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    .line 349
    return-object v1
.end method

.method private c(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v0

    .line 354
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070356

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 356
    new-instance v1, Lcom/yelp/android/ui/util/by;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonCompliment:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/ui/util/by;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    return-object v1
.end method

.method private c(Lcom/yelp/android/serializable/User;Z)V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(Lcom/yelp/android/serializable/User;Z)V

    .line 140
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpHeaderButtons(Lcom/yelp/android/serializable/User;)V

    .line 141
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpUserNameAndQuote(Lcom/yelp/android/serializable/User;)V

    .line 142
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpEliteBanner(Lcom/yelp/android/serializable/User;)V

    .line 143
    return-void
.end method

.method private d(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ac;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/activities/profile/ac;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/serializable/User;)V

    return-object v0
.end method

.method private setUpBasicUserInfo(Lcom/yelp/android/serializable/User;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 379
    const v0, 0x7f0c0260

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    .line 380
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 382
    const v1, 0x7f0706b5

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getLocation()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v1

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a:I

    invoke-static {v1, v3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Ljava/lang/CharSequence;I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 386
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getMemberSince()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 388
    const v1, 0x7f0c0041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 389
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 390
    const v1, 0x7f0706b6

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getMemberSince()Ljava/util/Date;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v1

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a:I

    invoke-static {v1, v3}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Ljava/lang/CharSequence;I)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->isFriend()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030138

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 399
    const v0, 0x7f0c0423

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 403
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->isSendingNotifications()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 404
    new-instance v3, Lcom/yelp/android/ui/activities/profile/ae;

    invoke-direct {v3, p1}, Lcom/yelp/android/ui/activities/profile/ae;-><init>(Lcom/yelp/android/serializable/User;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 408
    new-instance v3, Lcom/yelp/android/ui/activities/profile/ad;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/profile/ad;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Landroid/widget/CompoundButton;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 415
    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Landroid/widget/TextView;

    .line 419
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    .line 421
    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Landroid/widget/TextView;

    const v1, 0x7f070398

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/util/by;

    sget-object v3, Lcom/yelp/android/analytics/iris/EventIri;->ProfileMoreAboutButton:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, p1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/yelp/android/ui/util/by;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Landroid/widget/TextView;

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    .line 430
    if-eqz v0, :cond_2

    .line 431
    invoke-interface {v0, v6}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setRight(Z)V

    .line 433
    :cond_2
    return-void

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Landroid/widget/TextView;

    const v1, 0x7f070397

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setUpEliteBanner(Lcom/yelp/android/serializable/User;)V
    .locals 2

    .prologue
    .line 146
    const v0, 0x7f0c04c6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 147
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Lcom/yelp/android/serializable/User;Landroid/view/ViewGroup;)V

    .line 153
    :cond_0
    return-void

    .line 148
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setUpHeaderButtons(Lcom/yelp/android/serializable/User;)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 183
    const v0, 0x7f0c040a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e0023

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setValue(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v1, Lcom/yelp/android/ui/util/by;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonBar_Reviews:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v6

    sget-object v7, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;->Review:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    invoke-static {v5, p1, v6, v7}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;ILcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/yelp/android/ui/util/by;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setEnabled(Z)V

    .line 191
    const v0, 0x7f0c046e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 192
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e0011

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setValue(Ljava/lang/CharSequence;)V

    .line 195
    new-instance v1, Lcom/yelp/android/ui/util/by;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonBar_Friends:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/yelp/android/ui/activities/friends/ActivityFriendList;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/yelp/android/ui/util/by;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setEnabled(Z)V

    .line 200
    const v0, 0x7f0c0407

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/TwoTierButton;

    .line 202
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v1

    .line 203
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getPhotoCount()I

    move-result v4

    .line 204
    add-int v5, v1, v4

    .line 206
    if-lez v1, :cond_2

    if-lez v4, :cond_2

    .line 207
    const v1, 0x7f07047b

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    :goto_2
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 214
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setValue(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v4, Lcom/yelp/android/ui/util/by;

    sget-object v6, Lcom/yelp/android/analytics/iris/EventIri;->ProfileButtonBar_Photos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    invoke-direct {v8, p1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Lcom/yelp/android/serializable/User;)V

    invoke-static {v7, v8, v1, p1}, Lcom/yelp/android/ui/activities/profile/UserBizMediaGrid;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/lang/String;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/yelp/android/ui/util/by;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    if-lez v5, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setEnabled(Z)V

    .line 222
    return-void

    :cond_0
    move v1, v3

    .line 189
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 198
    goto :goto_1

    .line 208
    :cond_2
    if-lez v1, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0e0030

    invoke-virtual {v4, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0e001e

    invoke-virtual {v1, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move v2, v3

    .line 221
    goto :goto_3
.end method

.method private setUpUserNameAndQuote(Lcom/yelp/android/serializable/User;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v3, -0x41800000    # -0.25f

    .line 156
    const v0, 0x7f0c04cb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    const v1, 0x7f0c04cc

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 159
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 160
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 162
    iget v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d:I

    if-eqz v2, :cond_0

    .line 163
    iget v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d:I

    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 164
    iget v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d:I

    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 167
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getHeadline()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_1
    return-void

    .line 170
    :cond_1
    const-string/jumbo v2, "%s %s %s."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getLastInitial()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 178
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 452
    const v0, 0x7f010167

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/view/ViewGroup;I)Lcom/yelp/android/ui/widgets/SpannedTextView;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/yelp/android/ui/widgets/SpannedTextView;
    .locals 3

    .prologue
    .line 460
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannedTextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Lcom/yelp/android/ui/widgets/SpannedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 461
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 462
    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/util/by;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileMoreAboutButton:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/yelp/android/ui/activities/profile/MoreAboutUser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/ui/util/by;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;Z)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->c(Lcom/yelp/android/serializable/User;Z)V

    .line 128
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpCommunityInteractionButtons(Lcom/yelp/android/serializable/User;)V

    .line 130
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->setUpBasicUserInfo(Lcom/yelp/android/serializable/User;)V

    .line 131
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 456
    const v0, 0x7f010168

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Landroid/view/ViewGroup;I)Lcom/yelp/android/ui/widgets/SpannedTextView;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/yelp/android/serializable/User;Z)V
    .locals 4

    .prologue
    .line 225
    const v0, 0x7f0c04c9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 226
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v2

    const v3, 0x7f02009b

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 231
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getUserPhotoCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 232
    :cond_0
    const v2, 0x7f0c04ca

    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_1
    if-nez p2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getUserPhotoCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 235
    :cond_2
    new-instance v1, Lcom/yelp/android/ui/activities/profile/aa;

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->ProfileUserPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v1, p0, v2, p1}, Lcom/yelp/android/ui/activities/profile/aa;-><init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/serializable/User;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :cond_3
    return-void
.end method

.method public getAddFriendButton()Lcom/yelp/android/ui/widgets/LeftDrawableButton;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    return-object v0
.end method

.method getBasicInfo()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->g:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getBoldTitleColor()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a:I

    return v0
.end method

.method public getComplimentButton()Lcom/yelp/android/ui/widgets/LeftDrawableButton;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    return-object v0
.end method

.method public setUpCommunityInteractionButtons(Lcom/yelp/android/serializable/User;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 289
    const v0, 0x7f0c04ce

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 291
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    .line 292
    invoke-virtual {v1, p1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    .line 293
    if-nez v1, :cond_4

    .line 294
    const v0, 0x7f0c03e2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 295
    const v0, 0x7f0c00c1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 296
    const v0, 0x7f0c04cf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 297
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-direct {p0, p1, v1, v2}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->a(Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/widgets/LeftDrawableButton;Lcom/yelp/android/ui/widgets/LeftDrawableButton;)V

    .line 299
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->b(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->c(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->d(Lcom/yelp/android/serializable/User;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    sget-object v1, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_MESSAGE:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {p1, v1}, Lcom/yelp/android/serializable/User;->isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/Features;->messaging:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 310
    :cond_0
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 312
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->isFriend()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->j:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070192

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setText(Ljava/lang/String;)V

    .line 325
    :cond_2
    :goto_0
    return-void

    .line 315
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->isFriendRequestPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setClickable(Z)V

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setBackgroundResource(I)V

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setText(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setTextColor(I)V

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileView;->i:Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    const v1, 0x7f020048

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setImage(I)V

    goto :goto_0

    .line 323
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
