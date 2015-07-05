.class public Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityReviewWrite.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/activities/reviews/ao;
.implements Lcom/yelp/android/ui/panels/aa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/fg;",
        ">;",
        "Lcom/yelp/android/ui/activities/reviews/ao;",
        "Lcom/yelp/android/ui/panels/aa;"
    }
.end annotation


# instance fields
.field private A:Lcom/yelp/android/appdata/webrequests/ac;

.field private B:Lcom/yelp/android/appdata/webrequests/ff;

.field private C:Lcom/yelp/android/appdata/webrequests/es;

.field private D:Lcom/yelp/android/appdata/webrequests/fp;

.field private E:Z

.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewThreshold;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yelp/android/serializable/ReviewDraft;

.field private e:Lcom/yelp/android/serializable/Review;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

.field private i:Lcom/yelp/android/ui/activities/reviews/ReviewState;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/widget/TextView;

.field private v:Lcom/yelp/android/ui/panels/PanelLoading;

.field private w:Lcom/yelp/android/ui/panels/PanelError;

.field private x:Landroid/support/v4/app/FragmentManager;

.field private y:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

.field private z:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 110
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    .line 114
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    .line 115
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    .line 116
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    .line 117
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->Empty:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 119
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    .line 120
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->s:Z

    .line 121
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Z

    .line 830
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    return p1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 149
    invoke-static {p0, p1, p3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    const-string/jumbo v1, "extra_num_stars"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    const-string/jumbo v1, "extra_business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 142
    const-string/jumbo v1, "extra_intend_review_state"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v1, "extra_review_source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 144
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 163
    const-string/jumbo v1, "extra_business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string/jumbo v1, "extra_review_source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 156
    invoke-static {p0, p1, p3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    const-string/jumbo v1, "extra_intend_review_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Lcom/yelp/android/ui/panels/PanelError;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/ui/activities/reviews/ReviewState;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V
    .locals 3

    .prologue
    .line 767
    new-instance v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;-><init>()V

    .line 768
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 769
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->setBusinessId(Ljava/lang/String;)V

    .line 773
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewBroadcast;->setReviewState(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 774
    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->setRating(I)V

    .line 775
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->setText(Ljava/lang/String;)V

    .line 776
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    if-eqz v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewDraft;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->setId(Ljava/lang/String;)V

    .line 781
    :cond_1
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.review.state.update"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 784
    return-void

    .line 770
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->setBusinessId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Z)Z
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->E:Z

    return p1
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 822
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 823
    :goto_0
    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    if-eq p2, v3, :cond_3

    move v3, v1

    .line 824
    :goto_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v4

    .line 825
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 822
    goto :goto_0

    :cond_3
    move v3, v2

    .line 823
    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    return p1
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 191
    invoke-static {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 192
    const-string/jumbo v1, "extra_ynra_review"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 170
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 171
    const-string/jumbo v1, "extra_force_review_edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 177
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-static {p0, p1, v0, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    const-string/jumbo v1, "extra_force_review_edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 492
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 493
    sget v1, Lcom/yelp/android/ui/util/cw;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 495
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 496
    sget v2, Lcom/yelp/android/ui/util/cw;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 498
    new-instance v2, Lcom/yelp/android/ui/activities/reviews/o;

    invoke-direct {v2, p0, p1, v1}, Lcom/yelp/android/ui/activities/reviews/o;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 515
    new-instance v2, Lcom/yelp/android/ui/activities/reviews/p;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/reviews/p;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 528
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 529
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    invoke-virtual {p0, p1, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 531
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 536
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 534
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 183
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-static {p0, p1, v0, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "extra_update_selected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Lcom/yelp/android/ui/panels/PanelError;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->E:Z

    return v0
.end method

.method private r()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 346
    sget-object v1, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteClose:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 350
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->x:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "compose_fragment_key"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c()V

    .line 413
    :goto_0
    return v0

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->m:I

    iget v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    iget v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    if-ne v1, v2, :cond_2

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    goto :goto_0

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 372
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v()V

    goto :goto_0

    .line 374
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 375
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    const v2, 0x7f0702d4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070519

    new-instance v3, Lcom/yelp/android/ui/activities/reviews/m;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/reviews/m;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0701f6

    new-instance v3, Lcom/yelp/android/ui/activities/reviews/l;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/reviews/l;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 399
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 401
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    const v2, 0x7f07050b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07030b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070336

    new-instance v3, Lcom/yelp/android/ui/activities/reviews/n;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/reviews/n;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 433
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 434
    const v1, 0x7f02023d

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 435
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 438
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 451
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eqz v0, :cond_3

    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_1

    .line 442
    const v0, 0x7f070683

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 443
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    if-eqz v0, :cond_2

    .line 444
    const v0, 0x7f07022d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 449
    :cond_3
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ff;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ff;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 652
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ff;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/ff;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ff;

    .line 653
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ff;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ff;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 654
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 655
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 658
    :cond_1
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 661
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/es;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/es;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/es;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 662
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/es;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/r;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/r;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/es;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/es;

    .line 712
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/es;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/es;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 713
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    const v1, 0x7f0701fb

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->b(I)V

    .line 714
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 716
    :cond_1
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 719
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ac;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 764
    :goto_0
    return-void

    .line 723
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ac;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/t;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/reviews/t;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ac;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ac;

    .line 760
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ac;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ac;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 761
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 763
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 545
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    const v1, 0x7f07021c

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 547
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/q;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/reviews/q;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 554
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 942
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 943
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fg;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fg;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 573
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    .line 575
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 577
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fg;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c:Ljava/util/ArrayList;

    .line 578
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fg;->d()Lcom/yelp/android/serializable/Review;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    .line 579
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fg;->c()Lcom/yelp/android/serializable/ReviewDraft;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    .line 580
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fg;->a()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 583
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    if-eqz v0, :cond_2

    .line 584
    const-string/jumbo v0, "edit"

    .line 588
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteStart:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v2, "actual_compose_type"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 592
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    if-eqz v0, :cond_3

    .line 595
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->getNumHalfstars()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    .line 599
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    if-lez v0, :cond_1

    .line 600
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    .line 609
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    .line 610
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    .line 612
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    .line 613
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->m:I

    .line 615
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t()V

    .line 618
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->x:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    const-string/jumbo v3, "overview_fragment_key"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 620
    return-void

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getComposeTypeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Review;->getRating()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 607
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Review;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 933
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 972
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    .line 973
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 458
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    .line 461
    if-nez v0, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03018f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 463
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 464
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V

    .line 465
    const v2, 0x7f0c04d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Landroid/widget/TextView;

    .line 468
    :cond_0
    if-eqz p2, :cond_1

    .line 469
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 790
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k()Ljava/lang/String;

    move-result-object v2

    .line 791
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 792
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->E:Z

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    const v1, 0x7f070522

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->b(I)V

    .line 794
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Lcom/yelp/android/appdata/webrequests/fp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Lcom/yelp/android/appdata/webrequests/fp;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fp;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 815
    :cond_1
    :goto_0
    return-void

    .line 802
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fp;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    new-instance v4, Lcom/yelp/android/ui/activities/reviews/u;

    iget v5, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    invoke-direct {v4, p0, v2, v5}, Lcom/yelp/android/ui/activities/reviews/u;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fp;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/av/i;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Lcom/yelp/android/appdata/webrequests/fp;

    .line 805
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Lcom/yelp/android/appdata/webrequests/fp;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fp;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 807
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c(Z)V

    .line 808
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    if-nez v0, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a()V

    goto :goto_0

    .line 811
    :cond_3
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->E:Z

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 982
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    .line 983
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 888
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->x:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    const-string/jumbo v3, "overview_fragment_key"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 893
    const v0, 0x7f070491

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 896
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 897
    const v1, 0x7f02023d

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 898
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e()V

    .line 899
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 1000
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    .line 1001
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 903
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->x:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->y:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    const-string/jumbo v3, "compose_fragment_key"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 910
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 911
    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 912
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 916
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 918
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 920
    if-eqz v1, :cond_0

    .line 921
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 923
    :cond_0
    return-void
.end method

.method public f()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 331
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->finish()V

    .line 334
    const v0, 0x7f040009

    const v1, 0x7f04001e

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->overridePendingTransition(II)V

    .line 335
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 558
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewWrite:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 563
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 564
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->i:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eqz v1, :cond_0

    .line 565
    const-string/jumbo v1, "intended_compose_type"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->i:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getComposeTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_0
    const-string/jumbo v1, "sign_up_status"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/support/h;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    return-object v0
.end method

.method public h()Lcom/yelp/android/serializable/Review;
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    return-object v0
.end method

.method public i()Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ReviewThreshold;",
            ">;"
        }
    .end annotation

    .prologue
    .line 962
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Lcom/yelp/android/ui/activities/reviews/ReviewState;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    return v0
.end method

.method public m_()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Lcom/yelp/android/ui/panels/PanelError;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    .line 643
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w()V

    .line 647
    :goto_0
    return-void

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u()V

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 327
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    if-eqz p1, :cond_0

    const-string/jumbo v0, "is_review_start_complete"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    .line 207
    const-string/jumbo v0, "extra_review_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 208
    const-string/jumbo v0, "extra_draft"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    .line 209
    const-string/jumbo v0, "extra_review"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Review;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    .line 210
    const-string/jumbo v0, "extra_num_stars"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 211
    const-string/jumbo v0, "extra_business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 212
    const-string/jumbo v0, "extra_business_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    .line 213
    const-string/jumbo v0, "extra_thresholds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c:Ljava/util/ArrayList;

    .line 214
    const-string/jumbo v0, "stars_touched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    .line 215
    const-string/jumbo v0, "review_draft_saved"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    .line 216
    const-string/jumbo v0, "extra_ynra_review"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Z

    .line 217
    const-string/jumbo v0, "original_draft_text"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    .line 219
    const-string/jumbo v0, "original_num_stars"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->m:I

    .line 220
    const-string/jumbo v0, "extra_review_text"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    .line 223
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    .line 226
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 228
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 230
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_force_review_edit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    .line 231
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_update_selected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->s:Z

    .line 232
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_intend_review_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->i:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_num_stars"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 235
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_ynra_review"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Z

    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_review_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 243
    if-eqz p1, :cond_1

    const-string/jumbo v0, "is_review_start_complete"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 246
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    .line 247
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    .line 248
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    .line 250
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_4

    .line 253
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w()V

    .line 259
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->x:Landroid/support/v4/app/FragmentManager;

    .line 260
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->s()V

    .line 261
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t()V

    .line 263
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Z)V

    .line 266
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->y:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->y:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Ljava/lang/String;)V

    .line 272
    :cond_3
    :goto_1
    return-void

    .line 255
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u()V

    goto :goto_0

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->y:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 276
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ff;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ff;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ff;->cancel(Z)V

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ff;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ff;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/es;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/es;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/es;->cancel(Z)V

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/es;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/es;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Lcom/yelp/android/appdata/webrequests/fp;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Lcom/yelp/android/appdata/webrequests/fp;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fp;->cancel(Z)V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Lcom/yelp/android/appdata/webrequests/fp;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/fp;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ac;

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ac;->cancel(Z)V

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ac;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ac;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 297
    :cond_3
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 624
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 626
    const v0, 0x7f070642

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->startActivity(Landroid/content/Intent;)V

    .line 628
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    .line 636
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 631
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Lcom/yelp/android/ui/panels/PanelError;

    .line 632
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Lcom/yelp/android/ui/panels/PanelError;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 633
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 634
    const v0, 0x7f070243

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 419
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 427
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 421
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    const/4 v0, 0x1

    goto :goto_0

    .line 419
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    if-eqz v0, :cond_0

    .line 303
    const-string/jumbo v0, "is_review_start_complete"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 304
    const-string/jumbo v0, "extra_business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    const-string/jumbo v0, "extra_business_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v0, "extra_draft"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 307
    const-string/jumbo v0, "extra_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 308
    const-string/jumbo v0, "extra_num_stars"

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    const-string/jumbo v0, "original_draft_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v0, "original_num_stars"

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 311
    const-string/jumbo v0, "extra_review_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string/jumbo v0, "extra_thresholds"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 313
    const-string/jumbo v0, "extra_review_state"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 314
    const-string/jumbo v0, "stars_touched"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    const-string/jumbo v0, "review_draft_saved"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    const-string/jumbo v0, "extra_ynra_review"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 319
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 320
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fg;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fg;)V

    return-void
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
