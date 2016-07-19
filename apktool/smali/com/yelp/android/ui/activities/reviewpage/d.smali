.class public Lcom/yelp/android/ui/activities/reviewpage/d;
.super Lcom/yelp/android/ui/util/w;
.source "TipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/d$a;,
        Lcom/yelp/android/ui/activities/reviewpage/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/Tip;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yelp/android/ui/activities/reviewpage/d$a;

.field private final d:Lcom/yelp/android/ui/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/m",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yelp/android/ui/util/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/m",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/reviewpage/d$a;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 56
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/d$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/d$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/d;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->d:Lcom/yelp/android/ui/util/m;

    .line 65
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/d$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/d$2;-><init>(Lcom/yelp/android/ui/activities/reviewpage/d;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->e:Lcom/yelp/android/ui/util/m;

    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->b:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->c:Lcom/yelp/android/ui/activities/reviewpage/d$a;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->d:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(Lcom/yelp/android/ui/util/m;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->e:Lcom/yelp/android/ui/util/m;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(Lcom/yelp/android/ui/util/m;)V

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/d;)Lcom/yelp/android/ui/activities/reviewpage/d$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->c:Lcom/yelp/android/ui/activities/reviewpage/d$a;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 223
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 225
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/as;->a(Ljava/util/List;Lcom/yelp/android/serializable/b;)I

    move-result v0

    .line 259
    if-ltz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/d;->notifyDataSetChanged()V

    .line 263
    :cond_0
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/d;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/as;->a(Ljava/util/List;Lcom/yelp/android/serializable/b;)I

    move-result v0

    .line 274
    if-ltz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 276
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/d;->notifyDataSetChanged()V

    .line 278
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(I)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 231
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItemId(I)J

    move-result-wide v0

    .line 233
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(I)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 77
    if-nez p2, :cond_0

    .line 78
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301b4

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 81
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/d$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;

    .line 89
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(I)Lcom/yelp/android/serializable/Tip;

    move-result-object v6

    .line 90
    iget-object v7, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->c:Landroid/widget/TextView;

    .line 91
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->j()Z

    move-result v8

    .line 93
    iget-object v9, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->j:Landroid/view/View;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v7, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->e:Lcom/yelp/android/ui/util/m;

    invoke-virtual {v1, p1, v5, v6}, Lcom/yelp/android/ui/util/m;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 102
    :cond_1
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 103
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->f()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 112
    :goto_1
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    new-instance v7, Lcom/yelp/android/ui/activities/reviewpage/d$3;

    invoke-direct {v7, p0, v6}, Lcom/yelp/android/ui/activities/reviewpage/d$3;-><init>(Lcom/yelp/android/ui/activities/reviewpage/d;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 121
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->g:Landroid/widget/TextView;

    const v3, 0x7f02018a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 123
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->g:Landroid/widget/TextView;

    const v3, 0x7f070649

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 124
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->d:Landroid/widget/Button;

    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/d$4;

    invoke-direct {v3, p0, v6}, Lcom/yelp/android/ui/activities/reviewpage/d$4;-><init>(Lcom/yelp/android/ui/activities/reviewpage/d;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->d:Landroid/widget/Button;

    if-nez v8, :cond_5

    move v1, v4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    :goto_3
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/d;->d:Lcom/yelp/android/ui/util/m;

    invoke-virtual {v1, p1, v5, v6}, Lcom/yelp/android/ui/util/m;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/d$7;

    invoke-direct {v3, p0, v6}, Lcom/yelp/android/ui/activities/reviewpage/d$7;-><init>(Lcom/yelp/android/ui/activities/reviewpage/d;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/d$8;

    invoke-direct {v1, p0, v6}, Lcom/yelp/android/ui/activities/reviewpage/d$8;-><init>(Lcom/yelp/android/ui/activities/reviewpage/d;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->g:Landroid/widget/TextView;

    if-nez v8, :cond_7

    move v0, v4

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 177
    if-nez v8, :cond_8

    :goto_5
    invoke-virtual {p2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 178
    return-object p2

    :cond_2
    move v1, v3

    .line 93
    goto/16 :goto_0

    .line 106
    :cond_3
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_4
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v1, v2

    .line 133
    goto :goto_2

    .line 135
    :cond_6
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    .line 136
    iget-object v7, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->h:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setChecked(Z)V

    .line 137
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->h:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    new-instance v7, Lcom/yelp/android/ui/activities/reviewpage/d$5;

    invoke-direct {v7, p0, v6, v0}, Lcom/yelp/android/ui/activities/reviewpage/d$5;-><init>(Lcom/yelp/android/ui/activities/reviewpage/d;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/activities/reviewpage/d$b;)V

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->i:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    new-instance v7, Lcom/yelp/android/ui/activities/reviewpage/d$6;

    invoke-direct {v7, p0, v6, v0}, Lcom/yelp/android/ui/activities/reviewpage/d$6;-><init>(Lcom/yelp/android/ui/activities/reviewpage/d;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/activities/reviewpage/d$b;)V

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->d:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/d$b;->g:Landroid/widget/TextView;

    const v3, 0x7f020187

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_7
    move v0, v2

    .line 176
    goto :goto_4

    :cond_8
    move v4, v2

    .line 177
    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method
