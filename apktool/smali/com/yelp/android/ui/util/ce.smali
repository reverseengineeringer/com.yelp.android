.class public Lcom/yelp/android/ui/util/ce;
.super Ljava/lang/Object;
.source "TextCountUpdater.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:I

.field protected final b:Landroid/widget/TextView;

.field protected final c:I

.field protected final d:I

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 6

    .prologue
    .line 19
    const/16 v3, 0x32

    const v4, 0x7f0a0010

    const v5, 0x7f0a00b2

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/util/ce;-><init>(Landroid/widget/TextView;IIII)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;IIII)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p2, p0, Lcom/yelp/android/ui/util/ce;->c:I

    .line 40
    iput-object p1, p0, Lcom/yelp/android/ui/util/ce;->b:Landroid/widget/TextView;

    .line 41
    iput p3, p0, Lcom/yelp/android/ui/util/ce;->d:I

    .line 42
    iput p4, p0, Lcom/yelp/android/ui/util/ce;->a:I

    .line 43
    iput p5, p0, Lcom/yelp/android/ui/util/ce;->e:I

    .line 44
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/util/ce;->c:I

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 60
    iget v0, p0, Lcom/yelp/android/ui/util/ce;->c:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 61
    iget v1, p0, Lcom/yelp/android/ui/util/ce;->d:I

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/yelp/android/ui/util/ce;->b:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/yelp/android/ui/util/ce;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ce;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/util/ce;->a:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    :goto_1
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/util/ce;->e:I

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/ce;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
