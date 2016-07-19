.class public Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;
.super Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;
.source "CalculatedPriceView.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;


# instance fields
.field private final b:I

.field private c:Ljava/text/NumberFormat;

.field private d:Ljava/math/BigDecimal;

.field private e:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f01003f

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    sget-object v0, Lcom/yelp/android/b$a;->DealQuantityBaseView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    const/4 v1, 0x0

    const v2, 0x7f0704c8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->b:I

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->d:Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->e:Ljava/math/BigDecimal;

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->b:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->c:Ljava/text/NumberFormat;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->d:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->c:Ljava/text/NumberFormat;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->e:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, p1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    return-void
.end method


# virtual methods
.method public a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getQuantity()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->a(I)V

    .line 55
    return-void
.end method

.method public a(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .locals 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->d:Ljava/math/BigDecimal;

    .line 77
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->c:Ljava/text/NumberFormat;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->c:Ljava/text/NumberFormat;

    invoke-virtual {v0, p2}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->c:Ljava/text/NumberFormat;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->d:Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 80
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 93
    check-cast p1, Landroid/os/Bundle;

    .line 94
    const-string/jumbo v0, "super"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 95
    new-instance v0, Ljava/math/BigDecimal;

    const-string/jumbo v1, "quantity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->e:Ljava/math/BigDecimal;

    .line 96
    new-instance v0, Ljava/math/BigDecimal;

    const-string/jumbo v1, "price"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->d:Ljava/math/BigDecimal;

    .line 97
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string/jumbo v1, "super"

    invoke-super {p0}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 86
    const-string/jumbo v1, "quantity"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->e:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string/jumbo v1, "price"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->d:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-object v0
.end method
