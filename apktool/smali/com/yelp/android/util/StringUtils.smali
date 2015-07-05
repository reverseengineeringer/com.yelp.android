.class public Lcom/yelp/android/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static a:C

.field public static b:[I

.field public static c:[I

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 154
    const/16 v0, 0x2026

    sput-char v0, Lcom/yelp/android/util/StringUtils;->a:C

    .line 156
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "/"

    aput-object v1, v0, v3

    const-string/jumbo v1, "?"

    aput-object v1, v0, v4

    const-string/jumbo v1, "&"

    aput-object v1, v0, v5

    const-string/jumbo v1, "#"

    aput-object v1, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/util/StringUtils;->d:Ljava/util/List;

    .line 164
    const/16 v0, 0xb

    new-array v0, v0, [I

    sget v1, Lcom/yelp/android/bf/k;->LessThanAMinute:I

    aput v1, v0, v3

    sget v1, Lcom/yelp/android/bf/k;->OneMinute:I

    aput v1, v0, v4

    sget v1, Lcom/yelp/android/bf/k;->XMinutes:I

    aput v1, v0, v5

    sget v1, Lcom/yelp/android/bf/k;->About1Hour:I

    aput v1, v0, v6

    sget v1, Lcom/yelp/android/bf/k;->AboutXHours:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/yelp/android/bf/k;->OneDay:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/yelp/android/bf/k;->XDays:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/yelp/android/bf/k;->About1Month:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/yelp/android/bf/k;->XMonths:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/yelp/android/bf/k;->About1Year:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/yelp/android/bf/k;->OverXYears:I

    aput v2, v0, v1

    sput-object v0, Lcom/yelp/android/util/StringUtils;->b:[I

    .line 178
    const/16 v0, 0xb

    new-array v0, v0, [I

    sget v1, Lcom/yelp/android/bf/k;->Abbreviated_XSeconds:I

    aput v1, v0, v3

    sget v1, Lcom/yelp/android/bf/k;->Abbreviated_XMinutes:I

    aput v1, v0, v4

    sget v1, Lcom/yelp/android/bf/k;->Abbreviated_XMinutes:I

    aput v1, v0, v5

    sget v1, Lcom/yelp/android/bf/k;->Abbreviated_XHours:I

    aput v1, v0, v6

    sget v1, Lcom/yelp/android/bf/k;->Abbreviated_XHours:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/yelp/android/bf/k;->Abbreviated_XDays:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/yelp/android/bf/k;->Abbreviated_XDays:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/yelp/android/bf/k;->Abbreviated_XMonths:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/yelp/android/bf/k;->Abbreviated_XMonths:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/yelp/android/bf/k;->Abbreviated_XYears:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/yelp/android/bf/k;->Abbreviated_XYears:I

    aput v2, v0, v1

    sput-object v0, Lcom/yelp/android/util/StringUtils;->c:[I

    return-void
.end method

.method public static a(Landroid/text/Spannable;Ljava/lang/Class;Ljava/lang/Object;I)Landroid/text/Spannable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "I)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 488
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-interface {p0, v2, v0, p1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 489
    instance-of v0, p2, Landroid/text/style/CharacterStyle;

    if-eqz v0, :cond_0

    instance-of v0, p2, Landroid/text/style/ClickableSpan;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 490
    :goto_0
    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 492
    if-eqz v1, :cond_2

    move-object v0, p2

    .line 493
    check-cast v0, Landroid/text/style/CharacterStyle;

    invoke-static {v0}, Landroid/text/style/CharacterStyle;->wrap(Landroid/text/style/CharacterStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    .line 495
    :goto_2
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 496
    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 497
    invoke-interface {p0, v0, v6, v5, p3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v1, v2

    .line 489
    goto :goto_0

    .line 499
    :cond_1
    return-object p0

    :cond_2
    move-object v0, p2

    goto :goto_2
.end method

.method public static a(Landroid/text/Spannable;Ljava/lang/Object;Ljava/lang/Object;)Landroid/text/Spannable;
    .locals 3

    .prologue
    .line 512
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 513
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 514
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 515
    invoke-interface {p0, p2, v1, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 516
    return-object p0
.end method

.method public static a(Landroid/text/Spanned;)Landroid/text/Spannable;
    .locals 5

    .prologue
    .line 564
    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 565
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 566
    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x12

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 568
    return-object v0
.end method

.method public static a(Landroid/text/Spanned;I)Landroid/text/Spannable;
    .locals 5

    .prologue
    .line 545
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 546
    const/4 v0, -0x1

    .line 548
    :goto_0
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v1, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eq v2, v0, :cond_0

    .line 550
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    .line 551
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 554
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/text/Spanned;ILandroid/content/Context;)Landroid/text/Spannable;
    .locals 4

    .prologue
    .line 530
    invoke-static {p0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 531
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 533
    const-class v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spannable;Ljava/lang/Class;Ljava/lang/Object;I)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 330
    move v0, v1

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 331
    aget-object v2, p3, v0

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_0
    check-cast p3, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v2, Lcom/yelp/android/util/ah;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/yelp/android/util/ah;-><init>(Landroid/content/res/Resources;I)V

    new-instance v1, Lcom/yelp/android/util/ae;

    invoke-direct {v1}, Lcom/yelp/android/util/ae;-><init>()V

    invoke-static {v0, v2, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 303
    move v0, v1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 304
    aget-object v2, p2, v0

    .line 306
    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_0

    instance-of v2, v2, Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 307
    aget-object v2, p2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    .line 303
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v2, Lcom/yelp/android/util/ah;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/yelp/android/util/ah;-><init>(Landroid/content/res/Resources;I)V

    new-instance v1, Lcom/yelp/android/util/ae;

    invoke-direct {v1}, Lcom/yelp/android/util/ae;-><init>()V

    invoke-static {v0, v2, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static a(DZ)Lcom/yelp/android/util/StringUtils$Unit;
    .locals 2

    .prologue
    .line 731
    if-eqz p2, :cond_1

    .line 733
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 734
    sget-object v0, Lcom/yelp/android/util/StringUtils$Unit;->METER:Lcom/yelp/android/util/StringUtils$Unit;

    .line 745
    :goto_0
    return-object v0

    .line 736
    :cond_0
    sget-object v0, Lcom/yelp/android/util/StringUtils$Unit;->KILOMETER:Lcom/yelp/android/util/StringUtils$Unit;

    goto :goto_0

    .line 742
    :cond_1
    const-wide v0, 0x3fb999999999999aL    # 0.1

    invoke-static {v0, v1}, Lcom/yelp/android/util/o;->b(D)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gez v0, :cond_2

    .line 743
    sget-object v0, Lcom/yelp/android/util/StringUtils$Unit;->FOOT:Lcom/yelp/android/util/StringUtils$Unit;

    goto :goto_0

    .line 745
    :cond_2
    sget-object v0, Lcom/yelp/android/util/StringUtils$Unit;->MILE:Lcom/yelp/android/util/StringUtils$Unit;

    goto :goto_0
.end method

.method public static a(ILandroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 464
    invoke-static {p5, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 466
    if-le v1, p3, :cond_0

    .line 467
    invoke-interface {p2, v6, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 469
    :cond_0
    add-int v2, v1, p4

    if-le v2, p3, :cond_1

    .line 470
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yelp/android/bf/j;->these_and_others:I

    add-int v4, v1, p4

    sub-int/2addr v4, p3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    add-int/2addr v1, p4

    sub-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 474
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 437
    sget v0, Lcom/yelp/android/bf/j;->these_and_others:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/util/StringUtils;->a(ILandroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static a(DDLcom/yelp/android/util/StringUtils$Format;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 685
    invoke-static {p2, p3}, Lcom/yelp/android/util/o;->c(D)D

    move-result-wide v0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 686
    const-string/jumbo v0, ""

    .line 689
    :goto_0
    return-object v0

    :cond_0
    invoke-static/range {p0 .. p5}, Lcom/yelp/android/util/StringUtils;->b(DDLcom/yelp/android/util/StringUtils$Format;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    rem-int/lit8 v1, p1, 0x64

    .line 381
    sget v0, Lcom/yelp/android/bf/k;->ordinal_other:I

    .line 382
    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    const/16 v2, 0xd

    if-le v1, v2, :cond_1

    .line 383
    :cond_0
    rem-int/lit8 v1, p1, 0xa

    packed-switch v1, :pswitch_data_0

    .line 395
    :cond_1
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :pswitch_0
    sget v0, Lcom/yelp/android/bf/k;->ordinal_first:I

    goto :goto_0

    .line 388
    :pswitch_1
    sget v0, Lcom/yelp/android/bf/k;->ordinal_second:I

    goto :goto_0

    .line 391
    :pswitch_2
    sget v0, Lcom/yelp/android/bf/k;->ordinal_third:I

    goto :goto_0

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 366
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 367
    const/4 v1, 0x1

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 368
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/yelp/android/util/ab;->b:[I

    invoke-virtual {p1}, Lcom/yelp/android/util/StringUtils$Format;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 256
    invoke-static {p0, p2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 253
    :pswitch_0
    invoke-static {p0, p2}, Lcom/yelp/android/util/StringUtils;->b(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 261
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide v4, 0x7528ad000L

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 262
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/high16 v2, 0x20000

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/yelp/android/bf/k;->time_ago:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/util/StringUtils;->b:[I

    invoke-static {p0, p1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Ljava/util/Date;[I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Date;[I)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 221
    cmp-long v4, v2, v10

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 222
    cmp-long v2, v2, v10

    if-gtz v2, :cond_0

    aget v2, p2, v7

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 246
    :goto_0
    return-object v0

    .line 222
    :cond_0
    aget v0, p2, v6

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_1
    const-wide/16 v0, 0x2

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    const-wide/16 v0, 0x2c

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    .line 230
    const/4 v0, 0x2

    aget v0, p2, v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_2
    const-wide/16 v0, 0x2d

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    const-wide/16 v0, 0x59

    cmp-long v0, v2, v0

    if-gtz v0, :cond_3

    .line 232
    const/4 v0, 0x3

    aget v0, p2, v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_3
    const-wide/16 v0, 0x5a

    cmp-long v0, v2, v0

    if-ltz v0, :cond_4

    const-wide/16 v0, 0x59f

    cmp-long v0, v2, v0

    if-gtz v0, :cond_4

    .line 234
    const/4 v0, 0x4

    aget v0, p2, v0

    new-array v1, v6, [Ljava/lang/Object;

    long-to-double v2, v2

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_4
    const-wide/16 v0, 0x5a0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_5

    const-wide/16 v0, 0xb3f

    cmp-long v0, v2, v0

    if-gtz v0, :cond_5

    .line 236
    const/4 v0, 0x5

    aget v0, p2, v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 237
    :cond_5
    const-wide/16 v0, 0xb40

    cmp-long v0, v2, v0

    if-ltz v0, :cond_6

    const-wide/32 v0, 0xa8bf

    cmp-long v0, v2, v0

    if-gtz v0, :cond_6

    .line 238
    const/4 v0, 0x6

    aget v0, p2, v0

    new-array v1, v6, [Ljava/lang/Object;

    long-to-double v2, v2

    const-wide v4, 0x4096800000000000L    # 1440.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 239
    :cond_6
    const-wide/32 v0, 0xa8c0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_7

    const-wide/32 v0, 0x1517f

    cmp-long v0, v2, v0

    if-gtz v0, :cond_7

    .line 240
    const/4 v0, 0x7

    aget v0, p2, v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 241
    :cond_7
    const-wide/32 v0, 0x15180

    cmp-long v0, v2, v0

    if-ltz v0, :cond_8

    const-wide/32 v0, 0x8051f

    cmp-long v0, v2, v0

    if-gtz v0, :cond_8

    .line 242
    const/16 v0, 0x8

    aget v0, p2, v0

    new-array v1, v6, [Ljava/lang/Object;

    long-to-double v2, v2

    const-wide v4, 0x40e5180000000000L    # 43200.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 243
    :cond_8
    const-wide/32 v0, 0x80520

    cmp-long v0, v2, v0

    if-ltz v0, :cond_9

    const-wide/32 v0, 0x100a3f

    cmp-long v0, v2, v0

    if-gtz v0, :cond_9

    .line 244
    const/16 v0, 0x9

    aget v0, p2, v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 246
    :cond_9
    const/16 v0, 0xa

    aget v0, p2, v0

    new-array v1, v6, [Ljava/lang/Object;

    long-to-double v2, v2

    const-wide v4, 0x41200a4000000000L    # 525600.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 214
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 278
    :cond_0
    return-object p2
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 411
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    const-string/jumbo v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/yelp/android/util/ag",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 809
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 810
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 812
    :cond_0
    invoke-interface {p2, v2}, Lcom/yelp/android/util/ag;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, ""

    .line 286
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "\n"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 849
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 850
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    :goto_0
    return-object v0

    .line 853
    :cond_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 854
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 855
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 856
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 859
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 649
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 650
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 651
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 654
    :cond_0
    return-object v1
.end method

.method public static a(Landroid/text/Spannable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 589
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 590
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p2, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 591
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 593
    const/16 v3, 0x21

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 594
    return-void
.end method

.method public static a(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 604
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 605
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<a href=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    return-void
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 818
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 819
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    const/4 v0, 0x1

    .line 823
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(DDLcom/yelp/android/util/StringUtils$Format;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 710
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 711
    :cond_0
    const-string/jumbo v0, ""

    .line 726
    :goto_0
    return-object v0

    .line 714
    :cond_1
    invoke-static {p5}, Lcom/yelp/android/appdata/BaseYelpApplication;->d(Landroid/content/Context;)Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    .line 715
    invoke-virtual {v0, p5}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-static {p0, p1, v3}, Lcom/yelp/android/util/StringUtils;->a(DZ)Lcom/yelp/android/util/StringUtils$Unit;

    move-result-object v3

    .line 716
    invoke-virtual {v3, p2, p3}, Lcom/yelp/android/util/StringUtils$Unit;->getLocationPrecision(D)I

    move-result v4

    .line 718
    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v5

    .line 719
    rsub-int/lit8 v6, v4, 0x1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 720
    invoke-virtual {v5, v2}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 721
    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 723
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {v3, p0, p1}, Lcom/yelp/android/util/StringUtils$Unit;->convertFromKm(D)D

    move-result-wide v6

    invoke-direct {v0, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    .line 724
    rsub-int/lit8 v4, v4, 0x0

    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v4, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 726
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p4, v3}, Lcom/yelp/android/util/StringUtils$Format;->getQuantityResourceId(Lcom/yelp/android/util/StringUtils$Unit;)I

    move-result v3

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v4, v3, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 721
    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    sget v0, Lcom/yelp/android/bf/k;->time_ago:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/util/StringUtils;->c:[I

    invoke-static {p0, p1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Ljava/util/Date;[I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 619
    const-string/jumbo v0, "access_token="

    invoke-static {v0, p0}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 620
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 623
    sget-object v3, Lcom/yelp/android/util/StringUtils;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    const-string/jumbo v1, "&"

    const-string/jumbo v3, "access_token="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 626
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 627
    const-string/jumbo v1, "&"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 639
    :cond_1
    :goto_0
    return-object p0

    .line 633
    :cond_2
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 636
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 827
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 837
    const-string/jumbo v0, "\u201c%s\u201d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 845
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
