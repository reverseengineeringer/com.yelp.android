.class public final Lcom/google/android/gms/location/GeofencingRequest$Builder;
.super Ljava/lang/Object;


# instance fields
.field private final ago:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/nn;",
            ">;"
        }
    .end annotation
.end field

.field private agp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->ago:Ljava/util/List;

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->agp:I

    return-void
.end method

.method public static ew(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method


# virtual methods
.method public addGeofence(Lcom/google/android/gms/location/Geofence;)Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .locals 2

    const-string/jumbo v0, "geofence can\'t be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/jx;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/gms/internal/nn;

    const-string/jumbo v1, "Geofence must be created using Geofence.Builder."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jx;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->ago:Ljava/util/List;

    check-cast p1, Lcom/google/android/gms/internal/nn;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGeofences(Ljava/util/List;)Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;)",
            "Lcom/google/android/gms/location/GeofencingRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/Geofence;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->addGeofence(Lcom/google/android/gms/location/Geofence;)Lcom/google/android/gms/location/GeofencingRequest$Builder;

    goto :goto_0
.end method

.method public build()Lcom/google/android/gms/location/GeofencingRequest;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->ago:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "No geofence has been added to this request."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/jx;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/location/GeofencingRequest;

    iget-object v1, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->ago:Ljava/util/List;

    iget v2, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->agp:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/GeofencingRequest;-><init>(Ljava/util/List;ILcom/google/android/gms/location/GeofencingRequest$1;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitialTrigger(I)Lcom/google/android/gms/location/GeofencingRequest$Builder;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/location/GeofencingRequest$Builder;->ew(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/location/GeofencingRequest$Builder;->agp:I

    return-object p0
.end method
