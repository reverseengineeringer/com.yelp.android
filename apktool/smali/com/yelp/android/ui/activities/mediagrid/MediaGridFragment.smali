.class public Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;
.super Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;
.source "MediaGridFragment.java"


# instance fields
.field private final g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;-><init>()V

    .line 99
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment$1;-><init>(Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;Z)Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;Z)",
            "Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;"
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;Z)Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;Z)Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Lcom/yelp/android/appdata/webrequests/MediaRequest;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;Z)",
            "Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;-><init>()V

    .line 43
    invoke-static {v0, p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->a(Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/MediaRequest;Ljava/util/ArrayList;Z)Landroid/os/Bundle;

    .line 44
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/a;->b(Ljava/util/Collection;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->notifyDataSetChanged()V

    .line 92
    return-void
.end method

.method protected a()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->getCount()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->e:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/MediaRequest;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->g:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method public b(Lcom/yelp/android/serializable/Media;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/mediagrid/a;->d(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->H_()V

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->c()V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/a;->b(Z)V

    .line 56
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->f:Z

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->e:I

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 64
    packed-switch p1, :pswitch_data_0

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/mediagrid/AbstractMediaGridFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :pswitch_0
    if-eqz p3, :cond_0

    .line 67
    invoke-static {p3}, Lcom/yelp/android/ui/activities/photoviewer/DynamicMediaViewer;->b(Landroid/content/Intent;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->b:Lcom/yelp/android/appdata/webrequests/MediaRequest;

    .line 68
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->d:Lcom/yelp/android/ui/activities/mediagrid/a;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/yelp/android/ui/activities/support/YelpActivity$IntentData;->popData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/mediagrid/a;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x42e
        :pswitch_0
    .end packed-switch
.end method
