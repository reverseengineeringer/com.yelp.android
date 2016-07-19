.class public Lcom/yelp/android/ui/activities/feed/FeedFragment;
.super Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/feed/FeedFragment$5;
    }
.end annotation


# instance fields
.field private A:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

.field private B:Landroid/view/ViewGroup;

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private D:I

.field private E:Landroid/view/View;

.field private F:Landroid/view/View$OnLayoutChangeListener;

.field private final G:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Lcom/yelp/android/ui/panels/PanelError$a;

.field private final I:Lcom/yelp/android/ui/panels/PanelError$a;

.field private final J:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private final L:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final M:Lcom/yelp/android/ui/activities/notifications/a$a;

.field private final N:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private j:Lcom/yelp/android/appdata/webrequests/bx;

.field private k:Lcom/yelp/android/appdata/webrequests/fn;

.field private l:Lcom/yelp/android/appdata/webrequests/ez;

.field private m:Lcom/yelp/android/appdata/webrequests/fn;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/view/View;

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/support/design/widget/TabLayout$c;

.field private u:Landroid/support/design/widget/TabLayout$c;

.field private v:Landroid/support/design/widget/TabLayout$c;

.field private w:Landroid/support/design/widget/TabLayout$c;

.field private x:Landroid/support/design/widget/TabLayout$c;

.field private y:Lcom/yelp/android/ui/activities/feed/b;

.field private z:Landroid/support/design/widget/TabLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;-><init>()V

    .line 96
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->q:Z

    .line 97
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Z

    .line 98
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Z

    .line 619
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$8;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$8;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->F:Landroid/view/View$OnLayoutChangeListener;

    .line 640
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$9;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->G:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 749
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$10;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$10;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->H:Lcom/yelp/android/ui/panels/PanelError$a;

    .line 766
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$11;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$11;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->I:Lcom/yelp/android/ui/panels/PanelError$a;

    .line 775
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$12;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->J:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 805
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$13;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$13;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->K:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 822
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$2;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->L:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 878
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$3;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->M:Lcom/yelp/android/ui/activities/notifications/a$a;

    .line 918
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$4;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->N:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;I)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p:I

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->t:Landroid/support/design/widget/TabLayout$c;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/bx;)Lcom/yelp/android/appdata/webrequests/bx;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/bx;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/fn;)Lcom/yelp/android/appdata/webrequests/fn;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k:Lcom/yelp/android/appdata/webrequests/fn;

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "inline_action_request_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/User;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 401
    if-eqz p1, :cond_2

    move v0, v1

    .line 402
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 403
    if-eqz p1, :cond_0

    .line 404
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/serializable/User;)V

    .line 409
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->K:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v2, v3, v3}, Lcom/yelp/android/appdata/webrequests/fn;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Lcom/yelp/android/appdata/webrequests/fn;

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Lcom/yelp/android/appdata/webrequests/fn;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fn;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 413
    :cond_1
    return-void

    .line 401
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/serializable/User;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/FeedFragment;I)I
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->D:I

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u:Landroid/support/design/widget/TabLayout$c;

    return-object v0
.end method

.method private b(Lcom/yelp/android/serializable/User;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 416
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->C()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$c;)V

    .line 418
    iput-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    .line 424
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->b(Landroid/support/design/widget/TabLayout$c;)V

    .line 426
    iput-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    .line 431
    :cond_1
    :goto_1
    return-void

    .line 419
    :cond_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->C()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    const v1, 0x7f0702e6

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$c;->b(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;I)V

    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    const v1, 0x7f0702ed

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$c;->b(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$c;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v:Landroid/support/design/widget/TabLayout$c;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/support/design/widget/TabLayout$c;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->E:Landroid/view/View;

    return-object v0
.end method

.method private f(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 535
    const v0, 0x7f0f02f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    .line 537
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$7;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    .line 570
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    const v2, 0x7f07012b

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$c;->b(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->t:Landroid/support/design/widget/TabLayout$c;

    .line 571
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    const v2, 0x7f070405

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$c;->b(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v:Landroid/support/design/widget/TabLayout$c;

    .line 572
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    const v2, 0x7f0702e6

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$c;->b(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    .line 573
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    const v2, 0x7f0702ed

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$c;->b(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    .line 574
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->a()Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    const v2, 0x7f070407

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$c;->b(I)Landroid/support/design/widget/TabLayout$c;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u:Landroid/support/design/widget/TabLayout$c;

    .line 576
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->t:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;)V

    .line 577
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;)V

    .line 578
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;)V

    .line 579
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;)V

    .line 580
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout$c;)V

    .line 582
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f01017b

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 584
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 585
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 587
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3, v0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$a;)V

    .line 588
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setBackgroundColor(I)V

    .line 589
    const v0, 0x7f0f02ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 591
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2, v2}, Landroid/support/design/widget/TabLayout;->a(II)V

    .line 592
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 593
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/viewbinder/q;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->A:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError$a;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->H:Lcom/yelp/android/ui/panels/PanelError$a;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/bx;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/bx;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 519
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 520
    const v1, 0x7f0300ba

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    .line 522
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->C:Ljava/util/ArrayList;

    .line 524
    iput v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->D:I

    .line 525
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->M:Lcom/yelp/android/ui/activities/notifications/a$a;

    invoke-direct {v0, v1, v2, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/notifications/a$a;Lcom/yelp/android/ui/activities/support/YelpFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->A:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    .line 530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->F:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 531
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->A:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a()V

    .line 532
    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/feed/FeedFragment;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p:I

    return v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->J:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/fn;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k:Lcom/yelp/android/appdata/webrequests/fn;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->q:Z

    return v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/b;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y:Lcom/yelp/android/ui/activities/feed/b;

    return-object v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->A()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError$a;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->I:Lcom/yelp/android/ui/panels/PanelError$a;

    return-object v0
.end method

.method static synthetic s(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->A()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    return-object v0
.end method

.method static synthetic t(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/ez;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ez;

    return-object v0
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 596
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 597
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->N:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v3, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    .line 598
    const/4 v1, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 599
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->N:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v3, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/notifications/NotificationsFragment$a;

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->C:Ljava/util/ArrayList;

    return-object v0
.end method

.method private u()V
    .locals 3

    .prologue
    .line 605
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 606
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 605
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 608
    :cond_0
    return-void
.end method

.method static synthetic v(Lcom/yelp/android/ui/activities/feed/FeedFragment;)I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->D:I

    return v0
.end method

.method static synthetic w(Lcom/yelp/android/ui/activities/feed/FeedFragment;)I
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->D:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->D:I

    return v0
.end method

.method static synthetic x(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->N:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method static synthetic y(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->E:Landroid/view/View;

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 368
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 5

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-eq v0, p1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/bx;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Z

    .line 471
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 475
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 476
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$5;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 495
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y:Lcom/yelp/android/ui/activities/feed/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/b;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/ui/activities/feed/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    .line 496
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    if-nez v0, :cond_1

    .line 497
    new-instance v0, Lcom/yelp/android/ui/activities/feed/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g:Lcom/yelp/android/ci/f;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->f:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Lcom/yelp/android/ui/util/t;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/feed/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    .line 500
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Landroid/widget/ListAdapter;)V

    .line 501
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p_()V

    .line 516
    :goto_1
    return-void

    .line 479
    :pswitch_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FeedMain:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 482
    :pswitch_1
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FeedFriend:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 485
    :pswitch_2
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FeedNearby:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 488
    :pswitch_3
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FeedFollowing:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 491
    :pswitch_4
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FeedCheckIn:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    goto :goto_0

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y:Lcom/yelp/android/ui/activities/feed/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/b;->b(Lcom/yelp/android/ui/activities/feed/FeedType;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Ljava/lang/String;

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Landroid/widget/ListAdapter;)V

    .line 505
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l()V

    .line 506
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z()V

    .line 510
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 511
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n()V

    goto :goto_1

    .line 513
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o()V

    goto :goto_1

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V
    .locals 1

    .prologue
    .line 356
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 357
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->A()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->c()V

    .line 358
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 310
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->removeHeaderView(Landroid/view/View;)Z

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Z

    if-nez v0, :cond_2

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Z

    .line 322
    new-instance v1, Lcom/yelp/android/appdata/webrequests/bx;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->G:Lcom/yelp/android/appdata/webrequests/k$b;

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->q:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/yelp/android/appdata/webrequests/bx;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/appdata/webrequests/k$b;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/bx;

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->NEARBY:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne v0, v1, :cond_4

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/bx;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bx;->a([Ljava/lang/Object;)V

    .line 334
    :cond_2
    :goto_1
    return-void

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e:Ljava/lang/String;

    goto :goto_0

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/bx;

    new-array v1, v5, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bx;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_1
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 373
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$5;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 450
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 451
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->removeHeaderView(Landroid/view/View;)Z

    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->E:Landroid/view/View;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 436
    :pswitch_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y:Lcom/yelp/android/ui/activities/feed/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/feed/b;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/ui/activities/feed/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0

    .line 434
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public h()V
    .locals 2

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Z

    if-eqz v0, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ez;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ez;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ez;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    const-string/jumbo v0, "FeedFragment"

    const-string/jumbo v1, "Trying to create a second request for inline alerts!"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->A:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a()V

    .line 394
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ez;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->L:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ez;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ez;

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ez;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ez;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Z

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 283
    packed-switch p1, :pswitch_data_0

    .line 290
    :goto_0
    return-void

    .line 285
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->A:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a()V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x3f7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 116
    const v0, 0x7f0300c5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    const v1, 0x7f0f0302

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 120
    new-instance v2, Lcom/yelp/android/ui/activities/feed/FeedFragment$1;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment$1;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 127
    invoke-virtual {p0, v0, v1, p3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/os/Bundle;)V

    .line 129
    :cond_0
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->onPause()V

    .line 263
    const-string/jumbo v0, "feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/bx;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 264
    const-string/jumbo v0, "user"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k:Lcom/yelp/android/appdata/webrequests/fn;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 265
    const-string/jumbo v0, "user_info"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Lcom/yelp/android/appdata/webrequests/fn;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 266
    const-string/jumbo v0, "alert"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ez;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 267
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u()V

    .line 268
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 339
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_1

    .line 340
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v0

    .line 342
    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->F()V

    .line 345
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o()V

    .line 346
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p_()V

    .line 347
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h()V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 239
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->onResume()V

    .line 240
    const-string/jumbo v0, "feed"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/bx;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->G:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bx;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j:Lcom/yelp/android/appdata/webrequests/bx;

    .line 241
    const-string/jumbo v0, "user"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k:Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->J:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k:Lcom/yelp/android/appdata/webrequests/fn;

    .line 242
    const-string/jumbo v0, "user_info"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Lcom/yelp/android/appdata/webrequests/fn;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->K:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fn;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m:Lcom/yelp/android/appdata/webrequests/fn;

    .line 244
    const-string/jumbo v0, "alert"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ez;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->L:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ez;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l:Lcom/yelp/android/appdata/webrequests/ez;

    .line 246
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->t()V

    .line 251
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/a;->clear()V

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p_()V

    .line 255
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h()V

    .line 257
    :cond_0
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/serializable/User;)V

    .line 258
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y:Lcom/yelp/android/ui/activities/feed/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/feed/b;->a(Landroid/os/Bundle;)V

    .line 274
    const-string/jumbo v0, "requesting_feeds"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string/jumbo v0, "requesting_inline_alerts"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 276
    const-string/jumbo v0, "inline_alert_count"

    iget v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->D:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string/jumbo v0, "inline_alerts_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->C:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 278
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setClipToPadding(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setPadding(IIII)V

    .line 142
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->f(Landroid/view/View;)V

    .line 143
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i()V

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0302

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B:Landroid/view/ViewGroup;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n:Ljava/util/List;

    .line 146
    if-eqz p2, :cond_3

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g:Lcom/yelp/android/ci/f;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->f:Landroid/support/v7/widget/RecyclerView$l;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d:Lcom/yelp/android/ui/util/t;

    invoke-static {p2, v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/b;->a(Landroid/os/Bundle;Lcom/yelp/android/ci/f;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)Lcom/yelp/android/ui/activities/feed/b;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y:Lcom/yelp/android/ui/activities/feed/b;

    .line 153
    const-string/jumbo v0, "requesting_feeds"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->r:Z

    .line 154
    const-string/jumbo v0, "requesting_inline_alerts"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Z

    .line 155
    const-string/jumbo v0, "inline_alert_count"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->D:I

    .line 156
    const-string/jumbo v0, "inline_alerts_list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->C:Ljava/util/ArrayList;

    .line 157
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->s:Z

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->A:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->C:Ljava/util/ArrayList;

    iget v2, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->D:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Ljava/util/ArrayList;ILandroid/content/Context;)V

    .line 168
    :cond_0
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/serializable/User;)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-nez v0, :cond_4

    .line 172
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 173
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 202
    :goto_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->t:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 211
    const v1, 0x7f0f00cf

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/MessageAlertBox;

    .line 213
    new-instance v2, Lcom/yelp/android/ui/activities/feed/FeedFragment$6;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment$6;-><init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->ConfirmEmailBanner:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v2, "source"

    const-string/jumbo v3, "activity_feed"

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 232
    :cond_1
    if-nez p2, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h()V

    .line 235
    :cond_2
    return-void

    .line 161
    :cond_3
    new-instance v0, Lcom/yelp/android/ui/activities/feed/b;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/b;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->y:Lcom/yelp/android/ui/activities/feed/b;

    goto/16 :goto_0

    .line 175
    :cond_4
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedFragment$5;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 178
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->t:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 180
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->MAIN:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    goto/16 :goto_1

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->t:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->e()V

    goto/16 :goto_1

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->v:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->e()V

    goto/16 :goto_1

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->u:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->e()V

    goto/16 :goto_1

    .line 192
    :pswitch_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->w:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->e()V

    goto/16 :goto_1

    .line 195
    :pswitch_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->x:Landroid/support/design/widget/TabLayout$c;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$c;->e()V

    goto/16 :goto_1

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->z()V

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a:Lcom/yelp/android/ui/activities/feed/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 298
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment;->q:Z

    .line 299
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b()V

    .line 300
    return-void
.end method

.method protected y_()Lcom/yelp/android/ui/panels/PanelLoading;
    .locals 2

    .prologue
    .line 379
    invoke-super {p0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->y_()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v0

    .line 380
    const v1, 0x7f0e008f

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setBackgroundResource(I)V

    .line 381
    return-object v0
.end method
