.class public Lcom/yelp/android/ui/map/l;
.super Ljava/lang/Object;
.source "SingleBusinessInfoWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/yelp/android/ui/map/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;",
        "Lcom/yelp/android/ui/map/e",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Lcom/google/android/gms/maps/model/Marker;

.field private d:Lcom/yelp/android/ui/map/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/f",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/yelp/android/ui/map/p;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Lcom/yelp/android/ui/map/n;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/n;-><init>(Lcom/yelp/android/ui/map/l;)V

    iput-object v0, p0, Lcom/yelp/android/ui/map/l;->f:Lcom/yelp/android/ui/map/p;

    .line 44
    iput-object p1, p0, Lcom/yelp/android/ui/map/l;->a:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/yelp/android/ui/map/l;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/map/l;->e:Landroid/graphics/Bitmap;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/l;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/map/l;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/l;)Lcom/google/android/gms/maps/model/Marker;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->c:Lcom/google/android/gms/maps/model/Marker;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/Marker;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public a(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/yelp/android/ui/map/m;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/map/m;-><init>(Lcom/yelp/android/ui/map/l;Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 154
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->c:Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_0

    .line 63
    iput-object p2, p0, Lcom/yelp/android/ui/map/l;->c:Lcom/google/android/gms/maps/model/Marker;

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->c:Lcom/google/android/gms/maps/model/Marker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setAlpha(F)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->c:Lcom/google/android/gms/maps/model/Marker;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/Marker;->setInfoWindowAnchor(FF)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->c:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 68
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/map/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/map/f",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yelp/android/ui/map/l;->d:Lcom/yelp/android/ui/map/f;

    .line 127
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/map/l;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/maps/model/Marker;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/l;->a(Lcom/google/android/gms/maps/model/Marker;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 85
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->a:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 87
    const v1, 0x7f030105

    invoke-virtual {v0, v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 90
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->a:Landroid/app/Activity;

    const v1, 0x7f010048

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;I)I

    move-result v0

    .line 94
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 97
    const v0, 0x7f0c0310

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 98
    const v1, 0x7f0c009c

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    const v2, 0x7f0c032c

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    iget-object v4, p0, Lcom/yelp/android/ui/map/l;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v1, p0, Lcom/yelp/android/ui/map/l;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v1

    .line 103
    iget-object v4, p0, Lcom/yelp/android/ui/map/l;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0022

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/yelp/android/ui/map/l;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v1

    invoke-static {v2, v1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/TextView;F)V

    .line 113
    iget-object v1, p0, Lcom/yelp/android/ui/map/l;->e:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/map/o;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/map/l;->f:Lcom/yelp/android/ui/map/p;

    invoke-direct {v1, v2, v4}, Lcom/yelp/android/ui/map/o;-><init>(Landroid/widget/ImageView;Lcom/yelp/android/ui/map/p;)V

    invoke-static {v0, v1, v8}, Lcom/yelp/android/webimageview/ImageLoader;->start(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V

    .line 121
    :goto_0
    return-object v3

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/map/l;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->d:Lcom/yelp/android/ui/map/f;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/map/l;->d:Lcom/yelp/android/ui/map/f;

    iget-object v1, p0, Lcom/yelp/android/ui/map/l;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/map/f;->a(Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method
