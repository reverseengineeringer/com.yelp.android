.class Lcom/yelp/android/ui/activities/search/ar;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .prologue
    const v6, 0x7f0701e6

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 457
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    const v2, 0x7f0c021a

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 458
    if-nez p2, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 463
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v0

    .line 468
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02034f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/bj;->a(Landroid/location/Location;)V

    .line 471
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->a(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/bj;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bj;->filter(Ljava/lang/CharSequence;)V

    .line 493
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 494
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 495
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto/16 :goto_0

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02034e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 476
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/as;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/as;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/activities/search/as;->cancel(Z)Z

    .line 479
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    new-instance v1, Lcom/yelp/android/ui/activities/search/as;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    new-instance v3, Landroid/location/Geocoder;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {v3, v4}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/ui/activities/search/as;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/location/Geocoder;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Lcom/yelp/android/ui/activities/search/as;)Lcom/yelp/android/ui/activities/search/as;

    .line 481
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/as;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/as;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 483
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 484
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f0c0487

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 486
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->j(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/ab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 487
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/search/SearchOverlay;->f:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_1

    .line 498
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 500
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ar;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
