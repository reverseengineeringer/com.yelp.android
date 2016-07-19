.class public Lcom/yelp/android/ui/util/q;
.super Ljava/lang/Object;
.source "GridViewSizer.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .prologue
    .line 46
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Dimensions must positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput p1, p0, Lcom/yelp/android/ui/util/q;->c:I

    .line 51
    iput p2, p0, Lcom/yelp/android/ui/util/q;->d:I

    .line 52
    return-void
.end method

.method public a(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/yelp/android/ui/util/at$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/q;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Lcom/yelp/android/ui/util/q;->c:I

    iget v1, p0, Lcom/yelp/android/ui/util/q;->d:I

    invoke-interface {p2, p1, v0, v1}, Lcom/yelp/android/ui/util/at$a;->a(Landroid/view/View;II)V

    .line 95
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/q;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget v0, p0, Lcom/yelp/android/ui/util/q;->a:I

    iget v1, p0, Lcom/yelp/android/ui/util/q;->b:I

    invoke-interface {p2, p1, v0, v1}, Lcom/yelp/android/ui/util/at$a;->a(Landroid/view/View;II)V

    goto :goto_0

    .line 85
    :cond_1
    new-instance v0, Lcom/yelp/android/ui/util/q$1;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/util/q$1;-><init>(Lcom/yelp/android/ui/util/q;Lcom/yelp/android/ui/util/at$a;)V

    .line 94
    invoke-static {p1, v0}, Lcom/yelp/android/ui/util/at;->a(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/q;->e:Z

    .line 71
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/yelp/android/ui/util/q;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/util/q;->d:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(II)V
    .locals 0

    .prologue
    .line 57
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iput p1, p0, Lcom/yelp/android/ui/util/q;->a:I

    .line 62
    iput p2, p0, Lcom/yelp/android/ui/util/q;->b:I

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/yelp/android/ui/util/q;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/util/q;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/q;->e:Z

    return v0
.end method
