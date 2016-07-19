.class public Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityReviewWrite.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
.implements Lcom/yelp/android/ui/activities/reviews/c;
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/YelpActivity;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ec$a;",
        ">;",
        "Lcom/yelp/android/ui/activities/reviews/c;",
        "Lcom/yelp/android/ui/panels/PanelError$a;"
    }
.end annotation


# instance fields
.field private A:Lcom/yelp/android/appdata/webrequests/ec;

.field private B:Lcom/yelp/android/appdata/webrequests/ds;

.field private C:Lcom/yelp/android/appdata/webrequests/el;

.field private D:Z

.field private final E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;"
        }
    .end annotation
.end field

.field private final F:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/ui/activities/reviews/ReviewState;",
            ">;"
        }
    .end annotation
.end field

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

.field private t:Landroid/widget/TextView;

.field private u:Lcom/yelp/android/ui/panels/PanelLoading;

.field private v:Lcom/yelp/android/ui/panels/PanelError;

.field private w:Landroid/support/v4/app/l;

.field private x:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

.field private y:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

.field private z:Lcom/yelp/android/appdata/webrequests/af;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 119
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    .line 123
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    .line 124
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    .line 125
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    .line 126
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->Empty:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 128
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    .line 129
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->s:Z

    .line 812
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$7;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 845
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$8;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->F:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 884
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;I)I
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    return p1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 157
    invoke-static {p0, p1, p3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 158
    const-string/jumbo v1, "extra_num_stars"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    const-string/jumbo v1, "extra_business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v1, "extra_intend_review_state"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->w()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 151
    const-string/jumbo v1, "extra_review_source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 152
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ILcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string/jumbo v1, "extra_review_source"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "extra_num_stars"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string/jumbo v1, "extra_review_source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 164
    invoke-static {p0, p1, p3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 165
    const-string/jumbo v1, "extra_intend_review_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 166
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelError;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Lcom/yelp/android/ui/activities/reviews/ReviewState;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V
    .locals 3

    .prologue
    .line 746
    new-instance v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;-><init>()V

    .line 747
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 748
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(Ljava/lang/String;)V

    .line 752
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 753
    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(I)V

    .line 754
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->b(Ljava/lang/String;)V

    .line 755
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    if-eqz v1, :cond_1

    .line 756
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/ReviewDraft;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->c(Ljava/lang/String;)V

    .line 760
    :cond_1
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.review.state.update"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 763
    return-void

    .line 749
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewBroadcast;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Z

    return p1
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 802
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 803
    :goto_0
    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    if-eq p2, v3, :cond_4

    move v3, v1

    .line 804
    :goto_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v4

    .line 805
    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->g:Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment;

    sget-object v3, Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment$Cohort;->status_quo:Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment$Cohort;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/experiment/RatingStarDraftExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    :cond_3
    move v0, v2

    .line 802
    goto :goto_0

    :cond_4
    move v3, v2

    .line 803
    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;I)I
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    return p1
.end method

.method public static b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 187
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "extra_force_review_edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 194
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-static {p0, p1, v0, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "extra_force_review_edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 545
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 546
    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 548
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 549
    sget v2, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 551
    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$4;

    invoke-direct {v2, p0, p1, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$4;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 569
    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$5;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$5;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 583
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 584
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    invoke-virtual {p0, p1, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 586
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 591
    :goto_0
    return-void

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 589
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 200
    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_NOT_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-static {p0, p1, v0, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "extra_update_selected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u()V

    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelError;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Z

    return v0
.end method

.method private r()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 378
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ReviewWriteClose:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 382
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Landroid/support/v4/app/l;

    const-string/jumbo v2, "compose_fragment_key"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b()V

    .line 466
    :goto_0
    return v0

    .line 389
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

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    goto :goto_0

    .line 402
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 403
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 406
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v()V

    goto :goto_0

    .line 408
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 409
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 410
    const v2, 0x7f07031d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070515

    new-instance v3, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$2;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$2;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070240

    new-instance v3, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$1;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 452
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 454
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 455
    const v2, 0x7f07050e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070352

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07036d

    new-instance v3, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$3;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$3;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->b(Z)V

    .line 485
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->c(Z)V

    .line 486
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 487
    const v1, 0x7f020307

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 488
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->PostReviewYNRA:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    if-ne v0, v1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 504
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eqz v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v1, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v0, v1, :cond_1

    .line 495
    const v0, 0x7f070664

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 496
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    if-eqz v0, :cond_2

    .line 497
    const v0, 0x7f07027e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getTextResourceForState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 502
    :cond_3
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 715
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ec;->m()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 716
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ec;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/ec;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    .line 717
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ec;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 718
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 719
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 721
    :cond_1
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 724
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ds;->m()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 725
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ds;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->F:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ds;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    .line 726
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ds;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 727
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    const v1, 0x7f070249

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->a(I)V

    .line 728
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 730
    :cond_1
    return-void
.end method

.method private w()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 733
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/af;->m()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 743
    :goto_0
    return-void

    .line 737
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/af;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/af;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    .line 739
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/af;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 740
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 742
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
    .line 600
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    const v1, 0x7f07026a

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 602
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$6;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$6;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;)V

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 612
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 1000
    iput p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 1001
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ec$a;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ec$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 633
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    .line 635
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 637
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ec$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c:Ljava/util/ArrayList;

    .line 638
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ec$a;->d()Lcom/yelp/android/serializable/Review;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    .line 639
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ec$a;->c()Lcom/yelp/android/serializable/ReviewDraft;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    .line 640
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ec$a;->a()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 643
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    if-eqz v0, :cond_2

    .line 644
    const-string/jumbo v0, "edit"

    .line 648
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ReviewWriteStart:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "actual_compose_type"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    if-eqz v0, :cond_3

    .line 655
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    .line 659
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    if-lez v0, :cond_1

    .line 660
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    .line 669
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    .line 670
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    .line 672
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    .line 673
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->m:I

    .line 675
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t()V

    .line 678
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f020d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->y:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    const-string/jumbo v3, "overview_fragment_key"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 682
    return-void

    .line 646
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getComposeTypeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 662
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Review;->a()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 667
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Review;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 991
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1030
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    .line 1031
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 511
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()Landroid/view/View;

    move-result-object v0

    .line 514
    if-nez v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03020c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 516
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 517
    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->a(Landroid/view/View;)V

    .line 518
    const v2, 0x7f0f05de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Landroid/widget/TextView;

    .line 521
    :cond_0
    if-eqz p2, :cond_1

    .line 522
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b(Ljava/lang/String;)V

    .line 529
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Landroid/widget/TextView;

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

    .line 769
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k()Ljava/lang/String;

    move-result-object v2

    .line 770
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 771
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Z

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    const v1, 0x7f07051e

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->a(I)V

    .line 773
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/el;->m()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 798
    :cond_1
    :goto_0
    return-void

    .line 781
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/el;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    new-instance v4, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;

    iget v5, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    invoke-direct {v4, p0, v2, v5}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/el;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    .line 788
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/el;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 790
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c(Z)V

    .line 791
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    if-nez v0, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a()V

    goto :goto_0

    .line 794
    :cond_3
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->D:Z

    if-eqz v0, :cond_1

    .line 796
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    goto :goto_0
.end method

.method public b()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f020d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->y:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    const-string/jumbo v3, "overview_fragment_key"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 950
    const v0, 0x7f0704a8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    .line 953
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 954
    const v1, 0x7f020307

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 955
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e()V

    .line 956
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 1040
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    .line 1041
    return-void
.end method

.method public c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitTransaction"
        }
    .end annotation

    .prologue
    .line 962
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    const v1, 0x7f0f020d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->x:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    const-string/jumbo v3, "compose_fragment_key"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 968
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 969
    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 970
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 1058
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    .line 1059
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    .line 974
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 976
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 978
    if-eqz v1, :cond_0

    .line 979
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 981
    :cond_0
    return-void
.end method

.method public f()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 363
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->finish()V

    .line 366
    const v0, 0x7f04000b

    const v1, 0x7f040024

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->overridePendingTransition(II)V

    .line 367
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 995
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 616
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ReviewWrite:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 622
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->i:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-eqz v1, :cond_0

    .line 623
    const-string/jumbo v1, "intended_compose_type"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->i:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->getComposeTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :cond_0
    const-string/jumbo v1, "sign_up_status"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/support/b;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    return-object v0
.end method

.method public h()Lcom/yelp/android/serializable/Review;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    return-object v0
.end method

.method public i()Lcom/yelp/android/ui/activities/reviews/ReviewSource;
    .locals 1

    .prologue
    .line 1015
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
    .line 1020
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1025
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
    .line 1035
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    return-object v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 1063
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 359
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 220
    if-eqz p1, :cond_0

    const-string/jumbo v0, "is_review_start_complete"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    .line 223
    const-string/jumbo v0, "extra_review_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 224
    const-string/jumbo v0, "extra_draft"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    .line 225
    const-string/jumbo v0, "extra_review"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Review;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    .line 226
    const-string/jumbo v0, "extra_num_stars"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 227
    const-string/jumbo v0, "extra_business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 228
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    .line 229
    const-string/jumbo v0, "extra_thresholds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c:Ljava/util/ArrayList;

    .line 230
    const-string/jumbo v0, "stars_touched"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    .line 231
    const-string/jumbo v0, "review_draft_saved"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    .line 232
    const-string/jumbo v0, "original_draft_text"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    .line 233
    const-string/jumbo v0, "original_num_stars"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->m:I

    .line 234
    const-string/jumbo v0, "extra_review_text"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    .line 236
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    .line 239
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 243
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_force_review_edit"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r:Z

    .line 244
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_update_selected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->s:Z

    .line 245
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_intend_review_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->i:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    .line 247
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_num_stars"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_review_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    .line 255
    if-eqz p1, :cond_1

    const-string/jumbo v0, "is_review_start_complete"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 258
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    .line 259
    iput-boolean v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    .line 260
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->j:Ljava/lang/String;

    .line 262
    iget v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    iput v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k:I

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_4

    .line 265
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w()V

    .line 271
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w:Landroid/support/v4/app/l;

    .line 272
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->s()V

    .line 273
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->t()V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->q:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->y:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    .line 277
    new-instance v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->x:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->x:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Ljava/lang/String;)V

    .line 283
    :cond_3
    :goto_1
    return-void

    .line 267
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u()V

    goto :goto_0

    .line 280
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    if-lez v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->x:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 309
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ec;->a(Z)V

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ec;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ds;->a(Z)V

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ds;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    if-eqz v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/el;->a(Z)V

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/el;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/af;->a(Z)V

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/af;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 330
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

    .line 686
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 689
    const v0, 0x7f070207

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->startActivity(Landroid/content/Intent;)V

    .line 692
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    .line 700
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u:Lcom/yelp/android/ui/panels/PanelLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setVisibility(I)V

    .line 695
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelError;

    .line 696
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelError;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 697
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelError;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 698
    const v0, 0x7f070297

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 472
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 480
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 474
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x1

    goto :goto_0

    .line 472
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 301
    const-string/jumbo v0, "start"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 302
    const-string/jumbo v0, "delete"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 303
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 304
    const-string/jumbo v0, "save_draft"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 305
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 287
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 288
    const-string/jumbo v0, "start"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    invoke-virtual {p0, v0, v1, p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ec;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->A:Lcom/yelp/android/appdata/webrequests/ec;

    .line 289
    const-string/jumbo v0, "delete"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->F:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ds;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->B:Lcom/yelp/android/appdata/webrequests/ds;

    .line 290
    const-string/jumbo v0, "business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/af;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->z:Lcom/yelp/android/appdata/webrequests/af;

    .line 291
    const-string/jumbo v0, "save_draft"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    new-instance v2, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->k()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    invoke-direct {v2, p0, v3, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;-><init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/el;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->C:Lcom/yelp/android/appdata/webrequests/el;

    .line 296
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    if-eqz v0, :cond_0

    .line 336
    const-string/jumbo v0, "is_review_start_complete"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 337
    const-string/jumbo v0, "extra_business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    const-string/jumbo v0, "business_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, "extra_draft"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->d:Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 340
    const-string/jumbo v0, "extra_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->e:Lcom/yelp/android/serializable/Review;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    const-string/jumbo v0, "extra_num_stars"

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    const-string/jumbo v0, "original_draft_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string/jumbo v0, "original_num_stars"

    iget v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 344
    const-string/jumbo v0, "extra_review_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string/jumbo v0, "extra_thresholds"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 346
    const-string/jumbo v0, "extra_review_state"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->h:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 347
    const-string/jumbo v0, "stars_touched"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->o:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    const-string/jumbo v0, "review_draft_saved"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->p:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 352
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 72
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ec$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ec$a;)V

    return-void
.end method

.method public p()Z
    .locals 2

    .prologue
    .line 1081
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
    .line 1086
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

.method public q_()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->v:Lcom/yelp/android/ui/panels/PanelError;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->w()V

    .line 711
    :goto_0
    return-void

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->u()V

    goto :goto_0
.end method
