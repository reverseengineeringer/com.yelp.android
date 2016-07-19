.class public Lcom/yelp/android/ui/util/al;
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

    const v4, 0x7f0e002c

    const v5, 0x7f0e00fe

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/util/al;-><init>(Landroid/widget/TextView;IIII)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;IIII)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p2, p0, Lcom/yelp/android/ui/util/al;->c:I

    .line 44
    iput-object p1, p0, Lcom/yelp/android/ui/util/al;->b:Landroid/widget/TextView;

    .line 45
    iput p3, p0, Lcom/yelp/android/ui/util/al;->d:I

    .line 46
    iput p4, p0, Lcom/yelp/android/ui/util/al;->a:I

    .line 47
    iput p5, p0, Lcom/yelp/android/ui/util/al;->e:I

    .line 48
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/yelp/android/ui/util/al;->c:I

    return v0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    .line 62
    iget v0, p0, Lcom/yelp/android/ui/util/al;->c:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 63
    iget v1, p0, Lcom/yelp/android/ui/util/al;->d:I

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/yelp/android/ui/util/al;->b:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/yelp/android/ui/util/al;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/util/al;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/util/al;->a:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    :goto_1
    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/util/al;->e:I

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/al;->b:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
