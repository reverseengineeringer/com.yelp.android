.class public Lcom/yelp/android/ui/util/cn;
.super Ljava/lang/Object;
.source "UserAdapter.java"


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
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const v0, 0x7f0c0246

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 305
    const v0, 0x7f0c0413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->d:Landroid/widget/TextView;

    .line 306
    const v0, 0x7f0c0414

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->f:Landroid/widget/TextView;

    .line 307
    const v0, 0x7f0c0415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->g:Landroid/widget/TextView;

    .line 308
    const v0, 0x1020014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->m:Landroid/widget/CompoundButton;

    .line 309
    const v0, 0x7f0c0417

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->n:Landroid/widget/TextView;

    .line 310
    const v0, 0x7f0c0416

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->h:Landroid/widget/TextView;

    .line 311
    const v0, 0x7f0c03e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->o:Landroid/widget/ImageButton;

    .line 315
    const v0, 0x7f0c0362

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->e:Landroid/widget/TextView;

    .line 317
    if-eqz p2, :cond_0

    .line 318
    const v0, 0x7f0c0292

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->j:Landroid/widget/ImageView;

    .line 319
    const v0, 0x7f0c0293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->k:Landroid/widget/TextView;

    .line 320
    const v0, 0x7f0c0291

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->l:Landroid/widget/TextView;

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070230

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->a:Ljava/lang/CharSequence;

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/util/cn;->a:Ljava/lang/CharSequence;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->a:Ljava/lang/CharSequence;

    .line 324
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/cn;->i:Ljava/util/Map;

    .line 325
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V
    .locals 6

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->d:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 358
    if-eqz p9, :cond_1

    .line 359
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/util/cn;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->e:Landroid/widget/TextView;

    const v2, 0x7f070581

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 367
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->f:Landroid/widget/TextView;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->f:Landroid/widget/TextView;

    const v2, 0x7f0e0010

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->g:Landroid/widget/TextView;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->g:Landroid/widget/TextView;

    const v2, 0x7f0e0022

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, p4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->h:Landroid/widget/TextView;

    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->h:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v2, p5, p6, p7, v0}, Lcom/yelp/android/serializable/Passport;->getMediaQuantityString(ZIIILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/util/cn;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/WebImageView;->reset()V

    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/util/cn;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, p8, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 381
    return-void

    .line 364
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/util/cn;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/DisplayableAsUserBadge;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 328
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/util/cn;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/util/cn;->i:Ljava/util/Map;

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/ContactsFetcher$Contact;

    .line 332
    if-eqz v0, :cond_3

    .line 333
    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 338
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserName()Ljava/lang/String;

    move-result-object v2

    .line 341
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->getPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v10, v0

    .line 343
    :goto_0
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getFriendCount()I

    move-result v3

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getReviewCount()I

    move-result v4

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getPhotoCount()I

    move-result v5

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getVideoCount()I

    move-result v6

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getMediaCount()I

    move-result v7

    if-nez v10, :cond_1

    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v8

    :cond_1
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->isEliteUser()Z

    move-result v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/cn;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 347
    if-eqz v10, :cond_2

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/util/cn;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v10, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 350
    :cond_2
    return-void

    :cond_3
    move-object v10, v8

    goto :goto_0
.end method
