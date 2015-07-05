.class public Lcom/yelp/android/ui/activities/profile/EliteBadge;
.super Landroid/widget/TextView;
.source "EliteBadge.java"


# instance fields
.field private a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/profile/EliteBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f010041

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/profile/EliteBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget-object v0, Lcom/yelp/android/b;->EliteBadge:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/profile/EliteBadge;->b:Ljava/lang/String;

    .line 29
    sget-char v1, Lcom/yelp/android/util/StringUtils;->a:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/profile/EliteBadge;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    return-void
.end method


# virtual methods
.method public getYear()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/EliteBadge;->a:I

    return v0
.end method

.method public setYear(I)V
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/EliteBadge;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    rem-int/lit8 v3, p1, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/EliteBadge;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iput p1, p0, Lcom/yelp/android/ui/activities/profile/EliteBadge;->a:I

    .line 37
    return-void
.end method
