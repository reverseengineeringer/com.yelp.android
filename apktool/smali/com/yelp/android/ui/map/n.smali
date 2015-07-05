.class Lcom/yelp/android/ui/map/n;
.super Ljava/lang/Object;
.source "SingleBusinessInfoWindowAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/map/p;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/map/l;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/l;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yelp/android/ui/map/n;->a:Lcom/yelp/android/ui/map/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/map/n;->a:Lcom/yelp/android/ui/map/l;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/map/l;->a(Lcom/yelp/android/ui/map/l;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/map/n;->a:Lcom/yelp/android/ui/map/l;

    invoke-static {v0}, Lcom/yelp/android/ui/map/l;->a(Lcom/yelp/android/ui/map/l;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 163
    return-void
.end method
