.class public Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/fv;
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/ads/internal/formats/j;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/j;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/formats/j;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->CREATOR:Lcom/google/android/gms/ads/internal/formats/j;

    return-void
.end method

.method public constructor <init>(IZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->b:Z

    iput p3, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->c:I

    iput-boolean p4, p0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/formats/b;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->a()Z

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/b;->c()Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;-><init>(IZIZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/formats/j;->a(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Landroid/os/Parcel;I)V

    return-void
.end method
