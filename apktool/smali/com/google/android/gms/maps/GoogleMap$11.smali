.class Lcom/google/android/gms/maps/GoogleMap$11;
.super Lcom/google/android/gms/maps/internal/o$a;


# instance fields
.field final synthetic akB:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

.field final synthetic akp:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$11;->akp:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$11;->akB:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/o$a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/maps/model/internal/l;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->akB:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/l;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/maps/model/internal/l;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->akB:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/l;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method

.method public d(Lcom/google/android/gms/maps/model/internal/l;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$11;->akB:Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/l;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;->onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V

    return-void
.end method
