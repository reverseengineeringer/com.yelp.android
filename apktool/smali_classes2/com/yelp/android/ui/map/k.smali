.class public Lcom/yelp/android/ui/map/k;
.super Ljava/lang/Object;
.source "SingleBusinessInfoWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/c$d;
.implements Lcom/yelp/android/ui/map/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/map/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/maps/c$d;",
        "Lcom/yelp/android/ui/map/e",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/yelp/android/serializable/YelpBusiness;

.field private c:Lcom/google/android/gms/maps/model/c;

.field private d:Lcom/yelp/android/ui/map/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/map/e$a",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/graphics/Bitmap;

.field private f:Lcom/yelp/android/ui/map/k$a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/yelp/android/ui/map/k$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/map/k$1;-><init>(Lcom/yelp/android/ui/map/k;)V

    iput-object v0, p0, Lcom/yelp/android/ui/map/k;->f:Lcom/yelp/android/ui/map/k$a$a;

    .line 42
    iput-object p1, p0, Lcom/yelp/android/ui/map/k;->a:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/yelp/android/ui/map/k;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/map/k;->e:Landroid/graphics/Bitmap;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/k;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yelp/android/ui/map/k;->e:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/map/k;)Lcom/google/android/gms/maps/model/c;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->c:Lcom/google/android/gms/maps/model/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/google/android/gms/maps/model/c;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->c:Lcom/google/android/gms/maps/model/c;

    if-nez v0, :cond_0

    .line 60
    iput-object p2, p0, Lcom/yelp/android/ui/map/k;->c:Lcom/google/android/gms/maps/model/c;

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->c:Lcom/google/android/gms/maps/model/c;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/c;->a(FF)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->c:Lcom/google/android/gms/maps/model/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/c;->c()V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->c:Lcom/google/android/gms/maps/model/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/c;->a(F)V

    .line 65
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/ui/map/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/map/e$a",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/yelp/android/ui/map/k;->d:Lcom/yelp/android/ui/map/e$a;

    .line 129
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/maps/model/c;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/map/k;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/google/android/gms/maps/model/c;)V

    return-void
.end method

.method public b(Lcom/google/android/gms/maps/model/c;)Landroid/view/View;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 82
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->a:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 84
    const v1, 0x7f030165

    invoke-virtual {v0, v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 89
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 95
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 98
    const v0, 0x7f0f02e0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 99
    const v1, 0x7f0f00d4

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 100
    const v2, 0x7f0f03ca

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    iget-object v4, p0, Lcom/yelp/android/ui/map/k;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/yelp/android/ui/map/k;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v1

    .line 104
    iget-object v4, p0, Lcom/yelp/android/ui/map/k;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080025

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/yelp/android/ui/map/k;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 114
    iget-object v1, p0, Lcom/yelp/android/ui/map/k;->e:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/map/k$a;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/yelp/android/ui/map/k;->f:Lcom/yelp/android/ui/map/k$a$a;

    invoke-direct {v1, v2, v4}, Lcom/yelp/android/ui/map/k$a;-><init>(Landroid/widget/ImageView;Lcom/yelp/android/ui/map/k$a$a;)V

    invoke-static {v0, v1, v8}, Lcom/yelp/android/webimageview/ImageLoader;->start(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V

    .line 123
    :goto_0
    return-object v3

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/map/k;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public c(Lcom/google/android/gms/maps/model/c;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->d:Lcom/yelp/android/ui/map/e$a;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->d:Lcom/yelp/android/ui/map/e$a;

    iget-object v1, p0, Lcom/yelp/android/ui/map/k;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/map/e$a;->a(Ljava/lang/Object;)V

    .line 136
    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/gms/maps/model/c;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/map/k;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public synthetic e(Lcom/google/android/gms/maps/model/c;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/k;->d(Lcom/google/android/gms/maps/model/c;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method
