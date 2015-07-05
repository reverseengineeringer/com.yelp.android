.class public Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;
.super Landroid/support/v4/app/Fragment;
.source "MessageTheBusinessFragment.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/messaging/k;

.field private b:Lcom/yelp/android/appdata/webrequests/messaging/i;

.field private c:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

.field private final d:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/messaging/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 294
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/aa;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/aa;-><init>(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->d:Lcom/yelp/android/appdata/webrequests/m;

    .line 307
    new-instance v0, Lcom/yelp/android/ui/activities/messaging/ab;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/messaging/ab;-><init>(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->e:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->b:Lcom/yelp/android/appdata/webrequests/messaging/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->b:Lcom/yelp/android/appdata/webrequests/messaging/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/i;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/i;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->e:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/appdata/webrequests/messaging/i;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->b:Lcom/yelp/android/appdata/webrequests/messaging/i;

    .line 354
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->b:Lcom/yelp/android/appdata/webrequests/messaging/i;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/i;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a:Lcom/yelp/android/appdata/webrequests/messaging/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a:Lcom/yelp/android/appdata/webrequests/messaging/k;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/k;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 344
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/k;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->d:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/appdata/webrequests/messaging/k;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a:Lcom/yelp/android/appdata/webrequests/messaging/k;

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a:Lcom/yelp/android/appdata/webrequests/messaging/k;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/k;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a:Lcom/yelp/android/appdata/webrequests/messaging/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a:Lcom/yelp/android/appdata/webrequests/messaging/k;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/k;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->b:Lcom/yelp/android/appdata/webrequests/messaging/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->b:Lcom/yelp/android/appdata/webrequests/messaging/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/messaging/i;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;)Z
    .locals 1

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;)Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->c:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 331
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->c:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    .line 332
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->setRetainInstance(Z)V

    .line 324
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 336
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment$RequestFragment;->c:Lcom/yelp/android/ui/activities/messaging/MessageTheBusinessFragment;

    .line 338
    return-void
.end method
