.class public Lcom/yelp/android/ui/util/ap$b;
.super Ljava/lang/Object;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field public final c:Lcom/yelp/android/ui/widgets/WebImageView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;"
        }
    .end annotation
.end field

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/CompoundButton;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    const v0, 0x7f0f025a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 310
    const v0, 0x7f0f025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->d:Landroid/widget/TextView;

    .line 311
    const v0, 0x7f0f0250

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->f:Landroid/widget/TextView;

    .line 312
    const v0, 0x7f0f04fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->g:Landroid/widget/TextView;

    .line 313
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->m:Landroid/widget/CompoundButton;

    .line 314
    const v0, 0x7f0f04fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->n:Landroid/widget/TextView;

    .line 315
    const v0, 0x7f0f04fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->h:Landroid/widget/TextView;

    .line 316
    const v0, 0x7f0f04c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->o:Landroid/widget/ImageButton;

    .line 320
    const v0, 0x7f0f043c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->e:Landroid/widget/TextView;

    .line 322
    if-eqz p2, :cond_0

    .line 323
    const v0, 0x7f0f02e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->j:Landroid/widget/ImageView;

    .line 324
    const v0, 0x7f0f02ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->k:Landroid/widget/TextView;

    .line 325
    const v0, 0x7f0f02e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->l:Landroid/widget/TextView;

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070281

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->a:Ljava/lang/CharSequence;

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->a:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/yelp/android/serializable/User;->j()Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->a:Ljava/lang/CharSequence;

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->i:Ljava/util/Map;

    .line 330
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 378
    if-eqz p9, :cond_1

    .line 379
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ap$b;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->e:Landroid/widget/TextView;

    const v2, 0x7f070589

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 387
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->f:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->f:Landroid/widget/TextView;

    const v2, 0x7f080010

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->g:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->g:Landroid/widget/TextView;

    const v2, 0x7f080025

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, p4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->h:Landroid/widget/TextView;

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->h:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v2, p5, p6, p7, v0}, Lcom/yelp/android/serializable/Passport;->a(ZIIILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WebImageView;->reset()V

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f0200c6

    invoke-virtual {v0, p8, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 401
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/util/ap$b;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/DisplayableAsUserBadge;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 333
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->a()Ljava/lang/String;

    move-result-object v2

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->i:Ljava/util/Map;

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ContactsFetcher$Contact;

    .line 337
    if-eqz v0, :cond_3

    .line 338
    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 339
    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 343
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->a()Ljava/lang/String;

    move-result-object v2

    .line 346
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->e(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v10, v0

    .line 348
    :goto_0
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->k_()I

    move-result v3

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->j_()I

    move-result v4

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->l_()I

    move-result v5

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->m_()I

    move-result v6

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->n_()I

    move-result v7

    if-nez v10, :cond_1

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->c()Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->h()Z

    move-result v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/ap$b;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 359
    if-eqz v10, :cond_2

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/util/ap$b;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 362
    :cond_2
    return-void

    :cond_3
    move-object v10, v8

    goto :goto_0
.end method
