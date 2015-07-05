.class public Lcom/yelp/android/ui/util/bv;
.super Ljava/lang/Object;
.source "SectionedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Clearable:",
        "Landroid/widget/BaseAdapter;",
        ":",
        "Lcom/yelp/android/ui/util/j;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TClearable;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/CharSequence;

.field public final c:[I

.field public final d:I

.field public final e:Landroid/view/View;

.field public final f:Landroid/view/View;

.field public g:Z

.field public final h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;Ljava/lang/CharSequence;[IILandroid/view/View;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClearable;",
            "Ljava/lang/CharSequence;",
            "[II",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/bv;->i:Z

    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    .line 61
    iput-object p2, p0, Lcom/yelp/android/ui/util/bv;->b:Ljava/lang/CharSequence;

    .line 62
    iput-object p3, p0, Lcom/yelp/android/ui/util/bv;->c:[I

    .line 63
    iput p4, p0, Lcom/yelp/android/ui/util/bv;->d:I

    .line 64
    iput-object p5, p0, Lcom/yelp/android/ui/util/bv;->e:Landroid/view/View;

    .line 65
    iput-object p6, p0, Lcom/yelp/android/ui/util/bv;->f:Landroid/view/View;

    .line 66
    if-nez p5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/bv;->g:Z

    .line 67
    if-eqz p6, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/bv;->h:Z

    .line 68
    return-void

    :cond_1
    move v0, v1

    .line 66
    goto :goto_0

    :cond_2
    move v2, v1

    .line 67
    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/util/bv;->f:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/util/bv;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/yelp/android/ui/util/bv;->e:Landroid/view/View;

    .line 96
    :cond_0
    :goto_0
    return-object v1

    .line 83
    :cond_1
    if-nez p1, :cond_2

    .line 84
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/yelp/android/ui/util/bv;->d:I

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :goto_1
    move-object v0, v1

    .line 86
    check-cast v0, Landroid/widget/TextView;

    .line 87
    iget-object v2, p0, Lcom/yelp/android/ui/util/bv;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v2, p0, Lcom/yelp/android/ui/util/bv;->c:[I

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/yelp/android/ui/util/bv;->c:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/yelp/android/ui/util/bv;->c:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/yelp/android/ui/util/bv;->c:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/yelp/android/ui/util/bv;->c:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_1
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 110
    iput-object p1, p0, Lcom/yelp/android/ui/util/bv;->b:Ljava/lang/CharSequence;

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/util/bv;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/bv;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/bv;->g:Z

    .line 112
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "\nSection[types:%s, header:%s, footer:%s size:%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/yelp/android/ui/util/bv;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/yelp/android/ui/util/bv;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Empty"

    goto :goto_0
.end method
