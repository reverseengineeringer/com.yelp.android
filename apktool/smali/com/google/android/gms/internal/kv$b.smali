.class public Lcom/google/android/gms/internal/kv$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ku;


# instance fields
.field final NZ:Lcom/google/android/gms/internal/kr$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kr$a",
            "<**>;"
        }
    .end annotation
.end field

.field final fv:Ljava/lang/String;

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ku;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ku;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/kv$b;->CREATOR:Lcom/google/android/gms/internal/ku;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/kr$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/kr$a",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/kv$b;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/kv$b;->fv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/kv$b;->NZ:Lcom/google/android/gms/internal/kr$a;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/kr$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/kr$a",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/kv$b;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/kv$b;->fv:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/kv$b;->NZ:Lcom/google/android/gms/internal/kr$a;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kv$b;->CREATOR:Lcom/google/android/gms/internal/ku;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/kv$b;->CREATOR:Lcom/google/android/gms/internal/ku;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ku;->a(Lcom/google/android/gms/internal/kv$b;Landroid/os/Parcel;I)V

    return-void
.end method
