.class Lcom/yelp/android/ui/activities/mutatebiz/ab;
.super Ljava/lang/Object;
.source "MoveBusinessPlacementFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mutatebiz/ab;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/ab;->a:Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;->a(Lcom/yelp/android/ui/activities/mutatebiz/MoveBusinessPlacementFragment;Z)Z

    .line 301
    return-void
.end method
