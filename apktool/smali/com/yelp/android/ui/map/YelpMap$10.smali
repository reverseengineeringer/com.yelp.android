.class Lcom/yelp/android/ui/map/YelpMap$10;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/map/YelpMap;->setMapMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;I)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap$10;->b:Lcom/yelp/android/ui/map/YelpMap;

    iput p2, p0, Lcom/yelp/android/ui/map/YelpMap$10;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/yelp/android/ui/map/YelpMap$10;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(I)V

    .line 707
    return-void
.end method
