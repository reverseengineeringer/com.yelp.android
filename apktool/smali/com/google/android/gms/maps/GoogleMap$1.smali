.class Lcom/google/android/gms/maps/GoogleMap$1;
.super Lcom/google/android/gms/maps/internal/g$a;


# instance fields
.field final synthetic ako:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

.field final synthetic akp:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$1;->akp:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$1;->ako:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/internal/j;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$1;->ako:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

    new-instance v1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/IndoorBuilding;-><init>(Lcom/google/android/gms/maps/model/internal/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;->onIndoorLevelActivated(Lcom/google/android/gms/maps/model/IndoorBuilding;)V

    return-void
.end method

.method public onIndoorBuildingFocused()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$1;->ako:Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;

    invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener;->onIndoorBuildingFocused()V

    return-void
.end method
