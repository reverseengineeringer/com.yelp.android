.class public final Lcom/google/android/gms/internal/ko$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/kq;


# instance fields
.field final NJ:Ljava/lang/String;

.field final NK:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/kq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ko$a;->CREATOR:Lcom/google/android/gms/internal/kq;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ko$a;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ko$a;->NJ:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ko$a;->NK:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ko$a;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ko$a;->NJ:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ko$a;->NK:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ko$a;->CREATOR:Lcom/google/android/gms/internal/kq;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ko$a;->CREATOR:Lcom/google/android/gms/internal/kq;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/kq;->a(Lcom/google/android/gms/internal/ko$a;Landroid/os/Parcel;I)V

    return-void
.end method
