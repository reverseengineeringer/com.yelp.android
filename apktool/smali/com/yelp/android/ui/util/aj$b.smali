.class public Lcom/yelp/android/ui/util/aj$b;
.super Ljava/lang/Object;
.source "SectionedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Clearable:",
        "Landroid/widget/BaseAdapter;",
        ":",
        "Lcom/yelp/android/ui/util/g;",
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

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/aj$b;->i:Z

    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    .line 67
    iput-object p2, p0, Lcom/yelp/android/ui/util/aj$b;->b:Ljava/lang/CharSequence;

    .line 68
    iput-object p3, p0, Lcom/yelp/android/ui/util/aj$b;->c:[I

    .line 69
    iput p4, p0, Lcom/yelp/android/ui/util/aj$b;->d:I

    .line 70
    iput-object p5, p0, Lcom/yelp/android/ui/util/aj$b;->e:Landroid/view/View;

    .line 71
    iput-object p6, p0, Lcom/yelp/android/ui/util/aj$b;->f:Landroid/view/View;

    .line 72
    if-nez p5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    .line 73
    if-eqz p6, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    .line 74
    return-void

    :cond_1
    move v0, v1

    .line 72
    goto :goto_0

    :cond_2
    move v2, v1

    .line 73
    goto :goto_1
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$b;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/yelp/android/ui/util/aj$b;->e:Landroid/view/View;

    .line 136
    :cond_0
    :goto_0
    return-object v1

    .line 123
    :cond_1
    if-nez p1, :cond_3

    .line 124
    if-nez p2, :cond_2

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "If convertView is null a parent must be supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/yelp/android/ui/util/aj$b;->d:I

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :goto_1
    move-object v0, v1

    .line 130
    check-cast v0, Landroid/widget/TextView;

    .line 131
    iget-object v2, p0, Lcom/yelp/android/ui/util/aj$b;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v2, p0, Lcom/yelp/android/ui/util/aj$b;->c:[I

    if-eqz v2, :cond_0

    .line 133
    iget-object v2, p0, Lcom/yelp/android/ui/util/aj$b;->c:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/yelp/android/ui/util/aj$b;->c:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/yelp/android/ui/util/aj$b;->c:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcom/yelp/android/ui/util/aj$b;->c:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/aj$b;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/util/aj$b;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$b;->e:Landroid/view/View;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 92
    iput-object p1, p0, Lcom/yelp/android/ui/util/aj$b;->b:Ljava/lang/CharSequence;

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$b;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$b;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    .line 94
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$b;->f:Landroid/view/View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "\nSection[types:%s, header:%s, footer:%s size:%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/yelp/android/ui/util/aj$b;->g:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/yelp/android/ui/util/aj$b;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Empty"

    goto :goto_0
.end method
