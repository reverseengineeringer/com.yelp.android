.class Landroid/support/design/internal/b$a;
.super Landroid/widget/BaseAdapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/internal/b;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/support/v7/internal/view/menu/h;

.field private d:Landroid/graphics/drawable/ColorDrawable;

.field private e:Z


# direct methods
.method constructor <init>(Landroid/support/design/internal/b;)V
    .locals 1

    .prologue
    .line 278
    iput-object p1, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    .line 279
    invoke-direct {p0}, Landroid/support/design/internal/b$a;->b()V

    .line 280
    return-void
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 446
    :goto_0
    if-ge p1, p2, :cond_2

    .line 447
    iget-object v0, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/b$b;

    invoke-virtual {v0}, Landroid/support/design/internal/b$b;->d()Landroid/support/v7/internal/view/menu/h;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 449
    iget-object v1, p0, Landroid/support/design/internal/b$a;->d:Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Landroid/support/design/internal/b$a;->d:Landroid/graphics/drawable/ColorDrawable;

    .line 452
    :cond_0
    iget-object v1, p0, Landroid/support/design/internal/b$a;->d:Landroid/graphics/drawable/ColorDrawable;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 446
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 455
    :cond_2
    return-void
.end method

.method private b()V
    .locals 15

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 377
    iget-boolean v0, p0, Landroid/support/design/internal/b$a;->e:Z

    if-eqz v0, :cond_0

    .line 443
    :goto_0
    return-void

    .line 380
    :cond_0
    iput-boolean v3, p0, Landroid/support/design/internal/b$a;->e:Z

    .line 381
    iget-object v0, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 382
    const/4 v6, -0x1

    .line 385
    iget-object v0, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v0}, Landroid/support/design/internal/b;->g(Landroid/support/design/internal/b;)Landroid/support/v7/internal/view/menu/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    move v9, v8

    move v4, v8

    move v5, v8

    :goto_1
    if-ge v9, v10, :cond_e

    .line 386
    iget-object v0, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v0}, Landroid/support/design/internal/b;->g(Landroid/support/design/internal/b;)Landroid/support/v7/internal/view/menu/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->i()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/h;

    .line 387
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {p0, v0}, Landroid/support/design/internal/b$a;->a(Landroid/support/v7/internal/view/menu/h;)V

    .line 390
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 391
    invoke-virtual {v0, v8}, Landroid/support/v7/internal/view/menu/h;->a(Z)V

    .line 393
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 394
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v11

    .line 395
    invoke-interface {v11}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 396
    if-eqz v9, :cond_3

    .line 397
    iget-object v1, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->h(Landroid/support/design/internal/b;)I

    move-result v2

    invoke-static {v2, v8}, Landroid/support/design/internal/b$b;->a(II)Landroid/support/design/internal/b$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_3
    iget-object v1, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/design/internal/b$b;->a(Landroid/support/v7/internal/view/menu/h;)Landroid/support/design/internal/b$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v1, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 402
    invoke-interface {v11}, Landroid/view/SubMenu;->size()I

    move-result v13

    move v7, v8

    move v2, v8

    :goto_2
    if-ge v7, v13, :cond_8

    .line 403
    invoke-interface {v11, v7}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/view/menu/h;

    .line 404
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/h;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 405
    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_4

    move v2, v3

    .line 408
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/h;->isCheckable()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 409
    invoke-virtual {v1, v8}, Landroid/support/v7/internal/view/menu/h;->a(Z)V

    .line 411
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 412
    invoke-virtual {p0, v0}, Landroid/support/design/internal/b$a;->a(Landroid/support/v7/internal/view/menu/h;)V

    .line 414
    :cond_6
    iget-object v14, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/support/design/internal/b$b;->a(Landroid/support/v7/internal/view/menu/h;)Landroid/support/design/internal/b$b;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_7
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    .line 417
    :cond_8
    if-eqz v2, :cond_9

    .line 418
    iget-object v0, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, v12, v0}, Landroid/support/design/internal/b$a;->a(II)V

    :cond_9
    move v0, v4

    move v1, v5

    move v2, v6

    .line 385
    :goto_3
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v5, v1

    move v6, v2

    move v4, v0

    goto/16 :goto_1

    .line 422
    :cond_a
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->getGroupId()I

    move-result v7

    .line 423
    if-eq v7, v6, :cond_d

    .line 424
    iget-object v1, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 425
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c

    move v4, v3

    .line 426
    :goto_4
    if-eqz v9, :cond_f

    .line 427
    add-int/lit8 v5, v5, 0x1

    .line 428
    iget-object v1, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->h(Landroid/support/design/internal/b;)I

    move-result v2

    iget-object v6, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v6}, Landroid/support/design/internal/b;->h(Landroid/support/design/internal/b;)I

    move-result v6

    invoke-static {v2, v6}, Landroid/support/design/internal/b$b;->a(II)Landroid/support/design/internal/b$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    move v2, v5

    .line 435
    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_b

    .line 436
    const v4, 0x106000d

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/view/menu/h;->setIcon(I)Landroid/view/MenuItem;

    .line 438
    :cond_b
    iget-object v4, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Landroid/support/design/internal/b$b;->a(Landroid/support/v7/internal/view/menu/h;)Landroid/support/design/internal/b$b;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v2

    move v2, v7

    .line 439
    goto :goto_3

    :cond_c
    move v4, v8

    .line 425
    goto :goto_4

    .line 431
    :cond_d
    if-nez v4, :cond_f

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 433
    iget-object v1, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v5, v1}, Landroid/support/design/internal/b$a;->a(II)V

    move v1, v3

    move v2, v5

    goto :goto_5

    .line 442
    :cond_e
    iput-boolean v8, p0, Landroid/support/design/internal/b$a;->e:Z

    goto/16 :goto_0

    :cond_f
    move v1, v4

    move v2, v5

    goto :goto_5
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 469
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 470
    iget-object v1, p0, Landroid/support/design/internal/b$a;->c:Landroid/support/v7/internal/view/menu/h;

    if-eqz v1, :cond_0

    .line 471
    const-string/jumbo v1, "android:menu:checked"

    iget-object v2, p0, Landroid/support/design/internal/b$a;->c:Landroid/support/v7/internal/view/menu/h;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/h;->getItemId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    :cond_0
    return-object v0
.end method

.method public a(I)Landroid/support/design/internal/b$b;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/b$b;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 477
    const-string/jumbo v0, "android:menu:checked"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 478
    if-eqz v1, :cond_2

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/internal/b$a;->e:Z

    .line 480
    iget-object v0, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/b$b;

    .line 481
    invoke-virtual {v0}, Landroid/support/design/internal/b$b;->d()Landroid/support/v7/internal/view/menu/h;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->getItemId()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 483
    invoke-virtual {p0, v0}, Landroid/support/design/internal/b$a;->a(Landroid/support/v7/internal/view/menu/h;)V

    .line 487
    :cond_1
    iput-boolean v4, p0, Landroid/support/design/internal/b$a;->e:Z

    .line 488
    invoke-direct {p0}, Landroid/support/design/internal/b$a;->b()V

    .line 490
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/h;)V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/design/internal/b$a;->c:Landroid/support/v7/internal/view/menu/h;

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/h;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Landroid/support/design/internal/b$a;->c:Landroid/support/v7/internal/view/menu/h;

    if-eqz v0, :cond_2

    .line 462
    iget-object v0, p0, Landroid/support/design/internal/b$a;->c:Landroid/support/v7/internal/view/menu/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/h;->setChecked(Z)Landroid/view/MenuItem;

    .line 464
    :cond_2
    iput-object p1, p0, Landroid/support/design/internal/b$a;->c:Landroid/support/v7/internal/view/menu/h;

    .line 465
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/view/menu/h;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 493
    iput-boolean p1, p0, Landroid/support/design/internal/b$a;->e:Z

    .line 494
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/design/internal/b$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b$a;->a(I)Landroid/support/design/internal/b$b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 294
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b$a;->a(I)Landroid/support/design/internal/b$b;

    move-result-object v0

    .line 305
    invoke-virtual {v0}, Landroid/support/design/internal/b$b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    const/4 v0, 0x2

    .line 310
    :goto_0
    return v0

    .line 307
    :cond_0
    invoke-virtual {v0}, Landroid/support/design/internal/b$b;->d()Landroid/support/v7/internal/view/menu/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/h;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 316
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b$a;->a(I)Landroid/support/design/internal/b$b;

    move-result-object v3

    .line 317
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b$a;->getItemViewType(I)I

    move-result v0

    .line 318
    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v1, p2

    .line 353
    :goto_1
    return-object v1

    .line 320
    :pswitch_0
    if-nez p2, :cond_5

    .line 321
    iget-object v0, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v0}, Landroid/support/design/internal/b;->a(Landroid/support/design/internal/b;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yelp/android/a/a$g;->design_navigation_item:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_2
    move-object v0, v1

    .line 324
    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    .line 325
    iget-object v2, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->b(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 326
    iget-object v2, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->c(Landroid/support/design/internal/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v4}, Landroid/support/design/internal/b;->d(Landroid/support/design/internal/b;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(Landroid/content/Context;I)V

    .line 329
    :cond_0
    iget-object v2, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->e(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->e(Landroid/support/design/internal/b;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 332
    :cond_1
    iget-object v2, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->f(Landroid/support/design/internal/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v2}, Landroid/support/design/internal/b;->f(Landroid/support/design/internal/b;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/support/design/internal/NavigationMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 334
    invoke-virtual {v3}, Landroid/support/design/internal/b$b;->d()Landroid/support/v7/internal/view/menu/h;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Landroid/support/design/internal/NavigationMenuItemView;->a(Landroid/support/v7/internal/view/menu/h;I)V

    goto :goto_1

    .line 332
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 337
    :pswitch_1
    if-nez p2, :cond_4

    .line 338
    iget-object v0, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v0}, Landroid/support/design/internal/b;->a(Landroid/support/design/internal/b;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yelp/android/a/a$g;->design_navigation_item_subheader:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    :goto_4
    move-object v0, v1

    .line 341
    check-cast v0, Landroid/widget/TextView;

    .line 342
    invoke-virtual {v3}, Landroid/support/design/internal/b$b;->d()Landroid/support/v7/internal/view/menu/h;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/h;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 345
    :pswitch_2
    if-nez p2, :cond_3

    .line 346
    iget-object v0, p0, Landroid/support/design/internal/b$a;->a:Landroid/support/design/internal/b;

    invoke-static {v0}, Landroid/support/design/internal/b;->a(Landroid/support/design/internal/b;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yelp/android/a/a$g;->design_navigation_item_separator:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 349
    :cond_3
    invoke-virtual {v3}, Landroid/support/design/internal/b$b;->b()I

    move-result v0

    invoke-virtual {v3}, Landroid/support/design/internal/b$b;->c()I

    move-result v1

    invoke-virtual {p2, v5, v0, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_4
    move-object v1, p2

    goto :goto_4

    :cond_5
    move-object v1, p2

    goto/16 :goto_2

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0, p1}, Landroid/support/design/internal/b$a;->a(I)Landroid/support/design/internal/b$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/internal/b$b;->e()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Landroid/support/design/internal/b$a;->b()V

    .line 369
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 370
    return-void
.end method
