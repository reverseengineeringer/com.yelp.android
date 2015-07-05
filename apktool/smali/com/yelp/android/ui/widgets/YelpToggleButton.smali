.class public Lcom/yelp/android/ui/widgets/YelpToggleButton;
.super Landroid/widget/ToggleButton;
.source "YelpToggleButton.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x1c

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->a()V

    .line 20
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setGravity(I)V

    .line 24
    sget v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;->a:I

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setPadding(IIII)V

    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yelp/android/bf/l;->LargeLightText:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 26
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setGravity(I)V

    .line 30
    sget v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;->a:I

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setPadding(IIII)V

    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yelp/android/bf/l;->LargeBoldWhiteText:I

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setTextAppearance(Landroid/content/Context;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->b()V

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->a()V

    goto :goto_0
.end method
