.class public Lcom/google/android/gms/deviceconnection/features/DeviceFeatureBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/DataBuffer",
        "<",
        "Lcom/google/android/gms/deviceconnection/features/DeviceFeature;",
        ">;"
    }
.end annotation


# virtual methods
.method public get(I)Lcom/google/android/gms/deviceconnection/features/DeviceFeature;
    .locals 2

    new-instance v0, Lcom/google/android/gms/deviceconnection/features/a;

    iget-object v1, p0, Lcom/google/android/gms/deviceconnection/features/DeviceFeatureBuffer;->JG:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/deviceconnection/features/a;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/deviceconnection/features/DeviceFeatureBuffer;->get(I)Lcom/google/android/gms/deviceconnection/features/DeviceFeature;

    move-result-object v0

    return-object v0
.end method
