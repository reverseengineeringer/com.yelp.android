.class public Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;
.super Landroid/support/v4/app/Fragment;
.source "MoveBusinessPlacementFragment.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/cn;

.field private b:Lcom/yelp/android/ui/util/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/g",
            "<",
            "Lcom/yelp/android/serializable/Location;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/f",
            "<",
            "Lcom/yelp/android/serializable/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 378
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/ac;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/ac;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;Lcom/yelp/android/ui/util/f;)Lcom/yelp/android/ui/util/f;
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->c:Lcom/yelp/android/ui/util/f;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/cn;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cn;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cn;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->d:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/appdata/webrequests/cn;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/cn;

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/cn;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cn;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/cn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/cn;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cn;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Z
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a()Z

    move-result v0

    return v0
.end method

.method private b()Lcom/yelp/android/appdata/webrequests/cn;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->a:Lcom/yelp/android/appdata/webrequests/cn;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Lcom/yelp/android/appdata/webrequests/cn;
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->b()Lcom/yelp/android/appdata/webrequests/cn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;)Lcom/yelp/android/ui/util/g;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->b:Lcom/yelp/android/ui/util/g;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 349
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/g;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->b:Lcom/yelp/android/ui/util/g;

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->c:Lcom/yelp/android/ui/util/f;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->c:Lcom/yelp/android/ui/util/f;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->b:Lcom/yelp/android/ui/util/g;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/f;->a(Lcom/yelp/android/ui/util/g;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->c:Lcom/yelp/android/ui/util/f;

    .line 354
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->setRetainInstance(Z)V

    .line 344
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment$GeocodeRequestFragment;->b:Lcom/yelp/android/ui/util/g;

    .line 360
    return-void
.end method
