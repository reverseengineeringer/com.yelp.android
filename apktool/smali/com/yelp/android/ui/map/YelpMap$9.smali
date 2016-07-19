.class Lcom/yelp/android/ui/map/YelpMap$9;
.super Ljava/lang/Object;
.source "YelpMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/map/YelpMap;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/maps/c$c;

.field final synthetic c:Lcom/yelp/android/ui/map/YelpMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/map/YelpMap;ZLcom/google/android/gms/maps/c$c;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/yelp/android/ui/map/YelpMap$9;->c:Lcom/yelp/android/ui/map/YelpMap;

    iput-boolean p2, p0, Lcom/yelp/android/ui/map/YelpMap$9;->a:Z

    iput-object p3, p0, Lcom/yelp/android/ui/map/YelpMap$9;->b:Lcom/google/android/gms/maps/c$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/c;)V
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/yelp/android/ui/map/YelpMap$9;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/map/YelpMap$9;->b:Lcom/google/android/gms/maps/c$c;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/c$c;)V

    .line 643
    return-void

    .line 642
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
