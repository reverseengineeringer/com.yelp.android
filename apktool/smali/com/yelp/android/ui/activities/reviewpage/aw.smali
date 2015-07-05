.class public Lcom/yelp/android/ui/activities/reviewpage/aw;
.super Lcom/yelp/android/ui/util/au;
.source "TipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/Tip;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yelp/android/ui/activities/reviewpage/bg;

.field private final d:Lcom/yelp/android/ui/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/x",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yelp/android/ui/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/x",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/yelp/android/ui/util/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/x",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/reviewpage/bg;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 57
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ax;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ax;-><init>(Lcom/yelp/android/ui/activities/reviewpage/aw;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->d:Lcom/yelp/android/ui/util/x;

    .line 64
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ay;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ay;-><init>(Lcom/yelp/android/ui/activities/reviewpage/aw;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->e:Lcom/yelp/android/ui/util/x;

    .line 71
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/az;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/az;-><init>(Lcom/yelp/android/ui/activities/reviewpage/aw;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->f:Lcom/yelp/android/ui/util/x;

    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->b:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->c:Lcom/yelp/android/ui/activities/reviewpage/bg;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->d:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(Lcom/yelp/android/ui/util/x;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->e:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(Lcom/yelp/android/ui/util/x;)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->f:Lcom/yelp/android/ui/util/x;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(Lcom/yelp/android/ui/util/x;)V

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/aw;)Lcom/yelp/android/ui/activities/reviewpage/bg;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->c:Lcom/yelp/android/ui/activities/reviewpage/bg;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 227
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
    .line 219
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/util/List;Lcom/yelp/android/serializable/ay;)I

    move-result v0

    .line 261
    if-ltz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->notifyDataSetChanged()V

    .line 265
    :cond_0
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/util/List;Lcom/yelp/android/serializable/ay;)I

    move-result v0

    .line 276
    if-ltz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 278
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->notifyDataSetChanged()V

    .line 280
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->a:Landroid/view/View$OnClickListener;

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
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(I)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->getItemId(I)J

    move-result-wide v0

    .line 235
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
    .line 240
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(I)Lcom/yelp/android/serializable/Tip;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 244
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

    .line 80
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 82
    if-nez p2, :cond_0

    .line 83
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030151

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/bh;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/bh;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 90
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/bh;

    .line 91
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(I)Lcom/yelp/android/serializable/Tip;

    move-result-object v6

    .line 92
    iget-object v7, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->c:Landroid/widget/TextView;

    .line 93
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->isTipTemporary()Z

    move-result v8

    .line 95
    iget-object v9, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->j:Landroid/view/View;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->isFirstTip()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v9, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->d:Lcom/yelp/android/ui/util/x;

    invoke-virtual {v1, p1, v5, v6}, Lcom/yelp/android/ui/util/x;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v9, v1, v6}, Lcom/yelp/android/ui/util/cr;->a(Landroid/view/View;Landroid/text/Spannable;Lcom/yelp/android/serializable/Tip;)V

    .line 99
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getUserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v7, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->f:Lcom/yelp/android/ui/util/x;

    invoke-virtual {v1, p1, v5, v6}, Lcom/yelp/android/ui/util/x;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getEditedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 106
    :cond_1
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 107
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getEditedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 108
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getEditedBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 116
    :goto_1
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    new-instance v7, Lcom/yelp/android/ui/activities/reviewpage/ba;

    invoke-direct {v7, p0, v6}, Lcom/yelp/android/ui/activities/reviewpage/ba;-><init>(Lcom/yelp/android/ui/activities/reviewpage/aw;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->b:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 124
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->g:Landroid/widget/TextView;

    const v3, 0x7f02012d

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 126
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->g:Landroid/widget/TextView;

    const v3, 0x7f07066e

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHint(I)V

    .line 127
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->d:Landroid/widget/Button;

    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/bb;

    invoke-direct {v3, p0, v6}, Lcom/yelp/android/ui/activities/reviewpage/bb;-><init>(Lcom/yelp/android/ui/activities/reviewpage/aw;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->d:Landroid/widget/Button;

    if-nez v8, :cond_6

    move v1, v4

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 157
    :goto_3
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/aw;->e:Lcom/yelp/android/ui/util/x;

    invoke-virtual {v1, p1, v5, v6}, Lcom/yelp/android/ui/util/x;->a(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->g:Landroid/widget/TextView;

    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/be;

    invoke-direct {v3, p0, v6}, Lcom/yelp/android/ui/activities/reviewpage/be;-><init>(Lcom/yelp/android/ui/activities/reviewpage/aw;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/bf;

    invoke-direct {v1, p0, v6}, Lcom/yelp/android/ui/activities/reviewpage/bf;-><init>(Lcom/yelp/android/ui/activities/reviewpage/aw;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->g:Landroid/widget/TextView;

    if-nez v8, :cond_8

    move v1, v4

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 176
    if-nez v8, :cond_9

    :goto_5
    invoke-virtual {p2, v4}, Landroid/view/View;->setClickable(Z)V

    .line 179
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    return-object p2

    :cond_3
    move v1, v3

    .line 95
    goto/16 :goto_0

    .line 110
    :cond_4
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    :cond_5
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_6
    move v1, v2

    .line 135
    goto :goto_2

    .line 137
    :cond_7
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    .line 138
    iget-object v7, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->h:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setChecked(Z)V

    .line 139
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->h:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    new-instance v7, Lcom/yelp/android/ui/activities/reviewpage/bc;

    invoke-direct {v7, p0, v6, v0}, Lcom/yelp/android/ui/activities/reviewpage/bc;-><init>(Lcom/yelp/android/ui/activities/reviewpage/aw;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/activities/reviewpage/bh;)V

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->i:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    new-instance v7, Lcom/yelp/android/ui/activities/reviewpage/bd;

    invoke-direct {v7, p0, v6, v0}, Lcom/yelp/android/ui/activities/reviewpage/bd;-><init>(Lcom/yelp/android/ui/activities/reviewpage/aw;Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/activities/reviewpage/bh;)V

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->d:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/bh;->g:Landroid/widget/TextView;

    const v3, 0x7f02012a

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    :cond_8
    move v1, v2

    .line 175
    goto :goto_4

    :cond_9
    move v4, v2

    .line 176
    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method
