.class Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns$1;
.super Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;
.source "ActivityComboNearbyCheckIns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns$1;->a:Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/NearbyCheckIns$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns$1;->a:Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a(Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;)Lcom/yelp/android/ui/activities/friendcheckins/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->b(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
