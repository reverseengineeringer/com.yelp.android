.class Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness$1;
.super Ljava/lang/Object;
.source "ActivityMapSingleBusiness.java"

# interfaces
.implements Lcom/yelp/android/ui/map/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/e$a",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness$1;->a:Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness$1;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method

.method public b(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness$1;->a:Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->finish()V

    .line 98
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness$1;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method
