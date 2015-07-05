.class Lcom/yelp/android/ui/activities/nearby/a;
.super Lcom/yelp/android/ui/activities/friendcheckins/p;
.source "ActivityComboNearbyCheckIns.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/a;->a:Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/friendcheckins/p;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/a;->a:Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;->a(Lcom/yelp/android/ui/activities/nearby/ActivityComboNearbyCheckIns;)Lcom/yelp/android/ui/activities/friendcheckins/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/friendcheckins/a;->a(Ljava/lang/Object;)V

    .line 62
    return-void
.end method
