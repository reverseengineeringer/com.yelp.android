.class public Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;
.super Lcom/yelp/android/ui/util/YelpMapFragment;
.source "ComboMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/f;",
        ">",
        "Lcom/yelp/android/ui/util/YelpMapFragment",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:I

.field private d:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpMapFragment;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Z

    .line 37
    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:I

    .line 174
    return-void
.end method

.method private b(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 146
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setClipRect(Landroid/graphics/RectF;)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->invalidate()V

    .line 150
    :cond_0
    return-void
.end method

.method private h()V
    .locals 8

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    .line 116
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 118
    iget v3, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:I

    if-lez v3, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget v3, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:I

    int-to-double v4, v3

    sub-double/2addr v0, v4

    iget v3, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:I

    int-to-double v4, v3

    div-double/2addr v0, v4

    .line 124
    :cond_2
    iget-object v3, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v3, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-object v3, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->a:D

    sub-double/2addr v4, v6

    .line 126
    iget-object v3, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v3, Lcom/google/android/gms/maps/model/LatLng;->a:D

    mul-double/2addr v0, v4

    sub-double v0, v6, v0

    .line 129
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-direct {v3, v0, v1, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 130
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v1, v2, Lcom/google/android/gms/maps/model/LatLngBounds;->b:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 133
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/map/YelpMap;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 137
    iput p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:I

    .line 139
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h()V

    .line 142
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;

    .line 79
    return-void
.end method

.method public a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/yelp/android/ui/map/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Hold up cuz, map not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->g()V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/ui/map/YelpMap;->a(Ljava/util/List;Lcom/yelp/android/ui/map/a;)V

    .line 93
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Z

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    goto :goto_0

    .line 96
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h()V

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/ui/map/YelpMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/map/YelpMap",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Z

    .line 156
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c:I

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b(I)V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->h()V

    .line 161
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b:Z

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b(I)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->f()V

    .line 172
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpMapFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "MapFragmentCallback not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;->a()Lcom/yelp/android/ui/map/e;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/map/YelpMap;->a(Landroid/os/Bundle;Lcom/yelp/android/ui/map/e;)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;

    invoke-interface {v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;->i()Lcom/yelp/android/ui/map/e$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/map/YelpMap;->setInfoWindowListener(Lcom/yelp/android/ui/map/e$a;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->a:Lcom/yelp/android/ui/map/YelpMap;

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->g()V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->d:Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment$a;->c()V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f030182

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->c(Landroid/view/View;)V

    .line 46
    return-object v0
.end method
