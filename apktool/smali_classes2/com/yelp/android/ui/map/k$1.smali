.class Lcom/yelp/android/ui/map/k$1;
.super Ljava/lang/Object;
.source "SingleBusinessInfoWindowAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/map/k$a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/map/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/map/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/k;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/map/k$1;->a:Lcom/yelp/android/ui/map/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/map/k$1;->a:Lcom/yelp/android/ui/map/k;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/map/k;->a(Lcom/yelp/android/ui/map/k;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/map/k$1;->a:Lcom/yelp/android/ui/map/k;

    invoke-static {v0}, Lcom/yelp/android/ui/map/k;->a(Lcom/yelp/android/ui/map/k;)Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/c;->c()V

    .line 145
    return-void
.end method
