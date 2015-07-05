.class public abstract Lcom/yelp/android/ui/util/AndroidListFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "AndroidListFragment.java"


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/lang/Runnable;

.field private final c:Landroid/widget/AdapterView$OnItemClickListener;

.field private d:Landroid/widget/ListAdapter;

.field private e:Landroid/widget/ListView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Ljava/lang/CharSequence;

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 158
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->a:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/yelp/android/ui/util/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/c;-><init>(Lcom/yelp/android/ui/util/AndroidListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->b:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/yelp/android/ui/util/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/d;-><init>(Lcom/yelp/android/ui/util/AndroidListFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 185
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

    .line 347
    invoke-direct {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->b()V

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->l:Z

    if-ne v0, p1, :cond_1

    .line 380
    :goto_0
    return-void

    .line 354
    :cond_1
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->l:Z

    .line 355
    if-eqz p1, :cond_3

    .line 356
    if-eqz p2, :cond_2

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 365
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 368
    :cond_3
    if-eqz p2, :cond_4

    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 377
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 374
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 394
    if-nez v0, :cond_1

    .line 395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_1
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_4

    .line 398
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    .line 428
    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->l:Z

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->c:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 430
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    .line 432
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    .line 433
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(Landroid/widget/ListAdapter;)V

    .line 441
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 400
    :cond_4
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->h:Landroid/widget/TextView;

    .line 402
    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->h:Landroid/widget/TextView;

    if-nez v1, :cond_5

    .line 403
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/view/View;

    .line 407
    :goto_3
    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    .line 408
    const v1, 0x7f0c0027

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->j:Landroid/view/View;

    .line 409
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 410
    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_6

    .line 411
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->h:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 415
    :cond_6
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    if-nez v0, :cond_7

    .line 417
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 423
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->k:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 437
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 438
    invoke-direct {p0, v3, v3}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(ZZ)V

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Landroid/widget/ListAdapter;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    move v0, v1

    .line 249
    :goto_0
    iput-object p1, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    .line 250
    iget-object v3, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 252
    iget-boolean v3, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->l:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(ZZ)V

    .line 258
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 248
    goto :goto_0
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->b()V

    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 267
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 204
    const v0, 0x7f0300ae

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

    iput-object v2, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->g:Landroid/view/View;

    .line 226
    iput-object v2, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->h:Landroid/widget/TextView;

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

.method public r()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->d:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public t()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/yelp/android/ui/util/AndroidListFragment;->b()V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment;->e:Landroid/widget/ListView;

    return-object v0
.end method
