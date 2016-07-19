.class Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;
.super Ljava/lang/Object;
.source "ComboMapListActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;
.implements Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;",
        "Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

.field private b:F

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Landroid/view/VelocityTracker;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 341
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->c:Z

    .line 345
    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$1;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;-><init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e()V

    .line 505
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Z)Z

    .line 507
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l()Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d()V

    .line 509
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i()V

    .line 512
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const v1, 0x459c4000    # 5000.0f

    .line 454
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->d(I)V

    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b(F)V

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e()V

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a(F)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboListFragment",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment;Ljava/lang/Object;)V

    .line 446
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 362
    :goto_0
    return v1

    .line 358
    :pswitch_0
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->e:Z

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    iput-boolean v2, v0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->b:Z

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c()V

    .line 517
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->e(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Z)Z

    .line 519
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l()Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->j()V

    .line 523
    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 439
    :goto_0
    :pswitch_0
    return v0

    .line 380
    :pswitch_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->d()Z

    move-result v0

    goto :goto_0

    .line 382
    :pswitch_2
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->c:Z

    if-nez v2, :cond_0

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->b:F

    .line 386
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->getTranslation()I

    move-result v2

    iput v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->d:I

    .line 387
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->c:Z

    .line 388
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->e:Z

    .line 389
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    .line 390
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 399
    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->e:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->b:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    move v0, v1

    .line 400
    goto :goto_0

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    iput-boolean v0, v2, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->b:Z

    .line 403
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->e:Z

    .line 407
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->b:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->d:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 408
    if-gtz v2, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->b()V

    .line 412
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    .line 413
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->c:Z

    goto :goto_0

    .line 415
    :cond_2
    if-lez v2, :cond_3

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->a(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e()V

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->getBottomThreshold()I

    move-result v0

    .line 422
    if-lt v2, v0, :cond_4

    .line 423
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    move v0, v1

    .line 424
    goto/16 :goto_0

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    .line 433
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 435
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 436
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v0, v1

    .line 437
    goto/16 :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->c:Z

    return v0
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 472
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->c:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->e:Z

    if-eqz v1, :cond_2

    .line 473
    :cond_0
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->c:Z

    .line 474
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 477
    iput-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    .line 499
    :cond_1
    :goto_0
    return v0

    .line 482
    :cond_2
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->c:Z

    .line 484
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 485
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 487
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_4

    .line 488
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b(F)V

    .line 497
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 498
    iput-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->f:Landroid/view/VelocityTracker;

    .line 499
    const/4 v0, 0x1

    goto :goto_0

    .line 490
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->d(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a(F)V

    .line 491
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->l()Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    .line 492
    if-eqz v0, :cond_3

    .line 493
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->i()V

    goto :goto_1
.end method
