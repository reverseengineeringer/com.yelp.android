.class Lcom/google/android/gms/maps/MapView$a$1;
.super Lcom/google/android/gms/maps/internal/m$a;


# instance fields
.field final synthetic akU:Lcom/google/android/gms/maps/OnMapReadyCallback;

.field final synthetic alc:Lcom/google/android/gms/maps/MapView$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/MapView$a;Lcom/google/android/gms/maps/OnMapReadyCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/MapView$a$1;->alc:Lcom/google/android/gms/maps/MapView$a;

    iput-object p2, p0, Lcom/google/android/gms/maps/MapView$a$1;->akU:Lcom/google/android/gms/maps/OnMapReadyCallback;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/MapView$a$1;->akU:Lcom/google/android/gms/maps/OnMapReadyCallback;

    new-instance v1, Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;-><init>(Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/OnMapReadyCallback;->onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V

    return-void
.end method
