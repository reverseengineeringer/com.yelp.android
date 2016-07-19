.class public abstract Lcom/yelp/android/ui/util/AndroidListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "AndroidListFragment.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/lang/Runnable;

.field private final c:Landroid/widget/AdapterView$OnItemClickListener;

.field private d:Landroid/widget/ListAdapter;

.field private e:Landroid/widget/ListView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/CharSequence;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 159
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->a:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/yelp/android/ui/util/AndroidListFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/AndroidListFragment$1;-><init>(Lcom/yelp/android/ui/util/AndroidListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->b:Ljava/lang/Runnable;

    .line 169
    new-instance v0, Lcom/yelp/android/ui/util/AndroidListFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/AndroidListFragment$2;-><init>(Lcom/yelp/android/ui/util/AndroidListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 186
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/AndroidListFragment;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    return-object v0
.end method

.method private a(ZZ)V
    .locals 6

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 346
    invoke-direct {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->b()V

    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->l:Z

    if-ne v0, p1, :cond_1

    .line 379
    :goto_0
    return-void

    .line 353
    :cond_1
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->l:Z

    .line 354
    if-eqz p1, :cond_3

    .line 355
    if-eqz p2, :cond_2

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 367
    :cond_3
    if-eqz p2, :cond_4

    .line 368
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 376
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 393
    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_1
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 397
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    .line 426
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->l:Z

    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    .line 430
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    .line 431
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 439
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 399
    :cond_4
    const v1, 0x7f0f0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/widget/TextView;

    .line 400
    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/widget/TextView;

    if-nez v1, :cond_5

    .line 401
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->f:Landroid/view/View;

    .line 405
    :goto_3
    const v1, 0x7f0f0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    .line 406
    const v1, 0x7f0f002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    .line 407
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 408
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_6

    .line 409
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 413
    :cond_6
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    if-nez v0, :cond_7

    .line 415
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->f:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 421
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 435
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 436
    invoke-direct {p0, v3, v3}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(ZZ)V

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    move v0, v1

    .line 248
    :goto_0
    iput-object p1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    .line 249
    iget-object v3, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 250
    iget-object v3, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 251
    iget-boolean v3, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->l:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(ZZ)V

    .line 257
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 247
    goto :goto_0
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->b()V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 266
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 205
    const v0, 0x7f0300c7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    iput-object v2, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->l:Z

    .line 225
    iput-object v2, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    iput-object v2, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    iput-object v2, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->f:Landroid/view/View;

    .line 226
    iput-object v2, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/widget/TextView;

    .line 227
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onDestroyView()V

    .line 228
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 214
    invoke-direct {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->b()V

    .line 215
    return-void
.end method

.method public q()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public s()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->b()V

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    return-object v0
.end method
