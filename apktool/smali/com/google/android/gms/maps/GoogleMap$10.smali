.class Lcom/google/android/gms/maps/GoogleMap$10;
.super Lcom/google/android/gms/maps/internal/n$a;


# instance fields
.field final synthetic akA:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

.field final synthetic akp:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$10;->akp:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$10;->akA:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/internal/l;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$10;->akA:Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;

    new-instance v1, Lcom/google/android/gms/maps/model/Marker;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/Marker;-><init>(Lcom/google/android/gms/maps/model/internal/l;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;->onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z

    move-result v0

    return v0
.end method
