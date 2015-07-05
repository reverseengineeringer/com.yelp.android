.class public Lcom/yelp/android/ui/util/cg;
.super Landroid/os/CountDownTimer;
.source "TickerTimer.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private final b:I

.field private final c:Ljava/lang/CharSequence;

.field private d:Lcom/yelp/android/ui/util/ch;


# direct methods
.method public constructor <init>(JLandroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/cg;-><init>(JLandroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 24
    return-void
.end method

.method public constructor <init>(JLandroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 7

    .prologue
    .line 27
    const v6, 0x7f0705f4

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/yelp/android/ui/util/cg;-><init>(JLandroid/widget/TextView;Ljava/lang/CharSequence;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(JLandroid/widget/TextView;Ljava/lang/CharSequence;I)V
    .locals 3

    .prologue
    .line 31
    const-wide/16 v0, 0xfa

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 32
    iput-object p3, p0, Lcom/yelp/android/ui/util/cg;->a:Landroid/widget/TextView;

    .line 33
    iput p5, p0, Lcom/yelp/android/ui/util/cg;->b:I

    .line 34
    iput-object p4, p0, Lcom/yelp/android/ui/util/cg;->c:Ljava/lang/CharSequence;

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/util/ch;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yelp/android/ui/util/cg;->d:Lcom/yelp/android/ui/util/ch;

    .line 39
    return-void
.end method

.method public onFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/util/cg;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/cg;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/util/cg;->b:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/util/cg;->d:Lcom/yelp/android/ui/util/ch;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/util/cg;->d:Lcom/yelp/android/ui/util/ch;

    invoke-interface {v0}, Lcom/yelp/android/ui/util/ch;->a()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/cg;->d:Lcom/yelp/android/ui/util/ch;

    .line 58
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    long-to-int v0, p1

    div-int/lit16 v0, v0, 0x3e8

    .line 44
    iget-object v1, p0, Lcom/yelp/android/ui/util/cg;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/util/cg;->b:I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v4, v0, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    rem-int/lit16 v4, v0, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    rem-int/lit8 v0, v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/yelp/android/ui/util/cg;->c:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/yelp/android/ui/util/cg;->c:Ljava/lang/CharSequence;

    new-array v2, v6, [Ljava/lang/CharSequence;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/cg;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
